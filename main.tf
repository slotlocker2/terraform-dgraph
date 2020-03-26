terraform {
  required_version = ">= 0.12.0"
}

module "zero" {
  source = "git::https://github.com/slotlocker2/terraform-dgraph-zero.git"
  
  prefix = var.zero_prefix
  namespace = var.zero_namespace

  replicas = var.zero_replicas
  pod_anti_affinity = var.zero_pod_anti_affinity

  persistence = var.zero_persistence
  storage_size = var.zero_storage_size
}

module "alpha" {
  source = "git::https://github.com/slotlocker2/terraform-dgraph-alpha.git"

  prefix = var.alpha_prefix
  namespace = var.alpha_namespace
  
  initialize_data = var.alpha_initialize_data

  # The Kubernetes Service Terraform resource does not expose any attributes 
  zero_address = "${var.zero_prefix}-dgraph-zero-0.${var.zero_prefix}-dgraph-zero.${var.zero_namespace}.svc.cluster.local"

  replicas = var.alpha_replicas
  pod_anti_affinity = var.alpha_pod_anti_affinity

  persistence = var.alpha_persistence
  storage_size = var.alpha_storage_size

  lru = var.alpha_lru
}

module "ratel" {
  source = "git::https://github.com/slotlocker2/terraform-dgraph-ratel.git"

  prefix = var.ratel_prefix
  namespace = var.ratel_namespace
}
