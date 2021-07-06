## ASG Tag generation (Hello World!)

This module's main job is converting a tag map into a list of ASG compatible tags.  By default propagation to instances is on - if you want to use a mix of both of these you will need to use the module twice and then merge the two resultant lists together.

```hcl
module "tags" {
  source = "snowplow-devops/tags/aws"

  tags = {
    hello = "world"
    foo   = "bar"
  }

  propagate_at_launch = true
}
```
