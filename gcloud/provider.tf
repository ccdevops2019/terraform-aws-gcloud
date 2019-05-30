# Configure the Google Cloud provider
provider "google" {
  project = "abstract-disk-239714"
  credentials = "${file("test.json")}"
  region  = "europe-west3"
}