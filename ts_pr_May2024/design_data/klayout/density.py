import pya
outputTxt = "out.txt"
filePaths = ["vias.gds"]
results   = []
for filePath in filePaths:
    layout   = pya.Layout()
    layerMap = layout.read(filePath)
    topCells = [cell for cell in layout.top_cells()]
    unit     = layout.dbu

    for cell in topCells:
        for layer_id in layout.layer_indexes():
            info   = layout.get_info(layer_id)
            region = pya.Region([rsi.shape().polygon.transformed(rsi.trans()) for rsi in cell.begin_shapes_rec(layer_id) if rsi.shape().polygon])
            result = f"{filePath}, {cell.name}, L({info.layer}, {info.datatype}), {region.merged().area()*unit*unit : .3f} um-sq"
            results.append(result)

resultsStr = "\n".join(results)

print(resultsStr)
f = open(outputTxt, "x")
with f : f.write(resultsStr)
