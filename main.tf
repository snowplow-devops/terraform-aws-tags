locals {
  asg_tags = flatten([
    for key in keys(var.tags) : merge(
      {
        key                 = key
        value               = var.tags[key]
        propagate_at_launch = var.propagate_at_launch
      }
    )
  ])
}
