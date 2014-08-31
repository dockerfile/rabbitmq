#
# RabbitMQ Dockerfile
#
# https://github.com/dockerfile/rabbitmq
#

# Pull base image.
FROM dockerfile/ubuntu

# Install MariaDB.
RUN \
  wget -qO - http://www.rabbitmq.com/rabbitmq-signing-key-public.asc | apt-key add - && \
  echo "deb http://www.rabbitmq.com/debian/ testing main" > /etc/apt/sources.list.d/rabbitmq.list && \
  apt-get update && \
  DEBIAN_FRONTEND=noninteractive apt-get install -y rabbitmq-server && \
  rm -rf /var/lib/apt/lists/* && \
  rabbitmq-plugins enable rabbitmq_management && \
  echo "[{rabbit, [{loopback_users, []}]}]." > /etc/rabbitmq/rabbitmq.config

# Define working directory.
WORKDIR /data

# Define default command.
CMD ["rabbitmq-server"]

# Expose ports.
EXPOSE 5672
EXPOSE 15672
