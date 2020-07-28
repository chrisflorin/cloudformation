#!/bin/bash

REGION=`wget -q -O - http://169.254.169.254/latest/dynamic/instance-identity/document | jq --raw-output '.region'`
MOUNT_DNS="${EFS_FILE_SYSTEM_ID}.efs.${REGION}.amazonaws.com"

yum install -y amazon-efs-utils

mkdir /var/lib/jenkins
mount -t efs -o tls fs-2a1602a9:/ /var/lib/jenkins
