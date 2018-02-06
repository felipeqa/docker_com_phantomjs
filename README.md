<h1>Arquitetura do projeto</h1>

Executando seus Testes dentro de um container Docker
-------------------------

  Hj iremos aprender como executar seus testes em um container Docker!


<h3>1.Instalando o Docker</h3>
------------------------------------------------------------

Primeiramente, esse ambiente eu só montei em Windows 10 Pro 64-bits, de acordo com as minhas pesquisas existe outros meios de instalar o Docker em outras versões.
Os requisitos para a instalação são:

Arquitetura 64 bits
Versão Pro
Virtualização habilitada => Que vc consegue visualizar dentro de Gerenciador de Tarefas

[Passo 1](readme_images/Picture1.png?raw=true)

Aqui está o link para download do docker.

[Docker Donwload](https://store.docker.com/editions/community/docker-ce-desktop-windows)

Após a instalação reinicie seu computador.

Após reiniciar o seu  computador verifique se o Docker está rodando:

[Passo 2](readme_images/Picture2.png?raw=true)

Ou utilizando o seu cmd:

```bash
docker version
```

<h3>2.Instalando o Docker em outras versões de Windows</h3>

<h4>Instalando com Docker Toolbox</h4>

Baixar o Docker Toolbox [Aqui!](https://download.docker.com/win/stable/DockerToolbox.exe)

Seu Windows deve ser 64-bits e ter a virtualização ativada.

O Docker Toolbox vai instalar tudo que é necessário para que você possa trabalhar com o Docker em seu computador, pois ele irá instalar também a Oracle VirtualBox, a máquina virtual da Oracle que vai permitir executar o Docker sem maiores problemas.

A diferença é que, quando você trabalha com o Docker for Windows, você pode utilizar o terminal nativo do Windows, já no Docker Toolbox, ele instalará o Docker Machine, que deverá ser utilizado no lugar do terminal nativo do Windows.

<h3>3.Clonando o projeto ou baixando</h3>

Se vc usa o CMDER sabe a instrutura para clonar um projeto

````bash
git clone https://github.com/felipeqa/docker_com_phantomjs.git
````

Senão:
