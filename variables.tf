variable "tags" {
  description = "A map of tags to convert into a list of ASG compatible tags"
  default     = {}
  type        = map(string)
}

variable "propagate_at_launch" {
  description = "Whether ASG tags should propagate to instances"
  default     = true
  type        = bool
}
