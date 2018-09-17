Universidade de Brasília - Faculdade do Gama
Disciplina de Orientação a Objetos
Professor: Renato Coral Sampaio
Alunos: João Carlos Porto dos Reis - 14/0145486
     	  Gabriel Ziegler - 150166320
Nome do site: DevFinder
Exercício de Programação 3 - Ruby on Rails

## Docker

`sudo docker-compose build`

`sudo docker-compose up`

if you get the db migrate error, run:

`sudo docker-compose run web bash`

`root$ rake db:migrate`

`root$ rails s`

----------------------------------------------------------------------------------------------------

-> Tema
      O tema foi pensando em facilitar o compartilhamento de projetos entre programadores, como
    funciona? Bom a ideia é, um projetista tem um projeto e quer ajuda, aí nosso site entra
    como um facilidor com váris opcões como o país de origem desse projeto a linguagem o nome,
    quantos membros precisam, vice versa é totalmente válido para um progamador que está em
    busca de um projeto existente para participar.

----------------------------------------------------------------------------------------------------
->Para o perfeito funcionamento do DevFinder necessita que faça o download do elasticsearch
  nesse link terá o tutorial para o procedimento de download/instalação.
  "https://www.digitalocean.com/community/tutorials/how-to-install-and-configure-elasticsearch-on-ubuntu-16-04"

->Para perfeito funcionamento do DevFiner necessita que o programador que ira executar o site
  saiba que existe uma API do google para localização "mapa" que necessita de uma key caso o programador não
  possua retire do código as seguintes linhas "app/views/projects/show.html.erb" da linha 25 a 31.

-> Execuntando o DevFinder

              Comandos em " " - no terminal "alt + t".
                 |
                 v

    Passo 1 - "git clone https://gitlab.com/gabrielziegler3/EP3-2017.git".
    Passo 2 - "cd EP3-2017".
    passo 3 - "rails s".
    passo 4 - "ps -p 1".
    passo 5 - "sudo -i service elasticsearch start".
    passo 6 - "curl -X GET 'http://localhost:9200'".
    passo 7 - Navague pelo site e use suas funcionalidades.

-----------------------------------------------------------------------------------------------------
-> Funcionalidades
      Para usuários não cadastrados as funcionalidades são básicas, ele pode nos contatar clican-
   no botão "Contact", ver um pouco sobre nós no botão "About", navegar pelos projetos ver de-
   lhes usar nossa ferramenta de busca e por fim criar uma conta no botao "Sign Up" e "Sign in"
   se possuir uma conta.
      Para usuários cadastrados temos todas as funcionalidades anteriores menos a "Sing Up",
   com outras funcionalidades como criar um projeto no botão "New Project", editalo no botão
   "edit" em projetos abertos, vizualizar seus projetos em "Manage Projects", editar perfil em
   "Edit Profile", vizualizar projetos que se interessou em "Interested Projects", vizualizar seus
   projetos que algum usuário que se interessou em "People Interested", se interessar em um projeto
   em "Apply" e sair da sua conta em "Sign Up".

---------------------------------------------------------------------------------------------------
