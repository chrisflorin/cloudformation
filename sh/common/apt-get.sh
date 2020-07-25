#!/bin/bash

apt-get update
apt-get install -y aws-cli

git clone https://github.com/chrisflorin/cloudformation /opt/cloudformation
