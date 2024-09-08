import sys
import os
import subprocess
import matplotlib.pyplot as plt

home_dir = os.environ['HOME_DIR']
pdk_root = os.environ['PDK_ROOT']
pdk = os.environ['PDK']
xschemrc = os.path.join(pdk_root, pdk, 'libs.tech/xschem/xschemrc')
print(xschemrc)
sch_dir = os.path.join(home_dir, 'xschem/ldo')
simulations_path = os.path.join(sch_dir, 'simulations')

sys.path.append(home_dir + '/python')

from sim_script import get_netlist, simulate, open_xschem
from sim_plot import sim_plot

if not os.path.exists(simulations_path):
    os.makedirs(simulations_path)

simulations = ['ldo_tb_closeloop', 'ldo_tb_openloop']
for sim in simulations:
	print("Generating "+sim+" netlist from schematic")
	get_netlist(pdk_root, pdk, sim+'.sch', simulations_path, 0)	
	
for sim in simulations:
	print("Simulating "+sim+" with nspice")
	simulate(simulations_path, sim+'.spice')

plt.figure(figsize=(15, 13)) 
plt.subplot(2,2,1)
sim_plot(simulations_path+'/ldo_tb_closeloop_ac.csv', 'vdb(vout) Phase', 'Frequency (Hz)', 'Psrr (dB) & Phase (degrees)','log')
plt.subplot(2,2,2)
sim_plot(simulations_path+'/ldo_tb_closeloop_dc.csv', 'v(vdd) v(vcm) v(x1.pos) v(vout)', 'Voltage (V)', 'Voltage (V)')
plt.subplot(2,2,3)
sim_plot(simulations_path+'/ldo_tb_closeloop_load.csv', 'i(Vmeas) v(vout)-1.2', 'Time (s)', 'Voltage (mV) & Current (mA)')
plt.subplot(2,2,4)
sim_plot(simulations_path+'/ldo_tb_closeloop_settime.csv', 'v(vdd) v(vout)', 'Time (s)', 'Voltage (V)')
#plot(simulations_path+'/ldo_tb_closeloop_tran.csv', 'v(vout) v(x1.pos) v(vcm) v(vdd)', 'Time (s)', 'Voltage (V)')
plt.savefig(home_dir+'/results/fig/ldo_tb_closeloop.png')
plt.close()

plt.figure(figsize=(6, 5))
plt.subplot(1,1,1)
sim_plot(simulations_path+'/ldo_tb_openloop_ac.csv', 'vdb(vout) Phase', 'Frequency (Hz)', 'Gain (dB) & Phase (degrees)','log')
plt.savefig(home_dir+'/results/fig/ldo_tb_openloop.png')
plt.close()

#open_xschem(pdk_root, pdk, 'ldo_tb_closeloop.sch', 0)

subprocess.run(["xschem", "--rcfile", xschemrc, sch_dir+'/ldo_tb_closeloop.sch', "--command", 'xschem raw_read simulations/ldo_tb_closeloop_tran.raw tran'])
subprocess.run(["xschem", "--rcfile", xschemrc, sch_dir+'/ldo_tb_openloop.sch', "--command", 'xschem raw_read simulations/ldo_tb_openloop_ac.raw ac'])
