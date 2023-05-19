module "home" {
  source       = "./home"
  tenancy_ocid =var.tenancy_ocid
	compartment_ocid = var.compartment_ocid
	user_ocid =var.user_ocid
	region =var.multi_regions["home"]
  availablity_domain_name =var.availablity_domain_name
  VCN-CIDR = var.VCN-CIDR
  cluster_options_kubernetes_network_config_pods_cidr = var.cluster_options_kubernetes_network_config_pods_cidr
  cluster_options_kubernetes_network_config_services_cidr = var.cluster_options_kubernetes_network_config_services_cidr
  cluster_kube_config_token_version = var.cluster_kube_config_token_version
  K8SAPIEndPointSubnet-CIDR = var.K8SAPIEndPointSubnet-CIDR
  K8SLBSubnet-CIDR = var.K8SLBSubnet-CIDR
  K8SNodePoolSubnet-CIDR = var.K8SNodePoolSubnet-CIDR
  node_pool_quantity_per_subnet = var.node_pool_quantity_per_subnet
  kubernetes_version = var.kubernetes_version
  node_pool_size = var.node_pool_size
  instance_os = var.instance_os
  linux_os_version = var.linux_os_version
  Shape = var.Shape
  Flex_shape_memory = var.Flex_shape_memory
  Flex_shape_ocpus = var.Flex_shape_ocpus
  ClusterName = var.ClusterName
      

  providers = {
    oci = oci.home
  }
}

module "fra" {
  source       = "./fra"
  tenancy_ocid =var.tenancy_ocid
	compartment_ocid = var.compartment_ocid
	user_ocid =var.user_ocid
	region =var.multi_regions["fra"]
  availablity_domain_name = var.availablity_domain_name
  VCN-CIDR = var.VCN-CIDR
  cluster_options_kubernetes_network_config_pods_cidr = var.cluster_options_kubernetes_network_config_pods_cidr
  cluster_options_kubernetes_network_config_services_cidr = var.cluster_options_kubernetes_network_config_services_cidr
  cluster_kube_config_token_version = var.cluster_kube_config_token_version
  K8SAPIEndPointSubnet-CIDR = var.K8SAPIEndPointSubnet-CIDR
  K8SLBSubnet-CIDR = var.K8SLBSubnet-CIDR
  K8SNodePoolSubnet-CIDR = var.K8SNodePoolSubnet-CIDR
  node_pool_quantity_per_subnet = var.node_pool_quantity_per_subnet
  kubernetes_version = var.kubernetes_version
  node_pool_size = var.node_pool_size
  instance_os = var.instance_os
  linux_os_version = var.linux_os_version
  Shape = var.Shape
  Flex_shape_memory = var.Flex_shape_memory
  Flex_shape_ocpus = var.Flex_shape_ocpus
  ClusterName = var.ClusterName
      
  providers = {
    oci = oci.fra
  }
}
module "lon" {
  source       = "./lon"
  tenancy_ocid =var.tenancy_ocid
	compartment_ocid = var.compartment_ocid
	user_ocid =var.user_ocid
	region =var.multi_regions["lon"]
  availablity_domain_name = var.availablity_domain_name
  VCN-CIDR = var.VCN-CIDR
  cluster_options_kubernetes_network_config_pods_cidr = var.cluster_options_kubernetes_network_config_pods_cidr
  cluster_options_kubernetes_network_config_services_cidr = var.cluster_options_kubernetes_network_config_services_cidr
  cluster_kube_config_token_version = var.cluster_kube_config_token_version
  K8SAPIEndPointSubnet-CIDR = var.K8SAPIEndPointSubnet-CIDR
  K8SLBSubnet-CIDR = var.K8SLBSubnet-CIDR
  K8SNodePoolSubnet-CIDR = var.K8SNodePoolSubnet-CIDR
  node_pool_quantity_per_subnet = var.node_pool_quantity_per_subnet
  kubernetes_version = var.kubernetes_version
  node_pool_size = var.node_pool_size
  instance_os = var.instance_os
  linux_os_version = var.linux_os_version
  Shape = var.Shape
  Flex_shape_memory = var.Flex_shape_memory
  Flex_shape_ocpus = var.Flex_shape_ocpus
  ClusterName = var.ClusterName
      

  providers = {
    oci = oci.lon
  }
}