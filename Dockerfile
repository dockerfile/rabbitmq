FROM library/rabbitmq:3.6.0-management

MAINTAINER julian.diaz@onefinancialholdings.com

# SEE: https://github.com/harbur/docker-rabbitmq-cluster/blob/master/rabbitmq-cluster
COPY rabbitmq-init /usr/local/bin/

EXPOSE 4369
EXPOSE 5672
EXPOSE 9100-9105
EXPOSE 15672
EXPOSE 25672

USER rabbitmq

CMD ["rabbitmq-init"]
