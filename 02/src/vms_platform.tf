variable "vm_web_family" {
  type        = string
  default     = "ubuntu-2004-lts"
  description = "VM image family"
}

variable "vm_web_platform" {
  type        = string
  default     = "standard-v1"
  description = "processors platform"

}

variable "vm_db_platform" {
  type        = string
  default     = "standard-v1"
  description = "processors platform"

}

variable "vm_db_zone" {
  type        = string
  default     = "ru-central1-b"
  description = "zone b"

}

variable "zone_2_cidr" {
  type        = list(string)
  default     = ["10.0.2.0/24"]
  description = "https://cloud.yandex.ru/docs/vpc/operations/subnet-create"
}


variable "vpc_name_2" {
  type        = string
  default     = "db"
  description = "VPC network & subnet name"
}

variable "vms_resources" {
  description = "Resources for all vms"
  type        = map(map(number))
  default     = {
    vm_web_resources = {
      cores         = 2
      memory        = 1
      core_fraction = 5
    }
    vm_db_resources = {
      cores         = 2
      memory        = 2
      core_fraction = 20
    }
  }
}
variable "vms_metadata" {
  description = "metadata for all vms"
  type        = map(string)
  default     = {
    serial-port-enable = "1"
    ssh-keys           = "ubuntu:ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIP8afXn3FKC6SCIp9952eMU4Djx2vUzGiTnvIm2K+k22 root@msk1wst405n"
  }
}
