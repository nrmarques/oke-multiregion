
resource "oci_containerengine_cluster" "OKECluster" {
  #depends_on = [oci_identity_policy.OKEPolicy1]
  compartment_id     = var.compartment_ocid
  kubernetes_version = var.kubernetes_version
  name               = var.ClusterName
  vcn_id             = oci_core_vcn.VCN.id

  endpoint_config {
    is_public_ip_enabled = false
    subnet_id            = oci_core_subnet.K8SAPIEndPointSubnet.id
  }

  options {
    service_lb_subnet_ids = [oci_core_subnet.K8SLBSubnet.id]

    add_ons {
      is_kubernetes_dashboard_enabled = true
      is_tiller_enabled               = true
    }

    kubernetes_network_config {
      pods_cidr     = var.cluster_options_kubernetes_network_config_pods_cidr
      services_cidr = var.cluster_options_kubernetes_network_config_services_cidr
    }
  }
}


resource "oci_containerengine_node_pool" "OKENodePool" {
  #depends_on = [oci_identity_policy.OKEPolicy1]
  cluster_id         = oci_containerengine_cluster.OKECluster.id
  compartment_id     = var.compartment_ocid
  kubernetes_version = var.kubernetes_version
  name               = "OKENodePool"
  node_shape         = var.Shape

  node_source_details {
    image_id    = data.oci_core_images.InstanceImageOCID.images[0].id
    source_type = "IMAGE"
  }

  dynamic "node_shape_config" {
    for_each = local.is_flexible_node_shape ? [1] : []
    content {
      memory_in_gbs = var.Flex_shape_memory
      ocpus         = var.Flex_shape_ocpus
    }
  }

  node_config_details {
    size = var.node_pool_size

    placement_configs {
      availability_domain = var.availablity_domain_name == "" ? data.oci_identity_availability_domains.ADs.availability_domains[0]["name"] : var.availablity_domain_name
      subnet_id           = oci_core_subnet.K8SNodePoolSubnet.id
    }
  }

  initial_node_labels {
    key   = "key"
    value = "value"
  }

  
}

