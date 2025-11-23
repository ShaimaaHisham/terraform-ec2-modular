provider "aws" {
  region = "us-east-1"
}

module "vpc" {
  source              = "./modules/vpc"
}

module "security" {
  source     = "./modules/security"
  vpc_id     = module.vpc.vpc_id
  my_ip_cidr = "YOUR_PUBLIC_IP/32"
}

module "ec2" {
  source      = "./modules/ec2"
  ami         = "ami-0c02fb55956c7d316"
  instance_type = "t2.micro"
  subnet_id   = module.vpc.public_subnet_id
  sg_id       = module.security.sg_id
  key_name    = "YOUR_KEY_PAIR_NAME"
}
