ARG ELASTIC_VERSION

# https://www.docker.elastic.co/
FROM docker.elastic.co/kibana/kibana:${ELASTIC_VERSION:-8.18.1}

USER root
ADD CN_ITRIRoot256.pem /etc/ssl/certs/
ENV NODE_EXTRA_CA_CERTS=/etc/ssl/certs/CN_ITRIRoot256.pem
RUN update-ca-certificates
USER kibana

# Add your kibana plugins setup here
# Example: RUN kibana-plugin install <name|url>
