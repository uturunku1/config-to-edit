module "ec2-cluster" {
  source = "app.staging.terraform.io/${var.organization_name}/ec2-cluster/fakewebservices"
  version = "0.1.0"

  token = var.token
  instance_type = "t2.micro"
  cluster_name = "EC2 Cluster 1"
  cidr_block = "0.0.0.0/1"
  db_size = "256"
}

variable "token" {
  type = string
  description = "The token to configure the fakewebservices provider. Must be a User or Team TFC/E token."
  sensitive = true
}

variable "organization_name" {
  type = string
  description = "The name of the TFC organization"
}
