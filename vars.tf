variable "AWS_REGION" {
  default = "us-west-2"
}

variable "PUB_KEY_PATH" {
  default = "~/work/richardx.pub"
}

variable "PRIV_KEY_PATH" {
  default = "~/work/richardx.pem"
}


variable "AMIS" {
  type = map(any)
  default = {
    us-west-2 = "ami-03f65b8614a860c29"  # ubuntu
    us-east-2 = "ami-07efac79022b86107"
    us-east-1 = "ami-06397100adf427136"
  }
}

variable "MYIP" {
  default = "98.45.111.33/32"
}

variable "VPC_NAME" {
  default = "RX-VPC"
}

variable "VpcCIDR" {
  default = "172.21.0.0/16"
}

variable "Zone1" {
  default = "us-west-2a"
}

variable "Zone2" {
  default = "us-west-2b"
}

variable "Zone3" {
  default = "us-west-2c"
}

variable "PubSub1CIDR" {
  default = "172.21.1.0/24"
}

variable "PubSub2CIDR" {
  default = "172.21.2.0/24"
}

variable "PubSub3CIDR" {
  default = "172.21.3.0/24"
}

variable "PrivSub1CIDR" {
  default = "172.21.4.0/24"
}

variable "PrivSub2CIDR" {
  default = "172.21.5.0/24"
}

variable "PrivSub3CIDR" {
  default = "172.21.6.0/24"
}
