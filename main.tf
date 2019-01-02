resource "google_compute_instance" "ldvs_vm" {
    name         = "instance-1"
    machine_type = "n1-standard-1"    # For testing
  zone         = "us-west1-c"
  tags         = ["ldvs", "linux", "connect"]
  project      = "tf-admin-project-225303"
  min_cpu_platform = "Intel Skylake"

 boot_disk {
    initialize_params {
      image = "${data.google_compute_image.current_image.self_link}"
    }
  }

  network_interface {
    network = "default"

    access_config {
      // Ephemeral IP
    }
  }
}
