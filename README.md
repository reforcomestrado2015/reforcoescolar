RecomendaReforço.net
==========

[RecomendaReforco.net](RecomendaReforco.net) é uma aplicação que construímos para recomendar professores de aula de reforço com base nas disciplinas lecionadas 
pelo professor [Foi usado Ruby On Rails](http://recomendareforco.net/disciplines/)!

Essa versão do código é para o Rails 4.1. [rails-4.1]
(https://github.com/reforcomestrado2015/reforcoescolar).

Licença
=======
O [recomendareforco.net](RecomendaReforco.net) é distribuído sob a licença MIT:

www.opensource.org/licenses/MIT

Necessario instalar o:

- sudo apt-get install libmagickwand-dev
- sudo apt-get install imagemagick
- sudo service postgresql start

Deve-se também mudar a senha padrão do usuario postgres para o valor 12345 e em seguida criar o banco de dados padrão usando os comandos abaixo:

 - sudo passwd postgres 
 - su postgres
 - infrome a senha: 12345
 - psql -c "ALTER USER postgres WITH PASSWORD '12345'" -d template1 
 - psql -c "create database recomendareforco_development" 
 - exit


Por ultimo rodar o comando:

 - bundle install
 - rake db:migrate
