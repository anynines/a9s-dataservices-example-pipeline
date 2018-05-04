#!/bin/bash

VERSION=`ls anynines-deployment-*.tgz | cut -d'-' -f 3 | cut -d'.' -f1,2,3`
EXPECTED_CHECKSUM=`curl "https://s3-eu-west-1.amazonaws.com/anynines-bosh-releases/anynines-deployment-${VERSION}.tgz.sha256" | cut -d' ' -f 1`
ACTUAL_CHECKSUM=`sha256sum anynines-deployment-*.tgz | cut -d' ' -f 1`

if [ "${EXPECTED_CHECKSUM}" = "${ACTUAL_CHECKSUM}" ]
then
  echo "anynines deployment offline release (version ${VERSION}) checksum is valid (${EXPECTED_CHECKSUM})"
  exit 0
else
  echo "anynines deployment offline release (version ${VERSION}) checksum is invalid (expected to be ${EXPECTED_CHECKSUM} but is ${ACTUAL_CHECKSUM})"
  exit 1
fi
