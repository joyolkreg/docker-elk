ARG ELASTIC_VERSION

# https://www.docker.elastic.co/
FROM docker.elastic.co/kibana/kibana:${ELASTIC_VERSION:-9.0.1}

ADD CN_ITRIRoot256.pem /etc/pki/ca-trust/source/anchors/
USER root
RUN update-ca-trust extract
USER kibana

# Add your kibana plugins setup here
# Example: RUN kibana-plugin install <name|url>
