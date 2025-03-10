# SERVIÇO NACIONAL DE APRENDIZAGEM COMERCIAL (SENAC)

## CURSO DE TECNOLOGIA EM BANCO DE DADOS

### PROJETO INTEGRADOR V: APOIO DECISÓRIO AOS NEGÓCIOS

**Integrantes do grupo:**
- Adriana Lopes Machado Ishikawa
- Guilherme José Lourenço da Costa
- Hugo Sena Matos
- Luiz Felipe M. Guimarães
- Marcelo de Sá Mendoza

## Resumo

Este trabalho tem por objetivo apresentar a aplicação de conceitos, processos, técnicas e ferramentas necessárias para um projeto de sistema de apoio à decisão na gestão de condomínios residenciais. Na primeira etapa do trabalho foram apresentados o objetivo do projeto; o Modelo Entidade Relacionamento; o Modelo Dimensional; a granularidade, tabelas de fato e tabelas de dimensão; e o processo de Extração, Transformação e Carga (ETL). Na segunda etapa foram apresentadas as operações de Processamento Analítico Online (OLAP) que permitem obter informações para gestão.

**Palavras-chave:** gestão de condomínios, banco de dados, modelo dimensional, ETL, OLAP.

## Conteúdo

1. **Introdução** - Visão geral da solução proposta
2. **Definição dos processos para administração de banco de dados**
   - 2.1. Monitoração de disponibilidade e funcionamento
   - 2.2. Gerenciamento de falhas (troubleshooting)
   - 2.3. Backup e recuperação
   - 2.4. Monitoração, avaliação e ajustes de performance (tunning)
   - 2.5. Reorganização
   - 2.6. Planejamento de capacidade
   - 2.7. Upgrade
   - 2.8. Segurança
   - 2.9. Extração, transformação e carga de dados
3. **Matriz de Responsabilidades**
4. **Conclusão**

## Referências

### Instalação do docker e pentaho

# **Pentaho server - Etapas implantação usando docker:**
1- Enviar para o servidor HML/PRD o pacote "pentaho-server-docker" (pasta com dockerfile, docker-compose, lib, data)

2- Criar imagem (build) do pentaho server 9 baseado no dockerfile (comando: docker-compose build)

   Caso o servidor HML/PRD não tenha acesso a internet, não será possível criar a imagem, então realizar etapas adicionais antes de rodar:
   - Gerar imagem em máquina que possui acesso a internet e realizar a exportação da imagem para um arquivo .tar
     docker save
   - Carregar arquivo no servidor HML/PRD
     docker load 

3- Rodar imagem para criar o container e inicializar 
comando: docker-compose up

4- Fazer upload do zip de jobs/transformações no pentaho server web 
http://ip_servidor:8081/pentaho/Login

5- Ajustar as configurações de conexão de banco e controle de usuário

6- Configurar schedule para execução do JOB


_**Obs. também é possível:**_ 
 - Realizar Commit do container para gerar snapshot.
 - Armazenar a imagem em repositório docker-hub ou nexus, usando o conceito de registrar a imagem.

## Conjunto de comandos docker / compose

### build (cria imagem)
docker build -t lpaschoal/pentaho_server:9.0 .

**_Usando compose:_** 
> docker-compose build

### Verificar imagens/container existentes
>  - docker images  
>  - docker ps  
>  - docker ps -a
>  - docker inspect
>  - docker logs --follow (container_id)

### run primeira vez (cria container)
> docker run -p 127.0.0.1:8081:8080 lpaschoal/pentaho_server:9.0 

**_Usando compose:_** 
> docker-compose up

### Navega pelos arquivos do container
> docker exec -t -i pentaho-server /bin/bash

### Rodar container existente
> docker container start pentaho-server

**_Usando compose:_** 
> docker-compose up

### Parar container existente
> docker container stop pentaho-server

**_Usando compose:_** 
> docker-compose stop

### Customizar container com confs e depois gerar uma imagem (snapshot)
> docker commit (container_id)  lpaschoal/pentaho_server_snapshot:2.0



# Instalação do MySQL

Aqui está um passo a passo da instalação de um banco de dados MySQL em um ambiente de desenvolvimento.


### Passo 1: Download do MySQL

1. Acesse o [site oficial do MySQL](https://dev.mysql.com/downloads/installer/).
2. Faça o download e execute o instalador.

### Passo 2: Instalação

Siga as instruções do instalador. Durante a instalação, você será solicitado a configurar a senha do usuário root. Guarde essa senha, pois será necessária posteriormente.

### Passo 3: Configuração Inicial

Após a instalação, você pode precisar realizar algumas configurações iniciais:

1. **Iniciar o Serviço MySQL**:
   - No Windows, o serviço MySQL geralmente inicia automaticamente após a instalação.
   - No Linux, você pode iniciar o serviço com o seguinte comando:
     ```sh
     sudo systemctl start mysql
     ```

2. **Acessar o MySQL**:
   - Abra o terminal (ou prompt de comando) e digite:
     ```sh
     mysql -u root -p
     ```
   - Digite a senha que você configurou durante a instalação. Se tudo estiver correto, você verá o prompt do MySQL.


No Linux, é recomendável executar o script de segurança pós-instalação do MySQL:

```sh
sudo mysql_secure_installation
```
**Pronto!**

### Passo 4 (opcional): Instalação do MySQL Workbench:

   - Acesse o [site oficial do MySQL] (https://dev.mysql.com/downloads/workbench/)
   - Faça o download e execute o instalador
   - Connection Name: Nome da sua conexão.
   - Hostname: localhost (ou o endereço do seu servidor MySQL).
   - Port: 3306 (ou a porta configurada para o MySQL).
   - Username: root (username configurado na instalação do banco).
   - Password: Senha do usuário (senha que configurou na instalação do banco).

### Passo 5: Carga dos dados
   - 1. Acesse o MySQL no terminal ou prompt de comando:
     ```sh
     mysql -u root -p
     ```
     (Se não houver senha, omita o -p)
     
   - 2. Crie o banco de dados (se ainda não existir):
     ```sh
     CREATE DATABASE IF NOT EXISTS condo;
     ```
     
   - 3. Saia do Mysql digitando ```sh exit ```
   
   - 4. Importe o backup para o banco de dados:
     ```sh
     mysql -u root -p condo < backup_database_condo.sql
     ```
     (Insira a senha se solicitado)
     
   - 5. Verifique se a importação foi bem-sucedida:
     ```sh
     mysql -u root -p
     USE condo;
     SHOW TABLES;
     ```
   
**Nota:** Este arquivo README.md fornece uma visão geral do projeto integrador desenvolvido no curso de Tecnologia em Banco de Dados do SENAC. Para mais detalhes, consulte a documentação completa do projeto.
