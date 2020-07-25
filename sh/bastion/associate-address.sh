#!/bin/bash

INSTANCE_ID=`wget -q -O - http://169.254.169.254/latest/meta-data/instance-id`
aws ec2 associate-address --region us-east-1 --instance-id $INSTANCE_ID --allocation-id $EIP_ALLOCATION_ID
