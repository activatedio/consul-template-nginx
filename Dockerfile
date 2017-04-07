FROM nginx

ARG consul_template_version=0.18.1

RUN apt-get update && apt-get install -y --no-install-recommends curl unzip
RUN curl -SL https://releases.hashicorp.com/consul-template/${consul_template_version}/consul-template_${consul_template_version}_linux_amd64.zip --output consul-template.zip
RUN unzip consul-template.zip
RUN cp consul-template /usr/local/bin
RUN rm consul-template.zip
COPY start-or-reload-nginx.sh /
RUN chmod 755 /start-or-reload-nginx.sh
COPY entrypoint.sh /
RUN chmod 755 /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]



