#!/bin/bash
yum install ansible -y
touch /tmp/ansible_test.txt
cd /tmp
git clone https://github.com/kirankolasani/ansible-roboshop-roles-2.git
#sleep 300
#ls -lrth ansible-roboshop-roles-2
cd ansible-roboshop-roles-2/
#ansible-playbook -i ansible-hosts -e component=web main.yaml 
for instance in "mongodb" "mysql" "redis" "rabbitmq" "catalogue" "cart" "user" "shipping" "payment" "web"
do
    ansible-playbook --become -i ansible-hosts -e component=$instance main.yml
done

