# Enter your Python code here
import pathlib
import sys
import klayout.db
import pya

LIB = "SG13_dev"
lib = pya.Library.library_by_name(LIB)

layout = klayout.db.Layout(True)
layout.dbu = 0.001
top_cell = layout.cell(layout.add_cell("gallery"))

for i in range(4):
    pcell_decl = lib.layout().pcell_declaration("pmos")
    params = pcell_decl.params_as_hash(pcell_decl.get_parameters())
    pcell = layout.add_pcell_variant(
        lib, pcell_decl.id(), {"w": "2000u", "l": "0.5u", "ng": "125"}
    )
    cell = layout.cell(pcell)
    bbox = cell.bbox()
    xstep = 0
    top_cell.insert(
        klayout.db.CellInstArray(
            pcell, klayout.db.Trans(klayout.db.Point(xstep, 30120 * i))
        )
    )

output = (
    "/workspaces/usm-vlsi-tools/shared_xserver/ihp_design/klayout/gds/inst_test.gds"
)
pathlib.Path(output).parent.mkdir(parents=True, exist_ok=True)
layout.write(output)
