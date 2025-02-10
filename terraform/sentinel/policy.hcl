import "tfplan" as tfplan

# Politica que garante nossa rede "zero"

zero_trust_network_created  = rule {
   
 network = tfplan.resources["docker_network.zero_trust"]
 network.action = "create"
}

# Politica que garante containers dockers

container_on_zero_trust_network = rule {
    container = tfplan.resources["docker_container"]
    container.action == "create" &&
    container.networks_advanced[0].name == "zero_trust_network"
}

# Politica de que apenas esses recursos sejam criados

main = rule {
    zero_trust_network and container_on_zero_trust_network
}