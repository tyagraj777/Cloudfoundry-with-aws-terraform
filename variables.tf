variable "region" {
  description = "AWS region"
  default     = "us-east-1"
}

variable "cluster_name" {
  description = "EKS cluster name"
  default     = "hello-world-cluster"
}

variable "vpc_id" {
  description = "VPC ID"
  default     = "vpc-12345678" # Replace with your VPC ID
}

variable "subnets" {
  description = "List of subnet IDs"
  default     = ["subnet-abc123", "subnet-def456"] # Replace with your subnet IDs
}
