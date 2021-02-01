# Change this README accordingly

[//]: # (Do NOT make manual changes below this line! Automatic generation of content!)
<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| terraform | >= 0.12.26 |
| azurerm | >= 2.0 |

## Providers

| Name | Version |
|------|---------|
| azurerm | >= 2.0 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| address\_prefixes | The address prefix list to use for the subnet. Example: ["10.10.10.0/28", "10.10.10.16/28"] | `list(string)` | n/a | yes |
| enforce\_private\_link | Enable or Disable network policies for the private link endpoint on the subnet | `bool` | `false` | no |
| name | The name (should follow a consistent naming covention) which will be used for the name generation of this Subnet. | `string` | n/a | yes |
| network\_security\_group\_name | The Network Security Group name to associate with the subnets | `string` | `null` | no |
| network\_security\_group\_rg | The Network Security Group RG to associate with the subnet. Default is the same RG than the subnet. | `string` | `null` | no |
| resource\_group\_name | Resource group name | `string` | n/a | yes |
| route\_table\_name | The Route Table name to associate with the subnet | `string` | `null` | no |
| route\_table\_rg | The Route Table RG to associate with the subnet. Default is the same RG than the subnet. | `string` | `null` | no |
| service\_endpoints | The list of Service endpoints to associate with the subnet | `list(string)` | `[]` | no |
| subnet\_delegation | Configuration delegations on subnet<br>object({<br>  name = object({<br>    name = string,<br>    actions = list(string)<br>  })<br>}) | `map(list(any))` | `{}` | no |
| virtual\_network\_name | Virtual network name | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| cidr\_list | CIDR list of the created subnets |
| cidrs\_map | Map with names and CIDRs of the created subnets |
| id | Id of the created subnet |
| ips | The collection of IPs within this subnet |
| name | Names of the created subnet |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
