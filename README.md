## Overview

This repository is a templates set for k8s upset services and environments.

## Usage

```shell
make run
```

When the application is up, run tests:

```shell
newman run loyalty-system\tests\hw.json --global-var "loyalty-system-host=http://arch.homework"
```

For access to services use addresses:

```shell
http://arch.homework/health - for main service
http://prometheus.browser - for Prometheus
http://grafana.browser - for Grafana
http://alertmanager.browser - for Prometheus AlertManager
```