variable "region" {
  description = "The AWS region to deploy instances"
  type        = string
  default     = "us-west-2"
}

variable "ami_id" {
  description = "The AMI ID to use for the EC2 instances"
  type        = string
}

variable "instance_type" {
  description = "The instance type to use for the EC2 instances"
  type        = string
  default     = "t2.micro"
}

variable "instance_count" {
  description = "Number of EC2 instances to create"
  type        = number
  default     = 1
}

variable "key_name" {
  description = "The key name to use for the EC2 instances"
  type        = string
}

variable "instance_name" {
  description = "The name to use for the EC2 instances"
  type        = string
}

variable "allowed_ssh_cidr_blocks" {
  description = "List of CIDR blocks allowed to SSH into the instances"
  type        = list(string)
}

variable "allowed_es_cidr_blocks" {
  description = "List of CIDR blocks allowed to access Elasticsearch"
  type        = list(string)
}

variable "allowed_esnode_cidr_blocks" {
  description = "List of CIDR blocks allowed to access Elasticsearch"
  type        = list(string)
}

variable "sg_name_prefix" {
  description = "Prefix for the security group name"
  type        = string
}

variable "subnet_id" {
  description = "The subnet ID to deploy the EC2 instances"
  type        = string
}

variable "vpc_id" {
  description = "The VPC ID where the security group will be created"
  type        = string
}

variable "volume_size" {
  description = "The size of the root EBS volume in GB"
  type        = number
  default     = 8
}
