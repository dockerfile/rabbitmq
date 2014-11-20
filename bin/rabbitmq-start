#!/bin/bash

ulimit -n 1024
chown -R rabbitmq:rabbitmq /data
exec rabbitmq-server $@
