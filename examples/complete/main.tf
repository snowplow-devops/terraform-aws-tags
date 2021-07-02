module "tags" {
  source = "../../"

  tags = {
    hello = "world"
    foo   = "bar"
  }

  propagate_at_launch = true
}

output "asg_tags" {
  value = module.tags.asg_tags
}
