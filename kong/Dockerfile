FROM kong:latest

WORKDIR /
COPY init_kong_mis.sh .
RUN chmod a+x /init_kong_mis.sh

# CMD ["/bin/sh", "./init_kong_mis.sh"]