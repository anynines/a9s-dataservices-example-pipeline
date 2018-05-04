#!/bin/bash

bosh deploy -n -d postgresql-service unzipped-ds-release/anynines-deployment/postgresql-service/postgresql-service.yml -l unzipped-ds-release/anynines-deployment/iaas-config/bosh-lite.yml
