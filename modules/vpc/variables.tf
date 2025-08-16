


variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
}

variable "ext_ip" {
  description = "External IP CIDR"
  type        = string
}

variable "pb_cidrs" {
  description = "List of public subnet CIDRs"
  type        = list(string)
  
}

variable "availability_zones" {
  description = "List of availability zones"
  type        = list(string)
}

variable "region" {
  description = "AWS region"
  type        = string
 
}
