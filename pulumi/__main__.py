import pulumi
import pulumi_docker as docker

network = docker.Network("zero_trust_network")

cpp_conatainer = docker.Container (
    "cpp-app-container",
    image = "your_cpp_image:latest",
    networks_advanced = [docker.NetworkingAdvancedArgs(name = network.name)]
)

pulumi.export("conatainer-id", cpp_container.id)
