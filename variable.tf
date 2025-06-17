variable "instance_type" {
  type        = string
  default     = "t3.micro"
  description = "Instance size"
}

variable "sg_ids" {
  type        = list(string)
  description = "List of security group IDs"
}

variable "tags" {
  type        = map(string)
  description = "Tags to assign to the instance"
}