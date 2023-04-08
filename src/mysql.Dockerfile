FROM mysql:8.0.32-debian

COPY ./backup_daemon.sh /root/backup_daemon.sh

RUN chmod +x /root/backup_daemon.sh

RUN apt-get update && apt-get install -y cron

RUN echo "0 0 * * * /root/backup_daemon.sh ${MYSQL_PASSWORD}" >> /etc/crontab