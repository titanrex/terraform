provider "google" {
  project     = "perfect-operand-369501"
  region      = "us-central1"
  zone        = "us-central1-a"
  credentials = jsondecode(var.gcp_credentials)
}

provider "google-beta" {
  project     = "perfect-operand-369501"
  region      = "us-central1"
  zone        = "us-central1-a"
  credentials = jsondecode(var.gcp_credentials)
}
