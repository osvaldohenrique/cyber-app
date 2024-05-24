#!/bin/bash

sudo apt-get update

sudo apt-get install -y apt-transport-https ca-certificates curl software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

sudo apt-get update

sudo apt-get install -y docker-ce

if [ "$(sudo systemctl is-active docker)" = "active" ]; then
    echo "Docker foi instalado com sucesso."
else
    echo "A instalaÃ§Ã£o do Docker falhou."
    exit 1
fi

DOCKER_COMPOSE_VERSION=$(curl -s https://api.github.com/repos/docker/compose/releases/latest | grep -Po '"tag_name": "\K.*?(?=")')
sudo curl -L "https://github.com/docker/compose/releases/download/$DOCKER_COMPOSE_VERSION/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

sudo chmod +x /usr/local/bin/docker-compose

if [ "$(docker-compose --version)" ]; then
    echo "Docker Compose foi instalado com sucesso."
else
    echo "A instalaÃ§Ã£o do Docker Compose falhou."
    exit 1
fi

sudo usermod -aG docker $USER

echo "InstalaÃ§Ã£o do Docker e Docker Compose concluÃ­da com sucesso."
