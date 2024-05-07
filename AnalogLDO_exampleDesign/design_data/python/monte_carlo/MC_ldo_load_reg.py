# Monte Carlo data processing script
import os
import numpy as np
import sys
import pandas as pd
import matplotlib.pyplot as plt
# Replace 'your_file.csv' with the path to your CSV file

if len(sys.argv) != 0:
    arg = sys.argv[1]
    fig_file_path= sys.argv[2]
    print(f"The CSV file to read is: '{arg}' ")
else:
    print("No argument specified")

file_path = arg
# Select and keep only the first column

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
plt.xlabel('Load Regulation [mV/mA]')
plt.title('Load Regulation frequency statistical distribution')
    
print("---------------------------------------" )
print(f"Mean value of Load Regulation: {f3db.mean()}" )
print(f"Std dev of Load Regulation:  {f3db.std()}" )
print("---------------------------------------" )

# Show the plot
basename = os.path.basename(file_path)
fig_file_name=fig_file_path
print(fig_file_name)
plt.savefig(fig_file_name,dpi=600)
plt.show()
