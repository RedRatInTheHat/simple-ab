# Простая конфигуркция для load balancer'а будь он проклят

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >=0.13 |
| <a name="requirement_yandex"></a> [yandex](#requirement\_yandex) | >=0.119.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_yandex"></a> [yandex](#provider\_yandex) | >=0.119.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [yandex_alb_backend_group.alb-bg](https://registry.terraform.io/providers/yandex-cloud/yandex/latest/docs/resources/alb_backend_group) | resource |
| [yandex_alb_http_router.alb-router](https://registry.terraform.io/providers/yandex-cloud/yandex/latest/docs/resources/alb_http_router) | resource |
| [yandex_alb_load_balancer.alb-1](https://registry.terraform.io/providers/yandex-cloud/yandex/latest/docs/resources/alb_load_balancer) | resource |
| [yandex_alb_virtual_host.alb-host](https://registry.terraform.io/providers/yandex-cloud/yandex/latest/docs/resources/alb_virtual_host) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_alb_backend_group_name"></a> [alb\_backend\_group\_name](#input\_alb\_backend\_group\_name) | The name of the ALB Backend Group. | `string` | n/a | yes |
| <a name="input_alb_load_balancer_name"></a> [alb\_load\_balancer\_name](#input\_alb\_load\_balancer\_name) | The name of the ALB Load Balancer. | `string` | n/a | yes |
| <a name="input_alb_router_name"></a> [alb\_router\_name](#input\_alb\_router\_name) | The name of the ALB HTTP Router. | `string` | n/a | yes |
| <a name="input_alb_virtual_host_name"></a> [alb\_virtual\_host\_name](#input\_alb\_virtual\_host\_name) | The name of the ALB Virtual Host. | `string` | n/a | yes |
| <a name="input_healthcheck_host"></a> [healthcheck\_host](#input\_healthcheck\_host) | 'Host' HTTP header value. | `string` | n/a | yes |
| <a name="input_healthcheck_interval"></a> [healthcheck\_interval](#input\_healthcheck\_interval) | Interval in seconds between health checks. | `string` | `"2s"` | no |
| <a name="input_healthcheck_path"></a> [healthcheck\_path](#input\_healthcheck\_path) | Path for the HTTP health check. | `string` | `"/"` | no |
| <a name="input_healthcheck_port"></a> [healthcheck\_port](#input\_healthcheck\_port) | Port for the health check. | `number` | `80` | no |
| <a name="input_healthcheck_timeout"></a> [healthcheck\_timeout](#input\_healthcheck\_timeout) | Timeout in seconds for the health check. | `string` | `"10s"` | no |
| <a name="input_http_backend_name"></a> [http\_backend\_name](#input\_http\_backend\_name) | The name of the HTTP Backend. | `string` | n/a | yes |
| <a name="input_http_backend_port"></a> [http\_backend\_port](#input\_http\_backend\_port) | The port for the HTTP Backend. | `number` | `80` | no |
| <a name="input_listener_name"></a> [listener\_name](#input\_listener\_name) | The name of the listener for the Load Balancer. | `string` | n/a | yes |
| <a name="input_listener_ports"></a> [listener\_ports](#input\_listener\_ports) | List of ports for the Load Balancer listener. | `list(number)` | <pre>[<br>  80<br>]</pre> | no |
| <a name="input_network_id"></a> [network\_id](#input\_network\_id) | The network ID where the Load Balancer will be created. | `string` | n/a | yes |
| <a name="input_route_name"></a> [route\_name](#input\_route\_name) | The name of the route in the Virtual Host. | `string` | n/a | yes |
| <a name="input_subnet_info"></a> [subnet\_info](#input\_subnet\_info) | List of subnet information including zone and subnet ID. | <pre>list(object({<br>    zone = string<br>    id   = string<br>  }))</pre> | n/a | yes |
| <a name="input_target_group_ids"></a> [target\_group\_ids](#input\_target\_group\_ids) | Target groups for the HTTP Backend. | `list(string)` | n/a | yes |

## Outputs

No outputs.

