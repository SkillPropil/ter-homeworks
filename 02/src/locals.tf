
locals {
  env_web           = "web"
  env_db            = "db"
  vm_web_instance_name = "netology-${ var.vpc_name }-platform-${local.env_web}"
  vm_db_instance_name  = "netology-${ var.vpc_name }-platform-${local.env_db}"
}
