#!/usr/bin/envs python3

""" This script helps to inspect data structure of various data types."""

_appname_ = 'inspect_structure'
_author_ = 'Dongxuan Zhu (dongxuan.zhu22@imperial.ac.uk)'
_version_ = '0.0.1'
_license_ = "N/A"

#### imports ####
import pandas

#### functions ####
#inspect data structure
def inspect(data):
    data_type = type(data)
    print(data_type)
    if data_type == list:
        sublist_len = [len(sublist) for sublist in data]
        # print('\n',data[0:2])
        print(f'There are {len(sublist_len)} sublists of this list.',f'\n Its first 3 sublists are {data[:3]}')
    else:
        print('\n', data.shape)
        print('\n', data[0:4,])
        for row in range(5):
            print('\n',set(data[row,]))
    return(0)