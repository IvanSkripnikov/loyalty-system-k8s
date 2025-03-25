## Overview

This repository is a templates set for k8s upset services and environments.

## Usage

```shell
make run
```

When the application is up, run tests:

```shell
newman run additionals\tests\hw9.json --global-var "shop-service-host=http://arch.homework" --global-var "orders-service-host=http://orders.browser" --global-var "billing-service-host=http://billing.browser" --global-var "notification-service-host=http://notification.browser" --global-var "warehouse-service-host=http://warehouse.browser" --global-var "delivery-service=http://delivery.browser"
```

For access to services use addresses:

```shell
http://arch.homework/health - for main service (port 8080)
http://prometheus.browser - for Prometheus (port 9090)
http://grafana.browser - for Grafana (port 3000)
http://alertmanager.browser - for Prometheus AlertManager (port 9093)
```

For test access to services data use addresses:

```shell
http://billing.browser/health - for billing service (port 8080)
http://orders.browser/health - for orders service (port 8080)
http://notification.browser/health - for notification service (port 8080)
http://warehouse.browser/health - for warehouse service (port 8080)
http://delivery.browser/health - for delivery service (port 8080)
http://payment.browser/health - for payments service (port 8080)
http://loyalty-system.browser/health - for loyalty system service (port 8080)
```