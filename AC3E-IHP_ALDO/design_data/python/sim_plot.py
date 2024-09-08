import os
import numpy as np
import sys
import pandas as pd
import matplotlib.pyplot as plt

def sim_plot(csv_path, params, xlabel, ylabel, scale='linear'):

	df = pd.read_csv(csv_path, sep='\s+')
	col_num = len(df.columns)
	params = params.split()

	x_axis = df.iloc[:,0]
	for i in range(int(col_num/2)):
	    plt.plot(x_axis, df.iloc[:,2*i+1])
	    
	csv_name = os.path.basename(csv_path)
	csv_sim_type = os.path.splitext(csv_name)[0].split('_')[-1]

	plt.title(csv_sim_type+' simulation')
	plt.legend(params)
	plt.grid()
	plt.xlabel(xlabel)
	plt.ylabel(ylabel)
	if scale=='log':
	    plt.xscale('log')
