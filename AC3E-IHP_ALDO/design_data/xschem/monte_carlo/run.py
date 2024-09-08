import sys
import os
import subprocess
import matplotlib.pyplot as plt

home_dir = os.environ['HOME_DIR']
pdk_root = os.environ['PDK_ROOT']
pdk = os.environ['PDK']
sch_dir = os.path.join(home_dir, 'xschem/monte_carlo')
simulations_path = os.path.join(sch_dir, 'simulations')
script_dir = home_dir+'/python/monte_carlo'

sys.path.append('/home/ac3e/Documents/ihp_design/python')
sys.path.append('/home/ac3e/Documents/ihp_design/python/monte_carlo')

from sim_script import get_netlist, simulate, open_xschem
from sim_plot import sim_plot
from MC_ldo_psrr import MC_ldo_psrr
from MC_ldo_dropout import MC_ldo_dropout
from MC_ldo_line_reg import MC_ldo_line_reg
from MC_ldo_load_reg import MC_ldo_load_reg
from MC_ldo_pm import MC_ldo_pm
from MC_ldo_olgain import MC_ldo_olgain

if not os.path.exists(simulations_path):
    os.makedirs(simulations_path)

simulations = ['mc_ldo_tb_closeloop', 'mc_ldo_tb_openloop']
#for sim in simulations:
#	print("Generating "+sim+" netlist from schematic")
#	get_netlist(pdk_root, pdk, sim+'.sch', simulations_path, 0)
		
#for sim in simulations:
#	print("Simulating "+sim+" with nspice")
#	simulate(simulations_path, sim+'.spice')

plt.figure(figsize=(15, 10))
plt.subplot(2,2,1)
MC_ldo_psrr(simulations_path+'/mc_ldo_psrr.csv')
plt.subplot(2,2,2)
MC_ldo_dropout(simulations_path+'/mc_ldo_dropout.csv')
plt.subplot(2,2,3)
MC_ldo_line_reg(simulations_path+'/mc_ldo_line_reg.csv')
plt.subplot(2,2,4)
MC_ldo_load_reg(simulations_path+'/mc_ldo_load_reg.csv')

plt.savefig(home_dir+'/results/fig/mc_ldo_closeloop.png')
plt.close()


plt.figure(figsize=(10, 5))
plt.subplot(1,2,1)
MC_ldo_pm(simulations_path+'/mc_ldo_pm.csv')
plt.subplot(1,2,2)
MC_ldo_olgain(simulations_path+'/mc_ldo_olgain.csv')

plt.savefig(home_dir+'/results/fig/mc_ldo_openloop.png')
plt.close()