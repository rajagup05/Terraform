resource google_compute_firewall "ssh-firewall" {
    name = "ssh-firewall"
    network = "default"

    allow {
        protocol = "tcp"
        ports = ["22"]
    }

    source_ranges = ["0.0.0.0/0"]

    target_tags = ["allow-ssh"]

}
