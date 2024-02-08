# osul/solr:latest
FROM solr:8.6

USER root

RUN apt-get update && \
  apt-get -y install git && \
  rm -rf /var/lib/apt/lists/*

USER $SOLR_USER

COPY scripts/create_ci_core.sh /docker-entrypoint-initdb.d/
