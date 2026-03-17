terraform {
  required_providers {
    docker = {
      source = "kreuzwerker/docker"
    }
  }
}

provider "docker" {}

# Step 1: Define variable (Requirement 1)
variable "container_config" {
  default = [
    {
      name = "web1"
      port = 8081
    },
    {
      name = "web2"
      port = 8082
    },
    {
      name = "web3"
      port = 8083
    }
  ]
}

# Step 2: Use loop (for_each) → dynamic creation
module "containers" {
  source = "./modules/nginx_container"

  for_each = {
    for c in var.container_config : c.name => c
  }

  container_name = each.value.name
  container_port = each.value.port
  image_name     = "nginx:latest"
}

# Step 3: Output URLs (Requirement)
output "container_urls" {
  value = [
    for c in var.container_config :
    "http://localhost:${c.port}"
  ]
}
