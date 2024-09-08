# Monte Carlo data processing script
import os
import numpy as np
import sys
import pandas as pd
import matplotlib.pyplot as plt
# Replace 'your_file.csv' with the path to your CSV file

def MC_ldo_line_reg(file_path):

    if os.path.exists(file_path):
        print(f"Reading file '{file_path}'")
        df = pd.read_csv(file_path, sep='\s+')
    else:
        print(f"file '{file_path}' does not exists")
    # Select and keep only the first column
    # Plot the first column
    f3db= df.iloc[:,2]

    f3db = np.abs(f3db)*1e3

    no_bins = 50
    plt.hist(f3db,bins=no_bins)
    plt.xlabel('Line regulation [mV/V]')
    plt.title('Line regulation statistical distribution')
    plt.annotate(f"Mean: {f3db.mean()}\n Std:  {f3db.std()}", (4, 60))

    print("---------------------------------------" )
    print(f"Mean value of Line Regualation: {f3db.mean()}" )
    print(f"Std dev of Line Regulation:  {f3db.std()}" )
    print("---------------------------------------" )

    # Show the plot
    #basename = os.path.basename(file_path)
    #fig_file_name=fig_file_path
    #print(fig_file_name)
    #plt.savefig(fig_file_name,dpi=600)
    #plt.show()
