#! /bin/bash

QUEUE_DNS=${1:-"queue.ofh.priv"}
BARENBOIM_DNS=${2:-"ansible.ofh.co"}

ssh -A -L 15672:$QUEUE_DNS:15672 ubuntu@$BARENBOIM_DNS
