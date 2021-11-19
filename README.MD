#Processamento de dados

##Sequência de Inicialização
**1. Entrar na pasta dockers.**
>docker-compose -f docker-compose-minimal.yml build --no-cache

**2. Subida dos containers.**
>docker-compose -f docker-compose-minimal.yml up -d

**3. Mover o arquivo de apresentacao.sh para dentro do container.**
> docker cp ../apresentacao.sh hash_do_container:/home/apresentacao.sh

**4. Mover o arquivo de reversão para dentro do container.**
>docker cp ../revert.sh hash_do_container:/home/revert.sh

**5. Entrar no container**
>docker exec -it master bash

**6. Entrar na pasta home**
>cd /home

**7. Permitir execução do arquivo ShellScript**
>chmod +x apresentacao.sh

**8. Executar apresentação**
>./apresentacao.sh
###Tecnologias utilizadas
- [python3](https://docs.python.org/3.8/)

- [numpy](https://numpy.org/)

- [pandas](https://pandas.pydata.org/)

- [faker](https://faker.readthedocs.io/en/master/)

- [ecosistema hadoop](https://hadoop.apache.org/)

- [docker](https://www.docker.com/)

- [docker compose](https://docs.docker.com/compose/)

###Referências utilizadas

- [Subida de Imagem dockerhub](https://jtemporal.com/subindo-imagens-docker-pro-dockerhub/)

- [Repositorio dockerhub](https://hub.docker.com/repository/docker/arealnemexis/hadoop-base)

- [Referência de mapreducer em Python](https://www.michael-noll.com/tutorials/writing-an-hadoop-mapreduce-program-in-python/)

- [Referência para rodar o mapreducer](https://stackoverflow.com/questions/47618867/how-to-run-python-mapreduce-in-hadoop-streaming)

- [Referência para enviar arquivas para docker](https://stackoverflow.com/questions/22907231/how-to-copy-files-from-host-to-docker-container)

- [Exemplo de mapreducer em Python2](https://github.com/cloudxlab/bigdata/blob/master/hdpexamples/python-streaming/find_anagrams/mapper.py)

