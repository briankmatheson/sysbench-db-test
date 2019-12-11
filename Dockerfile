FROM ubuntu

MAINTAINER Brian Matheson <bmath@mayadata.io>

RUN apt -y update && apt -y install mysql-client sysbench
COPY ./mysql-sysbench.sh /
ENTRYPOINT ["/mysql-sysbench.sh"]
CMD ["sysbench"]
