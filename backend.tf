terraform {
  backend "gcs" {
    bucket  = "terraform-state-connell"
    # path  = "terraform.tfstate"
  }
}

terraform {
  required_version = ">= 1.0.0"

  required_providers {
    google-beta = "= 3.50.0"
}
}
provider "google" {
  project     = var.gcp_project
  region      = var.gcp_region
}

provider "google-beta" {
  project     = var.gcp_project
  region      = var.gcp_region
}

