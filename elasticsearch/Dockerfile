ARG ELASTIC_VERSION

# https://www.docker.elastic.co/
FROM docker.elastic.co/elasticsearch/elasticsearch:${ELASTIC_VERSION:-8.18.1}

USER root
ADD CN_ITRIRoot256.pem /etc/ssl/certs/
RUN update-ca-certificates
USER elasticsearch

# Add your elasticsearch plugins setup here
# Example: RUN elasticsearch-plugin install analysis-icu
