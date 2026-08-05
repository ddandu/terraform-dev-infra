#!/bin/bash

dnf install ansible -y
#ansible-pull -U https://github.com/daws-86s/ansible-roboshop-roles-tf.git -e component=$component main.yaml

ansible-pull -U https://github.com/ddandu/ansible-roboshop-roles-terraform.git -e component=$component main.yaml