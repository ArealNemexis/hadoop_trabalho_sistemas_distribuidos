#!/usr/bin/python3
import sys


# index,matricula,nome,data_contratacao,status,time

def main():
    for line in sys.stdin:
        line = line.strip()
        index, matricula, nome, data_contratacao, status, time = line.split(',')

        ano, mes, _ = data_contratacao.split('-')

        print(f'{nome},{ano},{mes},{status},{time}')


if __name__ == '__main__':
    main()
