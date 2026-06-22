vpc_name = "dev-vpc"
vpc_cidr = "10.0.0.0/16"
aws_azs = ["eu-west-1a", "eu-west-1b", "eu-west-1c"]
private_subnets = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
public_subnets = ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"]
environment = "dev"


instance_name     = "dev-app-server"
instance_type     = "t3.micro"
key_name          = "user1"
enable_monitoring = true
subnet_id         = "subnet-eddcdzz4"