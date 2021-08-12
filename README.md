[![Release][release-image]][release] [![CI][ci-image]][ci] [![License][license-image]][license] [![Registry][registry-image]][registry]

# terraform-aws-tags

A Terraform module for converting a map of AWS tags into a compatible set of tags for auto-scaling group.

## Usage

```hcl
module "tags" {
  source = "snowplow-devops/tags/aws"

  tags = {
    hello = "world"
    foo   = "bar"
  }

  propagate_at_launch = true
}

resource "aws_autoscaling_group" "example" {
  ...

  tags = module.tags.asg_tags
}
```

## Testing

Ensure that `terraform` is installed on your path and matches or exceeds the required version.  Then simply run:

```bash
make tidy && make test
```

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.15 |

## Providers

No providers.

## Modules

No modules.

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_propagate_at_launch"></a> [propagate\_at\_launch](#input\_propagate\_at\_launch) | Whether ASG tags should propagate to instances | `bool` | `true` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | A map of tags to convert into a list of ASG compatible tags | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_asg_tags"></a> [asg\_tags](#output\_asg\_tags) | The tag list converted to an ASG compatible format |

# Copyright and license

The Terraform AWS Tags project is Copyright 2021-2021 Snowplow Analytics Ltd.

Licensed under the [Apache License, Version 2.0][license] (the "License");
you may not use this software except in compliance with the License.

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

[release]: https://github.com/snowplow-devops/terraform-aws-tags/releases/latest
[release-image]: https://img.shields.io/github/v/release/snowplow-devops/terraform-aws-tags

[ci]: https://github.com/snowplow-devops/terraform-aws-tags/actions?query=workflow%3Aci
[ci-image]: https://github.com/snowplow-devops/terraform-aws-tags/workflows/ci/badge.svg

[license]: https://www.apache.org/licenses/LICENSE-2.0
[license-image]: https://img.shields.io/badge/license-Apache--2-blue.svg?style=flat

[registry]: https://registry.terraform.io/modules/snowplow-devops/tags/aws/latest
[registry-image]: https://img.shields.io/static/v1?label=Terraform&message=Registry&color=7B42BC&logo=terraform
