provider "oci" {
  alias            = "home"
  region           = var.multi_regions["home"]
  tenancy_ocid     = var.tenancy_ocid
  user_ocid        = var.user_ocid
  
}

provider "oci" {
  alias            = "fra"
  region           = var.multi_regions["fra"]
  tenancy_ocid     = var.tenancy_ocid
  user_ocid        = var.user_ocid
}

provider "oci" {
  alias            = "lon"
  region           = var.multi_regions["lon"]
  tenancy_ocid     = var.tenancy_ocid
  user_ocid        = var.user_ocid
}