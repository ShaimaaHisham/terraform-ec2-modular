variable "ami" { default = "ami-0c02fb55956c7d316" } # Amazon Linux 2 in us-east-1
variable "instance_type" { default = "t2.micro" }
variable "subnet_id" {}
variable "sg_id" {}
variable "key_name" {} # Your AWS key pair
