#!/bin/sh

cd /home

git clone https://github.com/ArealNemexis/hadoop_trabalho_sistemas_distribuidos.git

cd /usr/local/hadoop

echo "--------------------------------------------------------------------------------------------------------------------------------"
echo "criando uma pasta dentro do hdfs via comando:"
echo "bin/hadoop dfs -mkdir /trabalho"
echo "--------------------------------------------------------------------------------------------------------------------------------"
echo ""
read variavelLixo

bin/hadoop dfs -mkdir /trabalho



echo "--------------------------------------------------------------------------------------------------------------------------------"
echo "guardando o csv de entrada via comando: "
echo "bin/hadoop dfs -put /home/hadoop_trabalho_sistemas_distribuidos/trabalhadores.csv /trabalho/trabalhadores.csv"
echo "--------------------------------------------------------------------------------------------------------------------------------"
echo ""
read variavelLixo

bin/hadoop dfs -put /home/hadoop_trabalho_sistemas_distribuidos/trabalhadores.csv /trabalho/trabalhadores.csv

echo "----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------"
echo "rodando o mapreducer e guardando dentro do hdfs via comando:"
echo "bin/hadoop jar /home/hadoop-streaming-3.3.1.jar -file /home/hadoop_trabalho_sistemas_distribuidos/mapper.py -mapper /home/hadoop_trabalho_sistemas_distribuidos/mapper.py -file /home/hadoop_trabalho_sistemas_distribuidos/reducer.py -reducer /home/hadoop_trabalho_sistemas_distribuidos/reducer.py -input /trabalho/trabalhadores.csv -output /trabalho/trabalhadores-resultado"
echo "--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------"
echo ""
read variavelLixo

bin/hadoop jar /home/hadoop-streaming-3.3.1.jar -file /home/hadoop_trabalho_sistemas_distribuidos/mapper.py -mapper /home/hadoop_trabalho_sistemas_distribuidos/mapper.py -file /home/hadoop_trabalho_sistemas_distribuidos/reducer.py -reducer /home/hadoop_trabalho_sistemas_distribuidos/reducer.py -input /trabalho/trabalhadores.csv -output /trabalho/trabalhadores-resultado

echo "--------------------------------------------------------------------------------------------------------------------------------"
echo "mostrando nosso resultado via comando: "
echo "bin/hadoop dfs -cat /trabalho/trabalhadores-resultado/part-00000bin/hadoop dfs -cat /trabalho/trabalhadores-resultado/part-00000"
echo "--------------------------------------------------------------------------------------------------------------------------------"
echo ""
read variavelLixo

bin/hadoop dfs -cat /trabalho/trabalhadores-resultado/part-00000