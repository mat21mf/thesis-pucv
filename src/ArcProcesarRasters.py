### Falta una modificacion en la funcion clip_management consiste en usar shp como area de corte
### Luego falta reemplazar Resample_management con la funcion gdalwarp puesto que hace lo mismo sin necesidad de arcpy
### Todas las capas paso01 y paso02 fueron eliminadas

### Cambiar extent a cluster y grabar en disco
import arcpy
arcpy.env.workspace = "D:/Matias_Rebolledo/Raster"
arcpy.env.snapRaster = "D:/Matias_Rebolledo/Raster/previos/Clas_geo_clip.tif"
#arcpy.env.snapRaster = "D:/Matias_Rebolledo/Raster/previos/Clas_geo_1.tif"

### Paso 01 el extent queda aproximado asi como nrow y ncol aproximado
arcpy.Clip_management( "Pixel25Norm/Transf_slope_px25.tif"               , "237577.3 6206070 403924.8 6355836" , "Pixel25Clip/Transf_slope_px25_paso01.tif"        , "D:/Matias_Rebolledo/Raster/previos/Clas_geo_clip.tif" , "#" , "NONE" )
arcpy.Clip_management( "Pixel25Norm/Transf_DEM_px25.tif"                 , "237577.3 6206070 403924.8 6355836" , "Pixel25Clip/Transf_DEM_px25_paso01.tif"          , "D:/Matias_Rebolledo/Raster/previos/Clas_geo_clip.tif" , "#" , "NONE" )
arcpy.Clip_management( "Pixel25Norm/Transf_TRI_px25.tif"                 , "237577.3 6206070 403924.8 6355836" , "Pixel25Clip/Transf_TRI_px25_paso01.tif"          , "D:/Matias_Rebolledo/Raster/previos/Clas_geo_clip.tif" , "#" , "NONE" )
arcpy.Clip_management( "Pixel25Norm/Transf_asp_x_px25.tif"               , "237577.3 6206070 403924.8 6355836" , "Pixel25Clip/Transf_asp_x_px25_paso01.tif"        , "D:/Matias_Rebolledo/Raster/previos/Clas_geo_clip.tif" , "#" , "NONE" )
arcpy.Clip_management( "Pixel25Norm/Transf_asp_y_px25.tif"               , "237577.3 6206070 403924.8 6355836" , "Pixel25Clip/Transf_asp_y_px25_paso01.tif"        , "D:/Matias_Rebolledo/Raster/previos/Clas_geo_clip.tif" , "#" , "NONE" )
arcpy.Clip_management( "Pixel25Norm/Transf_carbono_2013_px25.tif"        , "237577.3 6206070 403924.8 6355836" , "Pixel25Clip/Transf_carbono_2013_px25_paso01.tif" , "D:/Matias_Rebolledo/Raster/previos/Clas_geo_clip.tif" , "#" , "NONE" )

### Paso 01 remuestrear en arcpy
arcpy.Resample_management( "Pixel25Clip/Transf_slope_px25_paso01.tif"        , "Pixel25Clip/Transf_slope_px25_paso01_remu01.tif"        , "25.3 25.40133" , "NEAREST" )
arcpy.Resample_management( "Pixel25Clip/Transf_DEM_px25_paso01.tif"          , "Pixel25Clip/Transf_DEM_px25_paso01_remu01.tif"          , "25.3 25.40133" , "NEAREST" )
arcpy.Resample_management( "Pixel25Clip/Transf_TRI_px25_paso01.tif"          , "Pixel25Clip/Transf_TRI_px25_paso01_remu01.tif"          , "25.3 25.40133" , "NEAREST" )
arcpy.Resample_management( "Pixel25Clip/Transf_asp_x_px25_paso01.tif"        , "Pixel25Clip/Transf_asp_x_px25_paso01_remu01.tif"        , "25.3 25.40133" , "NEAREST" )
arcpy.Resample_management( "Pixel25Clip/Transf_asp_y_px25_paso01.tif"        , "Pixel25Clip/Transf_asp_y_px25_paso01_remu01.tif"        , "25.3 25.40133" , "NEAREST" )
arcpy.Resample_management( "Pixel25Clip/Transf_carbono_2013_px25_paso01.tif" , "Pixel25Clip/Transf_carbono_2013_px25_paso01_remu01.tif" , "25.3 25.40133" , "NEAREST" )

### Clip cluster esperar
arcpy.Clip_management( "D:/Matias_Rebolledo/Raster/previos/Clas_geo_clip.tif" , "" , "D:/Matias_Rebolledo/Raster/previos/Clas_geo_clip_paso01.tif" , "#" , "NONE" , "MANTAIN_EXTENT" )

### Paso 02 el extent queda aproximado asi como nrow y ncol aproximado no quiere
arcpy.Clip_management( "Pixel25Clip/Transf_slope_px25_paso01.tif"        , "237577.3 6206070 403924.8 6355836" , "Pixel25Clip/Transf_slope_px25_paso02.tif"        , "D:/Matias_Rebolledo/Raster/previos/Clas_geo_clip.tif" , "#" , "NONE" , "MANTAIN_EXTENT" )
arcpy.Clip_management( "Pixel25Clip/Transf_DEM_px25_paso01.tif"          , "237577.3 6206070 403924.8 6355836" , "Pixel25Clip/Transf_DEM_px25_paso02.tif"          , "D:/Matias_Rebolledo/Raster/previos/Clas_geo_clip.tif" , "#" , "NONE" , "MANTAIN_EXTENT" )
arcpy.Clip_management( "Pixel25Clip/Transf_TRI_px25_paso01.tif"          , "237577.3 6206070 403924.8 6355836" , "Pixel25Clip/Transf_TRI_px25_paso02.tif"          , "D:/Matias_Rebolledo/Raster/previos/Clas_geo_clip.tif" , "#" , "NONE" , "MANTAIN_EXTENT" )
arcpy.Clip_management( "Pixel25Clip/Transf_asp_x_px25_paso01.tif"        , "237577.3 6206070 403924.8 6355836" , "Pixel25Clip/Transf_asp_x_px25_paso02.tif"        , "D:/Matias_Rebolledo/Raster/previos/Clas_geo_clip.tif" , "#" , "NONE" , "MANTAIN_EXTENT" )
arcpy.Clip_management( "Pixel25Clip/Transf_asp_y_px25_paso01.tif"        , "237577.3 6206070 403924.8 6355836" , "Pixel25Clip/Transf_asp_y_px25_paso02.tif"        , "D:/Matias_Rebolledo/Raster/previos/Clas_geo_clip.tif" , "#" , "NONE" , "MANTAIN_EXTENT" )
arcpy.Clip_management( "Pixel25Clip/Transf_carbono_2013_px25_paso01.tif" , "237577.3 6206070 403924.8 6355836" , "Pixel25Clip/Transf_carbono_2013_px25_paso02.tif" , "D:/Matias_Rebolledo/Raster/previos/Clas_geo_clip.tif" , "#" , "NONE" , "MANTAIN_EXTENT" )

### Revisar propiedades paso 01
arcpy.GetRasterProperties_management( "Pixel25Clip/Transf_slope_px25_paso01.tif"        , "ROWCOUNT" ) ; arcpy.GetRasterProperties_management( "Pixel25Clip/Transf_slope_px25_paso01.tif"        , "COLUMNCOUNT" )
arcpy.GetRasterProperties_management( "Pixel25Clip/Transf_DEM_px25_paso01.tif"          , "ROWCOUNT" ) ; arcpy.GetRasterProperties_management( "Pixel25Clip/Transf_DEM_px25_paso01.tif"          , "COLUMNCOUNT" )
arcpy.GetRasterProperties_management( "Pixel25Clip/Transf_TRI_px25_paso01.tif"          , "ROWCOUNT" ) ; arcpy.GetRasterProperties_management( "Pixel25Clip/Transf_TRI_px25_paso01.tif"          , "COLUMNCOUNT" )
arcpy.GetRasterProperties_management( "Pixel25Clip/Transf_asp_x_px25_paso01.tif"        , "ROWCOUNT" ) ; arcpy.GetRasterProperties_management( "Pixel25Clip/Transf_asp_x_px25_paso01.tif"        , "COLUMNCOUNT" )
arcpy.GetRasterProperties_management( "Pixel25Clip/Transf_asp_y_px25_paso01.tif"        , "ROWCOUNT" ) ; arcpy.GetRasterProperties_management( "Pixel25Clip/Transf_asp_y_px25_paso01.tif"        , "COLUMNCOUNT" )
arcpy.GetRasterProperties_management( "Pixel25Clip/Transf_carbono_2013_px25_paso01.tif" , "ROWCOUNT" ) ; arcpy.GetRasterProperties_management( "Pixel25Clip/Transf_carbono_2013_px25_paso01.tif" , "COLUMNCOUNT" )

arcpy.Describe( "Pixel25Clip/Transf_slope_px25_paso01.tif"        ).extent.XMax ; arcpy.Describe( "Pixel25Clip/Transf_slope_px25_paso01.tif"        ).extent.XMin ; arcpy.Describe( "Pixel25Clip/Transf_slope_px25_paso01.tif"        ).extent.YMax ; arcpy.Describe( "Pixel25Clip/Transf_slope_px25_paso01.tif"        ).extent.YMin ;
arcpy.Describe( "Pixel25Clip/Transf_DEM_px25_paso01.tif"          ).extent.XMax ; arcpy.Describe( "Pixel25Clip/Transf_DEM_px25_paso01.tif"          ).extent.XMin ; arcpy.Describe( "Pixel25Clip/Transf_DEM_px25_paso01.tif"          ).extent.YMax ; arcpy.Describe( "Pixel25Clip/Transf_DEM_px25_paso01.tif"          ).extent.YMin ;
arcpy.Describe( "Pixel25Clip/Transf_TRI_px25_paso01.tif"          ).extent.XMax ; arcpy.Describe( "Pixel25Clip/Transf_TRI_px25_paso01.tif"          ).extent.XMin ; arcpy.Describe( "Pixel25Clip/Transf_TRI_px25_paso01.tif"          ).extent.YMax ; arcpy.Describe( "Pixel25Clip/Transf_TRI_px25_paso01.tif"          ).extent.YMin ;
arcpy.Describe( "Pixel25Clip/Transf_asp_x_px25_paso01.tif"        ).extent.XMax ; arcpy.Describe( "Pixel25Clip/Transf_asp_x_px25_paso01.tif"        ).extent.XMin ; arcpy.Describe( "Pixel25Clip/Transf_asp_x_px25_paso01.tif"        ).extent.YMax ; arcpy.Describe( "Pixel25Clip/Transf_asp_x_px25_paso01.tif"        ).extent.YMin ;
arcpy.Describe( "Pixel25Clip/Transf_asp_y_px25_paso01.tif"        ).extent.XMax ; arcpy.Describe( "Pixel25Clip/Transf_asp_y_px25_paso01.tif"        ).extent.XMin ; arcpy.Describe( "Pixel25Clip/Transf_asp_y_px25_paso01.tif"        ).extent.YMax ; arcpy.Describe( "Pixel25Clip/Transf_asp_y_px25_paso01.tif"        ).extent.YMin ;
arcpy.Describe( "Pixel25Clip/Transf_carbono_2013_px25_paso01.tif" ).extent.XMax ; arcpy.Describe( "Pixel25Clip/Transf_carbono_2013_px25_paso01.tif" ).extent.XMin ; arcpy.Describe( "Pixel25Clip/Transf_carbono_2013_px25_paso01.tif" ).extent.YMax ; arcpy.Describe( "Pixel25Clip/Transf_carbono_2013_px25_paso01.tif" ).extent.YMin ;

###
### script R paso 01 remuestrear 01 RemuestrearRasters.R y sincronizar
###

### Paso 02
arcpy.Clip_management( "Pixel25Clip/Transf_slope_px25_paso01_resam01.tif"        , "237577.3 6206070 403924.8 6355836" , "Pixel25Clip/Transf_slope_px25_paso02.tif"        , "#" , "#" , "NONE" )
arcpy.Clip_management( "Pixel25Clip/Transf_DEM_px25_paso01_resam01.tif"          , "237577.3 6206070 403924.8 6355836" , "Pixel25Clip/Transf_DEM_px25_paso02.tif"          , "#" , "#" , "NONE" )
arcpy.Clip_management( "Pixel25Clip/Transf_TRI_px25_paso01_resam01.tif"          , "237577.3 6206070 403924.8 6355836" , "Pixel25Clip/Transf_TRI_px25_paso02.tif"          , "#" , "#" , "NONE" )
arcpy.Clip_management( "Pixel25Clip/Transf_asp_x_px25_paso01_resam01.tif"        , "237577.3 6206070 403924.8 6355836" , "Pixel25Clip/Transf_asp_x_px25_paso02.tif"        , "#" , "#" , "NONE" )
arcpy.Clip_management( "Pixel25Clip/Transf_asp_y_px25_paso01_resam01.tif"        , "237577.3 6206070 403924.8 6355836" , "Pixel25Clip/Transf_asp_y_px25_paso02.tif"        , "#" , "#" , "NONE" )
arcpy.Clip_management( "Pixel25Clip/Transf_carbono_2013_px25_paso01_resam01.tif" , "237577.3 6206070 403924.8 6355836" , "Pixel25Clip/Transf_carbono_2013_px25_paso02.tif" , "#" , "#" , "NONE" )

### Revisar propiedades paso 02
arcpy.GetRasterProperties_management( "Pixel25Clip/Transf_slope_px25_paso02.tif"        , "ROWCOUNT" ) ; arcpy.GetRasterProperties_management( "Pixel25Clip/Transf_slope_px25_paso02.tif"        , "COLUMNCOUNT" )
arcpy.GetRasterProperties_management( "Pixel25Clip/Transf_DEM_px25_paso02.tif"          , "ROWCOUNT" ) ; arcpy.GetRasterProperties_management( "Pixel25Clip/Transf_DEM_px25_paso02.tif"          , "COLUMNCOUNT" )
arcpy.GetRasterProperties_management( "Pixel25Clip/Transf_TRI_px25_paso02.tif"          , "ROWCOUNT" ) ; arcpy.GetRasterProperties_management( "Pixel25Clip/Transf_TRI_px25_paso02.tif"          , "COLUMNCOUNT" )
arcpy.GetRasterProperties_management( "Pixel25Clip/Transf_asp_x_px25_paso02.tif"        , "ROWCOUNT" ) ; arcpy.GetRasterProperties_management( "Pixel25Clip/Transf_asp_x_px25_paso02.tif"        , "COLUMNCOUNT" )
arcpy.GetRasterProperties_management( "Pixel25Clip/Transf_asp_y_px25_paso02.tif"        , "ROWCOUNT" ) ; arcpy.GetRasterProperties_management( "Pixel25Clip/Transf_asp_y_px25_paso02.tif"        , "COLUMNCOUNT" )
arcpy.GetRasterProperties_management( "Pixel25Clip/Transf_carbono_2013_px25_paso02.tif" , "ROWCOUNT" ) ; arcpy.GetRasterProperties_management( "Pixel25Clip/Transf_carbono_2013_px25_paso02.tif" , "COLUMNCOUNT" )

### Remuestrear capa cluster para que quede con nrow y ncol identico a las demas

### Retirar capas de paso 01 para ahorrar espacio
arcpy.Delete_management( "Pixel25Clip/Transf_slope_px25_paso01.tif"        )
arcpy.Delete_management( "Pixel25Clip/Transf_DEM_px25_paso01.tif"          )
arcpy.Delete_management( "Pixel25Clip/Transf_TRI_px25_paso01.tif"          )
arcpy.Delete_management( "Pixel25Clip/Transf_asp_x_px25_paso01.tif"        )
arcpy.Delete_management( "Pixel25Clip/Transf_asp_y_px25_paso01.tif"        )
arcpy.Delete_management( "Pixel25Clip/Transf_carbono_2013_px25_paso01.tif" )

### Retirar capas de paso 01 para ahorrar espacio
arcpy.Delete_management( "Pixel25Clip/Transf_slope_px25_paso02.tif"        )
arcpy.Delete_management( "Pixel25Clip/Transf_DEM_px25_paso02.tif"          )
arcpy.Delete_management( "Pixel25Clip/Transf_TRI_px25_paso02.tif"          )
arcpy.Delete_management( "Pixel25Clip/Transf_asp_x_px25_paso02.tif"        )
arcpy.Delete_management( "Pixel25Clip/Transf_asp_y_px25_paso02.tif"        )
arcpy.Delete_management( "Pixel25Clip/Transf_carbono_2013_px25_paso02.tif" )


###
### Ejemplos
###
### import arcpy
### arcpy.Clip_management(
###     "c:/data/image.tif","1952602 294196 1953546 296176",
###     "c:/data/clip.gdb/clip01", "#", "#", "NONE", "NO_MAINTAIN_EXTENT")
###
### ##Clip Raster Dataset by known extent - Left Bottom Right Top
###
### import arcpy
### arcpy.env.workspace = "C:/Workspace"
###
###
### arcpy.Clip_management(
###     "image.tif","1952602.23 294196.279 1953546.23 296176.279",
###     "clip.gdb/clip", "#", "#", "NONE")
