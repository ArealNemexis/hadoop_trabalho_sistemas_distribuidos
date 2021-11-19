#!/usr/bin/python3

from collections import defaultdict
import sys


def main():
    # saber quantos funcionarios foram contratados em cada ano
    dict_anos = defaultdict(list)

    for line in sys.stdin:
        line = line.strip()

        nome, ano, mes, status, time = line.split(',')

        dict_anos[ano].append(f'{nome},{status},{time}')

    dict_anos = sorted(dict_anos.items())

    for k, v in dict(dict_anos).items():
        print(f'{k},{len(v)}')


if __name__ == '__main__':
    main()
