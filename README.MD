cat trabalhadores.csv | python3 mapper.py | python3 reducer.py > data2.txt


https://jtemporal.com/subindo-imagens-docker-pro-dockerhub/
https://hub.docker.com/repository/docker/arealnemexis/hadoop-base
https://www.michael-noll.com/tutorials/writing-an-hadoop-mapreduce-program-in-python/
https://stackoverflow.com/questions/47618867/how-to-run-python-mapreduce-in-hadoop-streaming
https://stackoverflow.com/questions/32543734/how-to-find-jar-home-hadoop-contrib-streaming-hadoop-streaming-jar
https://jar-download.com/artifacts/org.apache.hadoop/hadoop-streaming
https://stackoverflow.com/questions/22907231/how-to-copy-files-from-host-to-docker-container
https://github.com/cloudxlab/bigdata/blob/master/hdpexamples/python-streaming/find_anagrams/mapper.py

bin/hadoop jar /home/hadoop-streaming-3.3.1.jar -file /home/hadoop_trabalho_sistemas_distribuidos/mapper.py -mapper "python3 /home/hadoop_trabalho_sistemas_distribuidos/mapper.py" -file /home/hadoop_trabalho_sistemas_distribuidos/reducer.py -reducer "python3 /home/hadoop_trabalho_sistemas_distribuidos/reducer.py" -input /trabalho/trabalhadores.csv -output /trabalho/trabalhadores-resultado.txt
bin/hadoop jar /home/hadoop-streaming-3.3.1.jar -file /home/hadoop_trabalho_sistemas_distribuidos/mapper.py -mapper /home/hadoop_trabalho_sistemas_distribuidos/mapper.py -file /home/hadoop_trabalho_sistemas_distribuidos/reducer.py -reducer /home/hadoop_trabalho_sistemas_distribuidos/reducer.py -input /trabalho/trabalhadores.csv -output /trabalho/trabalhadores-resultado
