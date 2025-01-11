## Overview

This repository is a templates set for k8s upset services and environments.

## Usage

```shell
helm install loyalty-system .
newman run tests\hw.json --global-var "loyalty-system-host=http://arch.homework"
```
