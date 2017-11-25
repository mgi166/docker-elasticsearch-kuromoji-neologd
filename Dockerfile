FROM docker.elastic.co/elasticsearch/elasticsearch:5.4.1
USER root
RUN cd /usr/share/elasticsearch && bin/elasticsearch-plugin install org.codelibs:elasticsearch-analysis-kuromoji-neologd:5.4.1
EXPOSE 9200 9300
USER elasticsearch
