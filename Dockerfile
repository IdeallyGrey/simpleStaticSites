FROM nginx:latest

RUN apt-get update && \
    apt-get install -y pandoc && \
    apt-get clean

COPY script/simpleStaticSites.sh /usr/local/bin/sssScript/
COPY script/templates/ /usr/local/bin/sssScript/templates/
RUN mkdir /usr/local/bin/sssScript/html && mkdir /usr/local/bin/sssScript/content

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
