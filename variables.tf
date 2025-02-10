# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-west-2"
}

# variable "cluster_name" {
#   description = "What you would like to name the cluster"
#   type        = string
#   default     = ${random_pet.cluster.id}
# }

variable "cluster_version" {
  description = "The version you would like on your EKS cluster"
  type        = string
  default     = "1.30"
}

variable "instance_types" {
  description = "Instance types for the EKS node_group nodes. Defaults to t3a.xlarge"
  type        = list(any)
  default     = ["t3a.xlarge"]
}

variable "node_group_ami_type" {
  description = "Type of AMI to deploy to EKS. valid values are listed here: https://docs.aws.amazon.com/eks/latest/APIReference/API_Nodegroup.html#AmazonEKS-Type-Nodegroup-amiType"
  type        = string
  default     = "AL2023_x86_64_STANDARD"
}

variable "node_security_group_id" {
  description = "The security group to apply to your EKS nodes"
  type        = string
}