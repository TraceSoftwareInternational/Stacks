#!/usr/bin/env sh

apt-get install -y git
git clone https://github.com/TraceSoftwareInternational/Stacks.git
mv -f Stacks/Sonarqube /home/Sonarqube
cd /home/Sonarqube
docker-compose pull
cp sonarqube.service /etc/systemd/system
systemctl enable sonarqube.service
systemctrl start sonarqube
