terraform {
  /* required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.33.0"
    }
  } */

  /* backend "gcs" {
    bucket = "devops-cicd-practice-tfstate"
    prefix = "env/dev"
  } */

}

provider "google" {
  # Configuration options
  project     = "devops-cicd-practice"
  zone        = "us-central1"
  region      = "us-central1-a"
  credentials = "tf-keys.json"
}
