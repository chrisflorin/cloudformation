#!/bin/bash

INSTANCE_ID=`wget -q -O - http://169.254.169.254/latest/meta-data/instance-id`
REGION=`wget -q -O - http://169.254.169.254/latest/dynamic/instance-identity/document | jq --raw-output '.region'`

aws ec2 replace-route --region ${REGION} --route-table-id ${RouteTablePrivate} --destination-cidr-block "0.0.0.0/0" --instance-id $INSTANCEID
#aws ec2 create-route --region ${REGION} --route-table-id ${RouteTablePrivate} --destination-cidr-block "0.0.0.0/0" --instance-id $INSTANCEID
