terraform {
  required_version = ">= 0.13"
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = ">= 3.61"
    }

    google-beta = {
      source  = "hashicorp/google-beta"
      version = ">= 3.61"
    }
    null= {
        source = "hashicorp/null"
        version = "~> 2.1"
    }

  }
}


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
