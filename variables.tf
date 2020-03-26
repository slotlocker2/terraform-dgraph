## Zero variables
#################
variable "zero_prefix" {
  type = string
}

variable "zero_namespace" {
  type = string
}

variable "zero_replicas" {
  type = number
}

variable "zero_persistence" {
  type = bool
}

variable "zero_storage_size" {
  type = number
}

variable "zero_pod_anti_affinity" {
  type = bool
}

# Alpha Variables
#################
variable "alpha_prefix" {
  type = string
}

variable "alpha_namespace" {
  type = string
}

variable "alpha_initialize_data" {
  type = bool
}

variable "alpha_replicas" {
  type = number
}

variable "alpha_persistence" {
  type = bool
}

variable "alpha_storage_size" {
  type = number
}

variable "alpha_lru" {
  type = number
}

variable "alpha_pod_anti_affinity" {
  type = bool
}


# Ratel Variables
#################
variable "ratel_namespace" {
  type = string
}

variable "ratel_prefix" {
  type = string
}
