###
### No usar obsoleto
###
### Cambiar extent a cluster y grabar en disco
import arcpy
arcpy.env.workspace = "D:/Matias_Rebolledo/Raster"
#arcpy.env.snapRaster = "D:/Matias_Rebolledo/Raster/previos/Clas_geo_clip.tif"
arcpy.env.snapRaster = "D:/Matias_Rebolledo/Raster/previos/Clas_geo_1.tif"

### versus extent de las demas capas                                        228621 6200647 435696 6359697
### Paso 01 el extent queda aproximado asi como nrow y ncol aproximado:     230670 6200769 403925 6359316
arcpy.Clip_management( "Pixel25Norm/Transf_slope_px25.tif"               , "230670 6200769 403925 6359316" , "Pixel25Alte/Transf_slope_px25_borrame.tif"        , "D:/Matias_Rebolledo/Raster/previos/Clas_geo_1.tif" , "#" , "NONE" )
arcpy.Clip_management( "Pixel25Norm/Transf_DEM_px25.tif"                 , "230670 6200769 403925 6359316" , "Pixel25Alte/Transf_DEM_px25_borrame.tif"          , "D:/Matias_Rebolledo/Raster/previos/Clas_geo_1.tif" , "#" , "NONE" )
arcpy.Clip_management( "Pixel25Norm/Transf_TRI_px25.tif"                 , "230670 6200769 403925 6359316" , "Pixel25Alte/Transf_TRI_px25_borrame.tif"          , "D:/Matias_Rebolledo/Raster/previos/Clas_geo_1.tif" , "#" , "NONE" )
arcpy.Clip_management( "Pixel25Norm/Transf_asp_x_px25.tif"               , "230670 6200769 403925 6359316" , "Pixel25Alte/Transf_asp_x_px25_borrame.tif"        , "D:/Matias_Rebolledo/Raster/previos/Clas_geo_1.tif" , "#" , "NONE" )
arcpy.Clip_management( "Pixel25Norm/Transf_asp_y_px25.tif"               , "230670 6200769 403925 6359316" , "Pixel25Alte/Transf_asp_y_px25_borrame.tif"        , "D:/Matias_Rebolledo/Raster/previos/Clas_geo_1.tif" , "#" , "NONE" )
arcpy.Clip_management( "Pixel25Norm/Transf_carbono_2013_px25.tif"        , "230670 6200769 403925 6359316" , "Pixel25Alte/Transf_carbono_2013_px25_borrame.tif" , "D:/Matias_Rebolledo/Raster/previos/Clas_geo_1.tif" , "#" , "NONE" )

### borrar
arcpy.Delete_management( "Pixel25Alte/Transf_slope_px25_borrame.tif"        )
arcpy.Delete_management( "Pixel25Alte/Transf_DEM_px25_borrame.tif"          )
arcpy.Delete_management( "Pixel25Alte/Transf_TRI_px25_borrame.tif"          )
arcpy.Delete_management( "Pixel25Alte/Transf_asp_x_px25_borrame.tif"        )
arcpy.Delete_management( "Pixel25Alte/Transf_asp_y_px25_borrame.tif"        )
arcpy.Delete_management( "Pixel25Alte/Transf_carbono_2013_px25_borrame.tif" )
