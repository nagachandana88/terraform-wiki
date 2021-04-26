provider "aws" {
    #aaccess_key = "AKIAZHXP4MVV3LUDJHU5"
    #secret_key = "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"
    region = "us-east-1"

}

resource "aws_vpc" "Sambavpc" {
    cidr_block = "10.2.0.0/16"
    enable_dns_hostnames = true
    tags = {
      "name" = "My_vpc"
    }
  
}

resource "aws_subnet" "sambaapp" {
    vpc_id = "aws_vpc.Sambavpc.id"
    cidr_block = "10.0.1.0/24"
    tags = {
      "name" = "App_server"
    }
  
}
