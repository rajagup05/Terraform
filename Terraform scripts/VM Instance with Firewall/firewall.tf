
resource google_compute_instance "instance" {
    
    name = "test-instance"
    zone = "europe-west2-a"
    machine_type = "n1-standard-1"
    
    tags = ["allow-ssh"]  # FIREWALL
    
    boot_disk {
        initialize_params {
            image = "debian-cloud/debian-11"
        }
    }
    network_interface {
        network = "default"
    }

}
