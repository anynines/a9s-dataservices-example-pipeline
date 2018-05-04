#!/bin/bash

bosh deploy -n -d a9s-pg unzipped-ds-release/anynines-deployment/postgresql-service/postgresql-service.yml -l unzipped-ds-release/anynines-deployment/iaas-config/bosh-lite.yml
