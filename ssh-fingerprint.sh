#!/bin/bash

SERVER_LIST=$(cat /etc/ansible/hosts)
for host in $SERVER_LIST; do ssh-keyscan -H $host >> ~/.ssh/known_hosts; done
