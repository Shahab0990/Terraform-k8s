variable "region" {
  description = "AWS Region"
  type        = string
  default     = "us-east-1"
}

variable "cluster_name" {
  description = "EKS Cluster Name"
  type        = string
}

variable "cluster_role_arn" {
  description = "IAM Role for EKS Cluster"
  type        = string
}

variable "node_role_arn" {
  description = "IAM Role for EKS Nodes"
  type        = string
}

variable "subnet_ids" {
  description = "Subnets for EKS Nodes"
  type        = list(string)
}
