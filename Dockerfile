FROM evolveum/midpoint:4.1-alpine

COPY ./midpoint_home/ /opt/midpoint/var/

COPY ./start-midpoint_wrapper.sh /usr/local/bin/
RUN chmod 755 /usr/local/bin/start-midpoint_wrapper.sh

CMD ["/usr/local/bin/start-midpoint_wrapper.sh"]
