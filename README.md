# Call for Papers Semana da Tecnologia XXIV

Esse é Call for Papers da Semana da Tecnologia XXIV da Fatec Sorocaba.
Call for Papers é uma plataforma de envio de palestras. O interessados podem enviar duas propostas para serem analizadas pela organização.

## Setup
Para iniciar crie um arquivo .env e coloque as variáveis de ambiente necessárias  
DEVISE_EMAIL_HOST=exemplo@mail.com

## Run

É necessário possuir Ruby e PostgreSQL instalado.


```shell
git clone https://github.com/FatecSorocaba/callforpapersXXIV.git # Você pode trocar pelo ssh se preferir
cd callforpapersXXIV
gem install bundler
bundler install # instale as dependências
rails server # suba o servidor
```
## Run with Docker

É necessário possuir o Docker e o Docker-compose instalado:


[Docker installation guide](https://blog.codeminer42.com/instala%C3%A7%C3%A3o-do-docker-e-docker-compose-9b0195dff4e)


```shell
docker-compose up
```
