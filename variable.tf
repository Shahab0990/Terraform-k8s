variable "ecr_repository_name" {
  description = "Name of the ECR repository"
  type        = string
  default     = "uber-clone-repo" # Change this if you want a different repo name
}

variable "region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1" # Change this if needed
}
