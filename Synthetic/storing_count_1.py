import itertools
import sys
from bitarray import bitarray


class Cmine():
    def __init__(self,input_file, output_file):
        self.de = {}
        self.Input_file = input_file
        self.Output_file = output_file
        self.number_of_transactions = self.get_num_transactions()
        self.data = self.get_data()
        self.data_count = self.get_data_count()
        print(self.data_count)


    def get_data(self):
        t_list = {}
        with open(self.Input_file, 'r') as f:
            lines = f.readlines()
            for itr, line in enumerate(lines):
                trans_list = line.strip().split(' ')
                for item in trans_list:
                    if item in t_list:
                        t_list[item][itr] = 1
                    else:
                        t_list[item] = bitarray(self.number_of_transactions)
                        t_list[item].setall(0)
                        t_list[item][itr] = 1

        f.close()
        if '' in t_list:
            t_list.pop('')
        return t_list


    def get_data_count(self):
        c1 = {}
        for keys in self.data:
            c1[keys] = self.data[keys].count()
        return c1


    def get_num_transactions(self):
        with open(self.Input_file, 'r') as f:
            lines = f.readlines()
            num_transactions = len(lines)
        f.close()
        return num_transactions


if __name__ == '__main__':
    input_file = sys.argv[1]
    output_file = 'out.txt'
    Cmine(input_file, output_file)
