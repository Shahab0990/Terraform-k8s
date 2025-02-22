variable "vpc_cidr" {
  description = "VPC CIDR Block"
  default     = "10.0.0.0/16"
}

variable "public_subnets" {
  description = "Public Subnets CIDR"
  default     = ["10.0.1.0/24", "10.0.2.0/24"]
}
