## RabbitMQ Management GUI

This script makes use of the **rabbitmq_management** plugin.  It uses the current terminal session to create an SSH tunnel mapping port 15672 on the localhost to port 15672 on a rabbitmq instance.


#### Usage:
`python tunnel_gui.py /path/to/ssh/key DNS_of_queue IP_of_barenboim`

The last two arguments are optional, and default to `queue.ofh.priv` and the IP address of prod barenboim, respectively.

Example:

`python tunnel_gui.py $PROD_PRIVATE_KEY`


Then point a browser at `localhost:15672`.  

#### Using the gui:
Default login and password are both "guest".
