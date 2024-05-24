# Configuração de Ambiente de Desenvolvimento com Docker e Express.js
## 🚀 
* Este projeto é apenas um exemplo básico para demonstrar como configurar e executar uma aplicação Node.js com Express dentro de um container Docker.

## Instruções para rodar o projeto

* Para rodar o app, é preciso incialmente executar o instalandodocker.sh onde será realizado a instalação do docker e docker compose
* Em seguida é preciso buildar o dockefile com o comando 
* docker build -t cyber-app
* Em seguida rodar o container 
* docker run -p 3000:3000 cyber-app
* O qual irá expor a aplicação na porta 3000
* para acessar digite no seu navegador localhost:3000

## 🛠️ Construído com
- Docker
- Express
- NodeJS

## Author
Osvaldo Henrique

## License
Copyright © 2024 Osvaldo Henrique
