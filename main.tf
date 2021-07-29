provider "aws" {
    region = "us-east-2"
}

module "server" {
    source = "/data/Haritha/mod1"
    ami = "ami-00399ec92321828f5"
}

module "server2" {
    source = "/data/Haritha/mod1"
    i_type = "t2.nano"
    bucket = "ganesh-bucket-27"
}

module "bucket-only" {
  source = "/data/Haritha/mod1/modules/s3-module"
  bucket_name = "ganesh-bucket-22"
}

output "IP" {
 value = module.server2.PUBLIC_IP
}