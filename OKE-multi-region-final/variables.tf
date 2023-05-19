variable "tenancy_ocid" {
  default = "ocid1.tenancy.oc1..aaaaaaaafnpaidcq7cvth4xnkoz6xz2xwvgwkvfvknxx5y3y2pwugg5yihea"
}
variable "user_ocid" {
  default = "ocid1.user.oc1..aaaaaaaahtqafl5r45iguiuekynwyq57xxjqd5qkb7idain4ztr5xuye7ykq"
}

variable "compartment_ocid" {
  default = "ocid1.compartment.oc1..aaaaaaaad6z3f3in33eizxuirbydouyjghdtnhzmhbsxcbqsz4raowej6hvq"
}

variable "availablity_domain_name" {
  default = ""
}

variable "cluster_kube_config_token_version"{
  default = "2.0.0"
}
variable "multi_regions" {
  # List of regions: https://docs.cloud.oracle.com/iaas/Content/General/Concepts/regions.htm#ServiceAvailabilityAcrossRegions
  description = "A map of regions."
  type        = map(string)
}
variable "VCN-CIDR" {
  default = "10.0.0.0/16"
}

variable "cluster_options_kubernetes_network_config_pods_cidr" {
  default = "10.1.0.0/16"
}

variable "cluster_options_kubernetes_network_config_services_cidr" {
  default = "10.2.0.0/16"
}



variable "K8SAPIEndPointSubnet-CIDR" {
  default = "10.0.0.0/30"
}

variable "K8SLBSubnet-CIDR" {
  default = "10.0.2.0/24"
}

variable "K8SNodePoolSubnet-CIDR" {
  default = "10.0.1.0/24"
}

variable "node_pool_quantity_per_subnet" {
  default = 1
}

variable "kubernetes_version" {
  default = "v1.23.4"
}

variable "node_pool_size" {
  default = 2
}

variable "instance_os" {
  default = "Oracle Linux"
}

variable "linux_os_version" {
  default = "7.9"
}

variable "Shape" {
  default = "VM.Standard3.Flex"
}

variable "Flex_shape_memory" {
  default = 128
}

variable "Flex_shape_ocpus" {
  default = 16
}

variable "ClusterName" {
  default = "OKECluster"
}

# Dictionary Locals
locals {
  compute_flexible_shapes = [
    "VM.Standard3.Flex"
    
  ]
}

# Checks if is using Flexible Compute Shapes
locals {
  is_flexible_node_shape    = contains(local.compute_flexible_shapes, var.Shape)
  
}




