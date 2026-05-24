
variable "machine_type" {
    type = map
    default = {
        dev = "n2-standard-2"
        prod = "prod_will_not_work"
    }
}

variable "disk_image" {
    default = "debian-cloud/debian-11"
}

variable "name_count" { default = [ "server1", "server2", "server3"] }

variable "zone" { default = ["asia-south1-a", "asia-south1-b", "asia-south1-c"] }
