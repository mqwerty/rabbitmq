FROM rabbitmq:3.8-management-alpine
COPY ./conf /etc/rabbitmq/
RUN rabbitmq-plugins enable --offline rabbitmq_consistent_hash_exchange rabbitmq_shovel rabbitmq_shovel_management
