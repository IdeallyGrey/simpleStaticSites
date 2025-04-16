FROM nginx:latest

RUN apt-get update && \
    apt-get install -y pandoc && \
    apt-get clean

COPY script/simpleStaticSites.sh /usr/local/bin/sssScript/
RUN mkdir /usr/local/bin/sssScript/html && mkdir /usr/local/bin/sssScript/content && mkdir /usr/local/bin/sssScript/templates/

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
