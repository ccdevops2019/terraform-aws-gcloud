
# Create a Google Compute instance
resource "google_compute_instance" "example" {
  name          = "tf-testinstance"
  machine_type  = "f1-micro"
  zone          = "europe-west3-b"

  metadata = {
        startup-script = <<SCRIPT
        apt-get update
        apt-get install -y apache2
        cat <<EOF > /var/www/html/index.html
        <html><body><h1>Hello World</h1>
        <p>This page was created from a simple start up script!</p>
        </body></html>   
        SCRIPT
    }

  boot_disk {
    initialize_params {
      image = "ubuntu-1804-lts"
    }
  }

  network_interface {
    network = "default"

    access_config {
      // Ephemeral IP
    }
  }

  tags = ["terraform-example"]
}