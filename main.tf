module "ec2-cluster" {
  source = "github.com/sebasslash/terraform-fakewebservices-ec2-cluster"

  token = var.token
  hostname = var.hostname
  instance_type = "t2.micro"
  cluster_name = "EC2 Cluster 1"
  cidr_block = "198.51.100.0/24"
  db_size = "256"
}

variable "token" {
  type = string
  description = "The token to configure the fakewebservices provider. Must be a User or Team TFC/E token."
  sensitive = true
}

variable "hostname" {
  type = string
  default = "app.terraform.io"
  description = "The hostname to use"
}
