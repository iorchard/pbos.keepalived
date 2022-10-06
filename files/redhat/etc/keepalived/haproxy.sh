#!/bin/bash
TYPE=$1
NAME=$2
STATE=$3

case $STATE in
    "MASTER") systemctl start haproxy.service
              exit 0
              ;;
    "BACKUP") systemctl stop haproxy.service
              exit 0
              ;;
    "FAULT")  systemctl stop haproxy.service
              exit 0
              ;;
    "STOP")   systemctl stop haproxy.service
              exit 0
              ;;
    *)        echo "unknown state: $STATE"
              exit 1
              ;;
esac
