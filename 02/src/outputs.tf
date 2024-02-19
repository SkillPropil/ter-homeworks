
output "uchaev_output" {

  value = [
    { db = [yandex_compute_instance.platform-db.name, "ubuntu@${yandex_compute_instance.platform-db.network_interface[0].nat_ip_address}", yandex_compute_instance.platform-db.fqdn] },
    { web = [yandex_compute_instance.platform.name, "ubuntu@${yandex_compute_instance.platform.network_interface[0].nat_ip_address}", yandex_compute_instance.platform.fqdn] }

  ]
}
