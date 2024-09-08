import sys
import os
import subprocess
import matplotlib.pyplot as plt

home_dir = os.environ["HOME_DIR"]
pdk_root = os.environ["PDK_ROOT"]
pdk = os.environ["PDK"]
xschemrc = os.path.join(pdk_root, pdk, "libs.tech/xschem/xschemrc")
sch_dir = os.path.join(home_dir, "xschem/ota")
simulations_path = os.path.join(sch_dir, "simulations")

sys.path.append(home_dir + "/python")

from sim_script import get_netlist, simulate, open_xschem
from sim_plot import sim_plot

if not os.path.exists(simulations_path):
    os.makedirs(simulations_path)

simulations = ["ota_tb_openloop"]
for sim in simulations:
    print("Generating " + sim + " netlist from schematic")
    get_netlist(pdk_root, pdk, sim + ".sch", simulations_path, 0)

for sim in simulations:
    print("Simulating " + sim + " with nspice")
    simulate(simulations_path, sim + ".spice")

os.makedirs(home_dir + "/results/fig/", exist_ok=True)

plt.figure(figsize=(6, 5))
plt.subplot(1, 1, 1)
sim_plot(
    simulations_path + "/ota_tb_openloop_ac.csv",
    "vdb(vout) Phase",
    "Frequency (Hz)",
    "Gain (dB) & Phase (degrees)",
    "log",
)
plt.savefig(home_dir + "/results/fig/ota_tb_openloop_ac.png")
plt.close()

subprocess.run(
    [
        "xschem",
        "--rcfile",
        xschemrc,
        sch_dir + "/ota_tb_openloop.sch",
        "--command",
        "xschem raw_read simulations/ota_tb_openloop_ac.raw ac",
    ]
)
