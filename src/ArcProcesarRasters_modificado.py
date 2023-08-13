###
### Corresponde al modificado de ArcProcesarRasters.py usando shp para corte y gdalwarp en vez de Resample_management
### Falta rasterizar capa shp y obtener su nuevo extent para usar como argumento en la funcion clip
### copiar capa shp original a carpeta personal y desde alli rasterizar, luego inspeccionar su extent
### El proceso de corte clip con arcpy resultó ser muy lento para este caso, usaremos gdal finalmente en paso 01
###

### Cambiar extent a cluster y grabar en disco
import arcpy
arcpy.env.workspace = "D:/Matias_Rebolledo/Raster/Capas2018"
arcpy.env.outputCoordinateSystem = arcpy.SpatialReference("WGS 1984 UTM Zone 19S")
#arcpy.env.snapRaster = "D:/Matias_Rebolledo/Raster/Capas2018/previos/Clas_geo_clip.tif"
#arcpy.env.snapRaster = "D:/Matias_Rebolledo/Raster/previos/Clas_geo_1.tif"

### rasterizar para obtener su extent
arcpy.FeatureToRaster_conversion( "Mascara_cuadricula/Mascara_cuadricula.shp"               , "ID" , "Mascara_cuadricula/Mascara_cuadricula.tif"          , "28" )

### mkdir -p Pixel25Mask Pixel25MaskSample

### Paso 01 usamos shp de corte, cambiamos carpetas
arcpy.Clip_management( "Pixel25Norm/Transf_slope_px25.tif"        , "238007.442503727 6208447.82336885 421043.442503727 6355727.82336885" , "Pixel25Mask/Transf_slope_px25_mask.tif"        , "Mascara_cuadricula/Mascara_cuadricula.shp" , "#" , "ClippingGeometry" )
arcpy.Clip_management( "Pixel25Norm/Transf_DEM_px25.tif"          , "238007.442503727 6208447.82336885 421043.442503727 6355727.82336885" , "Pixel25Mask/Transf_DEM_px25_mask.tif"          , "Mascara_cuadricula/Mascara_cuadricula.shp" , "#" , "ClippingGeometry" )
arcpy.Clip_management( "Pixel25Norm/Transf_TRI_px25.tif"          , "238007.442503727 6208447.82336885 421043.442503727 6355727.82336885" , "Pixel25Mask/Transf_TRI_px25_mask.tif"          , "Mascara_cuadricula/Mascara_cuadricula.shp" , "#" , "ClippingGeometry" )
arcpy.Clip_management( "Pixel25Norm/Transf_asp_x_px25.tif"        , "238007.442503727 6208447.82336885 421043.442503727 6355727.82336885" , "Pixel25Mask/Transf_asp_x_px25_mask.tif"        , "Mascara_cuadricula/Mascara_cuadricula.shp" , "#" , "ClippingGeometry" )
arcpy.Clip_management( "Pixel25Norm/Transf_asp_y_px25.tif"        , "238007.442503727 6208447.82336885 421043.442503727 6355727.82336885" , "Pixel25Mask/Transf_asp_y_px25_mask.tif"        , "Mascara_cuadricula/Mascara_cuadricula.shp" , "#" , "ClippingGeometry" )
arcpy.Clip_management( "Pixel25Norm/Transf_carbono_2013_px25.tif" , "238007.442503727 6208447.82336885 421043.442503727 6355727.82336885" , "Pixel25Mask/Transf_carbono_2013_px25_mask.tif" , "Mascara_cuadricula/Mascara_cuadricula.shp" , "#" , "ClippingGeometry" )

### Paso 02 usar gdalwarp
