import os
import subprocess
import sys

def get_netlist(pdk_root, pdk, schemfilename, netlist_path, debug):
        #schematic netlist extraction

        # Xschem arguments:
        # -n:  Generate a netlist
        # -s:  Netlist type is SPICE
        # -r:  Bypass readline (because stdin/stdout are piped)
        # -x:  No X11 / No GUI window
        # -q:  Quit after processing command line

        xschemargs = ['xschem', '-n', '-s', '-r', '-x', '-q']

        # Use the PDK xschemrc file for xschem startup
        xschemrcfile = os.path.join(
            pdk_root, pdk, 'libs.tech', 'xschem', 'xschemrc'
        )
        if os.path.isfile(xschemrcfile):
            xschemargs.extend(['--rcfile', xschemrcfile])
        else:
            print('Error:  No xschemrc file found in the ' + pdk + ' PDK!')

        xschemargs.extend(['-o', netlist_path])
        xschemargs.append(schemfilename)
        if debug:
            print('Executing: ' + ' '.join(xschemargs))

        xproc = subprocess.Popen(
            xschemargs,
            stdout=subprocess.PIPE,
            stderr=subprocess.STDOUT,
        )

        xout = xproc.communicate()[0]
        if xproc.returncode != 0:
            for line in xout.splitlines():
                print(line.decode('utf-8'))

            print(
                'Xschem process returned error code '
                + str(xproc.returncode)
                + '\n'
            )
        else:
            pass
        
        return 0
        
def open_xschem(pdk_root, pdk, schemfilename, debug):
        #schematic netlist extraction

        # Xschem arguments:
        # -n:  Generate a netlist
        # -s:  Netlist type is SPICE
        # -r:  Bypass readline (because stdin/stdout are piped)
        # -x:  No X11 / No GUI window
        # -q:  Quit after processing command line

        xschemargs = ['xschem']

        # Use the PDK xschemrc file for xschem startup
        xschemrcfile = os.path.join(
            pdk_root, pdk, 'libs.tech', 'xschem', 'xschemrc'
        )
        if os.path.isfile(xschemrcfile):
            xschemargs.extend(['--rcfile', xschemrcfile])
        else:
            print('Error:  No xschemrc file found in the ' + pdk + ' PDK!')

        #xschemargs.extend(['-o', netlist_path])
        xschemargs.append(schemfilename)
        if debug:
            print('Executing: ' + ' '.join(xschemargs))

        xproc = subprocess.Popen(
            xschemargs,
            stdin=subprocess.PIPE,
            stdout=subprocess.PIPE,
            stderr=subprocess.STDOUT,
        )
        
        #xproc.stdin.write('xschem ' + xschemfilename + '\n')

        xout = xproc.communicate()[0]
        if xproc.returncode != 0:
            for line in xout.splitlines():
                print(line.decode('utf-8'))

            print(
                'Xschem process returned error code '
                + str(xproc.returncode)
                + '\n'
            )
        else:
            pass
        
        return 0
        
def simulate(sim_path, filename):

        with subprocess.Popen(
            ['ngspice', '-b',filename],
            stdout=subprocess.PIPE,
            stderr=subprocess.STDOUT,
            cwd=sim_path,
            bufsize=1,
            start_new_session=True,
            universal_newlines=True,
        ) as spiceproc:
            pgroup = os.getpgid(spiceproc.pid)
            for line in spiceproc.stdout:
                print(line, end='')
                sys.stdout.flush()
                if 'Simulation interrupted' in line:
                    print('ngspice encountered an error. . . ending.')
                    spiceproc.kill()

        spiceproc.stdout.close()
        return_code = spiceproc.wait()
        if return_code != 0:
            print('Error:  ngspice exited with non-zero status!')
