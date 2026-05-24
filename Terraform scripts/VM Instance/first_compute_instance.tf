
## first_compute_instance tf file 


resource "google_compute_instance" "default" {

    count = "${length(var.name_count)}"
    name = "list-${count.index+1}"
    machine_type = "${var.machine_type["dev"]}"
    zone = var.zone[count.index] 

    boot_disk {
        initialize_params {
            image = "${var.disk_image}"
        }
    }

    network_interface {
        network = "default"
    }

}


output "name" { value = "${google_compute_instance.default.*.name}"}

output "machine_type" { value = "${google_compute_instance.default.*.machine_type}" }

output "zone" { value = "${google_compute_instance.default.*.zone}" }

output "instance_id" { 
    value = join(",", google_compute_instance.default.*.id)
    }

# output "image" { value = "${google_compute_instance.default.boot_disk[0].initialize_params[0].image}" }

# depends_on = [google_compute_instance.default] => it is used to run functions or create resources in a sequence.




/*
IF conditionals: 

variable "environment" {default = "production" }
variable "machine_type_dev" {default = "n1-standard1" }


machine_type = "${var.environment == "production" ? var.machine_type : var.machine_type_dev}"

Here if environment variable is prod then var.machine will be used

conditionals ? TRUE : FALSE

*/




/*

locals {
   name = "list-${var.name1}-${var.name2}-${var.name3}"
}

name = "${local.name}"

locals is defined in same file and used when we have multiple variable substitution for one field
*/
