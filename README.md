## Overview

This repository is a templates set for k8s upset services and environments.

## Usage

```shell
make run
```

When the application is up, run tests:

```shell
newman run loyalty-system\tests\hw6.json --global-var "loyalty-system-host=http://arch.homework"
```

For access to services use addresses:

```shell
http://arch.homework/health - for main service (port 8080)
http://prometheus.browser - for Prometheus (port 9090)
http://grafana.browser - for Grafana (port 3000)
http://alertmanager.browser - for Prometheus AlertManager (port 9093)
```