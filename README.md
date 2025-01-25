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