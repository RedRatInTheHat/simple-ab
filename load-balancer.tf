resource "yandex_alb_backend_group" "alb-bg" {
  name = var.alb_backend_group_name

  http_backend {
    name             = var.http_backend_name
    port             = var.http_backend_port
    target_group_ids = var.target_group_ids
    healthcheck {
      timeout          = var.healthcheck_timeout
      interval         = var.healthcheck_interval
      healthcheck_port = var.healthcheck_port
      http_healthcheck {
        path = var.healthcheck_path
        host = var.healthcheck_host
      }
    }
  }
}

resource "yandex_alb_http_router" "alb-router" {
  name = var.alb_router_name
}

resource "yandex_alb_virtual_host" "alb-host" {
  name           = var.alb_virtual_host_name
  http_router_id = yandex_alb_http_router.alb-router.id

  route {
    name = var.route_name
    http_route {
      http_route_action {
        backend_group_id = yandex_alb_backend_group.alb-bg.id
      }
    }
  }
}

resource "yandex_alb_load_balancer" "alb-1" {
  name       = var.alb_load_balancer_name
  network_id = var.network_id

  allocation_policy {
    location {
      zone_id   = element(var.subnet_info, 0).zone
      subnet_id = element(var.subnet_info, 0).id
    }

    location {
      zone_id   = element(var.subnet_info, 1).zone
      subnet_id = element(var.subnet_info, 1).id
    }

    location {
      zone_id   = element(var.subnet_info, 2).zone
      subnet_id = element(var.subnet_info, 2).id
    }
  }

  listener {
    name = var.listener_name
    endpoint {
      address {
        external_ipv4_address {
        }
      }
      ports = var.listener_ports
    }
    http {
      handler {
        http_router_id = yandex_alb_http_router.alb-router.id
      }
    }
  }
}
