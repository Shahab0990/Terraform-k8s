terraform {
  backend "s3" {
    bucket         = "my-uber-clone-terraform-bucket"           # Use the bucket name you created
    key            = "uber-clone/eks-cluster/terraform.tfstate" # Path inside the S3 bucket
    region         = "us-east-1"                                # Same as your bucket's region
    dynamodb_table = "my-uber-clone-dynamo-table"               # Name of your DynamoDB table
    encrypt        = true
  }
}
