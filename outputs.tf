
output "ip_address" {
value = [ 	digitalocean_droplet.worker[*].ipv4_address,
		digitalocean_droplet.control[*].ipv4_address]
description = "The public IP address of your droplet application."
}
