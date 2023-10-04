#!/usr/bin/envs python3

""" This script keeps an inventory and examples for helpful functions."""

_appname_ = 'package_inventory'
_author_ = 'Dongxuan Zhu (dongxuan.zhu22@imperial.ac.uk)'
_version_ = '0.0.1'
_license_ = "N/A"

#### INVENTORY ####
#tqdm
#Visualize progress of loops etc.
from tqdm import tqdm
sublist_len = [len(sublist) for sublist in tqdm(test_names)]
