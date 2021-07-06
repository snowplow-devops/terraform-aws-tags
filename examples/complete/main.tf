variable "tags" {
  description = "A map of tags to convert into a list of ASG compatible tags"
  default = {
    hello = "world"
    foo   = "bar"
  }
  type = map(string)
}

variable "propagate_at_launch" {
  description = "Whether ASG tags should propagate to instances"
  default     = true
  type        = bool
}

module "tags" {
  source = "../../"

  tags                = var.tags
  propagate_at_launch = var.propagate_at_launch
}

output "asg_tags" {
  value = module.tags.asg_tags
}
