###
### No usar obsoleto
###
import arcpy
from arcpy import env  

# Set file paths
arcpy.env.workspace = "D:/Matias_Rebolledo/Raster"
in_raster = "Pixel25Norm/Transf_slope_px25.tif"
templateRaster = "previos/Clas_geo_clip.tif"
out_raster = "Pixel25Alte/Transf_slope_px25_borrame.tif"

# Set 'Snap raster' and 'Extent' environment variables
arcpy.env.extent = arcpy.sa.Raster(templateRaster).extent
arcpy.env.snapRaster = templateRaster

# Get cell size from template raster (which is 1 m)
cellsizeX = arcpy.Describe(templateRaster).children[0].meanCellWidth
cellsizeY = arcpy.Describe(templateRaster).children[0].meanCellHeight
cellsize = str(cellsizeX) + " " + str(cellsizeY)

# Resample input raster
arcpy.Resample_management(in_raster, out_raster, cellsize)

# Print environment extent
print arcpy.env.extent

# Print extent of the output raster
print arcpy.sa.Raster(out_raster).extent
