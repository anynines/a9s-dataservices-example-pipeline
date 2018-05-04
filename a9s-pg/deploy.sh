#!/bin/bash

bosh deploy -n -d a9s-pg unzipped-ds-release/anynines-deployment/a9s-pg/a9s-pg.yml -l unzipped-ds-release/anynines-deployment/iaas-config/bosh-lite.yml
