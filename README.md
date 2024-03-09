# module-terraform-spacelift-stack
A terraform module for Spacelift stacks

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.4.0 |
| <a name="requirement_spacelift"></a> [spacelift](#requirement\_spacelift) | 1.8.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_spacelift"></a> [spacelift](#provider\_spacelift) | 1.8.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [spacelift_aws_integration_attachment.this](https://registry.terraform.io/providers/spacelift-io/spacelift/1.8.0/docs/resources/aws_integration_attachment) | resource |
| [spacelift_environment_variable.this](https://registry.terraform.io/providers/spacelift-io/spacelift/1.8.0/docs/resources/environment_variable) | resource |
| [spacelift_stack.this](https://registry.terraform.io/providers/spacelift-io/spacelift/1.8.0/docs/resources/stack) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_administrative"></a> [administrative](#input\_administrative) | Whether the stack is administrative | `bool` | `false` | no |
| <a name="input_autodeploy"></a> [autodeploy](#input\_autodeploy) | Whether the stack should autodeploy | `bool` | `false` | no |
| <a name="input_autoretry"></a> [autoretry](#input\_autoretry) | Whether the stack should autoretry | `bool` | `false` | no |
| <a name="input_aws_integration_id"></a> [aws\_integration\_id](#input\_aws\_integration\_id) | The id of the aws integration | `string` | `null` | no |
| <a name="input_before_init"></a> [before\_init](#input\_before\_init) | The command to run before init | `list(string)` | `[]` | no |
| <a name="input_branch"></a> [branch](#input\_branch) | The branch to deploy | `string` | `"main"` | no |
| <a name="input_description"></a> [description](#input\_description) | The description of the spacelift stack | `string` | n/a | yes |
| <a name="input_environment_variables"></a> [environment\_variables](#input\_environment\_variables) | The environment variables to set | `map(string)` | `{}` | no |
| <a name="input_labels"></a> [labels](#input\_labels) | The labels to apply to the stack | `list(string)` | `[]` | no |
| <a name="input_manage_state"></a> [manage\_state](#input\_manage\_state) | Whether to manage state | `bool` | `true` | no |
| <a name="input_runner_image"></a> [runner\_image](#input\_runner\_image) | The runner image to use | `string` | `"ghcr.io/mervinhemaraju/spacelift-runner-image:prod"` | no |
| <a name="input_stack_name"></a> [stack\_name](#input\_stack\_name) | The name of the spacelift stack | `string` | `null` | no |
| <a name="input_stack_repository"></a> [stack\_repository](#input\_stack\_repository) | The repository to deploy | `string` | n/a | yes |
| <a name="input_terraform_external_state_access"></a> [terraform\_external\_state\_access](#input\_terraform\_external\_state\_access) | Whether to allow external state access | `bool` | `true` | no |
| <a name="input_terraform_smart_sanitization"></a> [terraform\_smart\_sanitization](#input\_terraform\_smart\_sanitization) | Whether to use smart sanitization | `bool` | `true` | no |
| <a name="input_terraform_version"></a> [terraform\_version](#input\_terraform\_version) | The version of terraform to use | `string` | `"1.4.0"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_stack_id"></a> [stack\_id](#output\_stack\_id) | n/a |
<!-- END_TF_DOCS -->