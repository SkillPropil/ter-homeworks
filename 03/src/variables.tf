###cloud vars
#variable "token" {
#  type        = string
#  description = "OAuth-token; https://cloud.yandex.ru/docs/iam/concepts/authorization/oauth-token"
#}

variable "cloud_id" {
  type        = string
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/cloud/get-id"
}

variable "folder_id" {
  type        = string
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/folder/get-id"
}

variable "default_zone" {
  type        = string
  default     = "ru-central1-a"
  description = "https://cloud.yandex.ru/docs/overview/concepts/geo-scope"
}
variable "default_cidr" {
  type        = list(string)
  default     = ["10.0.1.0/24"]
  description = "https://cloud.yandex.ru/docs/vpc/operations/subnet-create"
}

variable "vpc_name" {
  type        = string
  default     = "develop"
  description = "VPC network&subnet name"
}

variable "count_drives" {
  type    = number
  default = 2
}

variable "vm_count" {
  type        = number
  description = "Number of VMs to create"
}

variable "db_vm" {
  type = list(object({
    vm_name = string
    cores   = number
    memory  = number
    core_fraction = number
    public_ip   = bool
    platform    = string
    preemptible = bool
  }))
  default = [
    {
      vm_name       = "main"
      cores         = 2
      memory        = 1
      core_fraction = 20
      public_ip     = true
      platform      = "standard-v1"
      preemptible   = true

    },
    {
      vm_name       = "replica"
      cores         = 4
      memory        = 2
      core_fraction = 5
      public_ip     = true
      platform      = "standard-v1"
      preemptible   = true

    }
  ]

}

variable "vm_resource" {
  type = list(object({
    public_ip   = bool
    platform    = string
    preemptible = bool
  }))
  default = [
    {
      public_ip   = true
      platform    = "standard-v1"
      preemptible = true

    }
  ]
}
