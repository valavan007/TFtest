// Create a new instance
provider "google" { 
  project = "tf-admin-project-225303" }

resource "google_compute_instance" "test" {
  name         = "valavantesting" // yields "test1", "test2", etc. It's also the machine's name and hostname
  machine_type = "f1-micro" // smallest (CPU &amp; RAM) available instance
  zone         = "us-central1-b" // yields "europe-west1-d" as setup previously. Places your VM in Europe
 
boot_disk {
initialize_params {
      image = "debian-cloud/debian-9"
    }
  }
  network_interface {
    network = "default" 
    access_config {
          network_tier = "STANDARD"
         }
    } 
  }
