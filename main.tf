terraform {
  required_version = ">= 1.0.0"

  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "~> 2.0"
    }
  }
}

provider "digitalocean" {}

resource "digitalocean_droplet" "worker" {
  count     = 1 
  image     = "ubuntu-20-04-x64"
  name      = "worker"
  region    = "fra1"
  size      = "s-1vcpu-1gb"
  user_data = file("setup_ubuntu.yaml")
}

resource "digitalocean_droplet" "control" {
  count     = 1 
  image     = "ubuntu-20-04-x64"
  name      = "control"
  region    = "fra1"
  size      = "s-1vcpu-1gb"
  user_data = file("setup_ubuntu.yaml")
}
