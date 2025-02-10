provider "docker" {}

resource "docker_network" "zero_trust" {
  name = "zero_trust_network"
}

resource "docker_container" "cpp_app" {
  image = "your_cpp_image:latest"
  name  = "cpp-app-container"
  networks_advanced {
    name = docker_network.zero_trust.name
  }
}

# Configuração do Sentinel
sentinel_policy {
  name = "sentinel-policy"
  file = "./sentinel/policy.hcl"
}
