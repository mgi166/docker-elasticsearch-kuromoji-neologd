FROM docker.elastic.co/elasticsearch/elasticsearch:5.4.1
USER root

ADD config/elasticsearch.yml /usr/share/elasticsearch/config/
RUN chown elasticsearch:elasticsearch config/elasticsearch.yml

RUN cd /usr/share/elasticsearch && bin/elasticsearch-plugin install org.codelibs:elasticsearch-analysis-kuromoji-neologd:5.4.1

USER elasticsearch
