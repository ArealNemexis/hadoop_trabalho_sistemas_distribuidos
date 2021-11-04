import pandas as pd
import numpy as np
from faker import Faker


fake = Faker()


def gerador_funcionarios(num):
    
    cargo = ['estagiario', 'junior', 'pleno', 'senior']
    team_list = ['frontend', 'backend', 'infra', 'design']
    
    

    trabalhadores_falsos = [{'matricula':x+1000,
                  'nome':fake.name(), 
                  'data_contratacao':fake.date_between(start_date='-30y', end_date='today'),
                  'status':np.random.choice(cargo, p=[0.10, 0.30, 0.40, 0.20]),
                  'time':np.random.choice(team_list)} for x in range(num)]
        
    return trabalhadores_falsos

dataframe = pd.DataFrame(gerador_funcionarios(num=5000))
print(dataframe.head())
dataframe.to_csv('trabalhadores.csv', sep=',')