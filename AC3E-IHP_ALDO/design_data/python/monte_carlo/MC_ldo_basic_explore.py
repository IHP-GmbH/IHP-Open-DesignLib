# Monte Carlo data processing script
import os
import numpy as np
import sys
import pandas as pd
import matplotlib.pyplot as plt

DROPOUT_FILE_PAHT = $(DIR_HOME)/simulations/csv/mc_ldo_psrr.csv

def read_file(file_path):
	# Select and keep only the first column
	if os.path.exists(file_path):
		print(f"Reading file '{file_path}'")
		df = pd.read_csv(file_path, sep='\s+')
	else:
		print(f"file '{file_path}' does not exists")
		
read_file(DROPOUT_FILE_PATH)
