# syntax=docker/dockerfile:1
FROM node:lts-buster
WORKDIR /srv/
RUN apt-get update && apt-get -y install ssh

# Add user..
RUN useradd -d /home/stypr -s /bin/false stypr && \
    mkdir -p /home/stypr && \
    touch /home/stypr/.hushlogin
RUN chmod 1733 /tmp /var/tmp /dev/shm /proc

# Install service
COPY . /srv/
RUN npm install && chmod 555 /srv/ && chown -R stypr:root /srv/

USER stypr
EXPOSE 3000
CMD ["node", "login.js"]
