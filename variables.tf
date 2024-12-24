variable "alb_backend_group_name" {
  type        = string
  description = "The name of the ALB Backend Group."
}

variable "http_backend_name" {
  type        = string
  description = "The name of the HTTP Backend."
}

variable "http_backend_port" {
  type        = number
  default     = 80
  description = "The port for the HTTP Backend."
}

variable "target_group_ids" {
  type        = list(string)
  description = "Target groups for the HTTP Backend."
}

variable "healthcheck_timeout" {
  type        = string
  default     = "10s"
  description = "Timeout in seconds for the health check."
}

variable "healthcheck_interval" {
  type        = string
  default     = "2s"
  description = "Interval in seconds between health checks."
}

variable "healthcheck_port" {
  type        = number
  default     = 80
  description = "Port for the health check."
}

variable "healthcheck_path" {
  type        = string
  default     = "/"
  description = "Path for the HTTP health check."
}

variable "alb_router_name" {
  type        = string
  description = "The name of the ALB HTTP Router."
}

variable "alb_virtual_host_name" {
  type        = string
  description = "The name of the ALB Virtual Host."
}

variable "route_name" {
  type        = string
  description = "The name of the route in the Virtual Host."
}

variable "alb_load_balancer_name" {
  type        = string
  description = "The name of the ALB Load Balancer."
}

variable "listener_name" {
  type        = string
  description = "The name of the listener for the Load Balancer."
}

variable "listener_ports" {
  type        = list(number)
  default     = [80]
  description = "List of ports for the Load Balancer listener."
}

variable "network_id" {
  type        = string
  description = "The network ID where the Load Balancer will be created."
}

variable "subnet_info" {
  type = list(object({
    zone = string
    id   = string
  }))
  description = "List of subnet information including zone and subnet ID."
}