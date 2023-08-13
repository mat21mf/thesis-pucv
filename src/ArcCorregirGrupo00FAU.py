### pendiente
### no ejecutar
### corregir grupo00 y grupo04

### definir variables entorno
import arcpy
arcpy.env.workspace = "D:/BIOTOPOS/CapasFAU/Pisos"
arcpy.env.outputCoordinateSystem = arcpy.SpatialReference("WGS 1984 UTM Zone 19S")

### quitar capas grupo00
arcpy.Delete_management( "D:/Matias_Rebolledo/Raster/CapasFAU/Pisos/Pisos_2018autm19_ClipGEFcomun__grupo00.shp" )
arcpy.Delete_management( "D:/Matias_Rebolledo/Raster/CapasFAU/Pisos/Pisos_2018autm19_ClipGEFcomun__grupo00.tif" )

### grupo00
arcpy.Select_analysis( "Pisos_2018autm19_ClipGEFcomun.shp" , "D:/Matias_Rebolledo/Raster/CapasFAU/Pisos/Pisos_2018autm19_ClipGEFcomun__grupo00.shp" , '"CODIGO" = \'P34\' OR "CODIGO" = \'P39\' OR "CODIGO" = \'P40\' OR "CODIGO" = \'P46\' OR "CODIGO" = \'P110\' OR "CODIGO" = \'P32\' OR "CODIGO" = \'P33\' OR "CODIGO" = \'P41\' OR "CODIGO" = \'P27\' OR "CODIGO" = \'P38\' OR "CODIGO" = \'P111\' OR "CODIGO" = \'P112\' OR "CODIGO" = \'P118\' OR "CODIGO" = \'SV\'' )
arcpy.FeatureToRaster_conversion( "D:/Matias_Rebolledo/Raster/CapasFAU/Pisos/Pisos_2018autm19_ClipGEFcomun__grupo00.shp" , "CODIGO" , "D:/Matias_Rebolledo/Raster/CapasFAU/Pisos/Pisos_2018autm19_ClipGEFcomun__grupo00.tif" , "28" )

### definir variables entorno
import arcpy
arcpy.env.workspace = "D:/Matias_Rebolledo/Raster/CapasFAU23_5"
arcpy.env.outputCoordinateSystem = arcpy.SpatialReference("WGS 1984 UTM Zone 19S")

### quitar capas grupo00
arcpy.Delete_management( "grupo00Mask/Aspect__grupo00_mask.tif" )
arcpy.Delete_management( "grupo00Mask/DEM__grupo00_mask.tif"    )
arcpy.Delete_management( "grupo00Mask/NDMI__grupo00_mask.tif"   )
arcpy.Delete_management( "grupo00Mask/Slope__grupo00_mask.tif"  )
#####.Delete_management( "grupo00Mask/TRI__grupo00_mask.tif"    )
arcpy.Delete_management( "grupo00Mask/TWI__grupo00_mask.tif"    )

### cortar grupo00 equivale a paso 01 (actualizar extent) pendiente
arcpy.Clip_management( "Aspect.tif"      , "237521.109400001 6205220.13528629 428313.109400001 6356028.13528629" , "grupo00Mask/Aspect__grupo00_mask.tif" , "Pisos/Pisos_2018autm19_ClipGEFcomun__grupo00.shp" , "#" , "ClippingGeometry" )
arcpy.Clip_management( "DEM_NoSinks.tif" , "237521.109400001 6205220.13528629 428313.109400001 6356028.13528629" , "grupo00Mask/DEM__grupo00_mask.tif"    , "Pisos/Pisos_2018autm19_ClipGEFcomun__grupo00.shp" , "#" , "ClippingGeometry" )
arcpy.Clip_management( "NDMI.tif"        , "237521.109400001 6205220.13528629 428313.109400001 6356028.13528629" , "grupo00Mask/NDMI__grupo00_mask.tif"   , "Pisos/Pisos_2018autm19_ClipGEFcomun__grupo00.shp" , "#" , "ClippingGeometry" )
arcpy.Clip_management( "Slope.tif"       , "237521.109400001 6205220.13528629 428313.109400001 6356028.13528629" , "grupo00Mask/Slope__grupo00_mask.tif"  , "Pisos/Pisos_2018autm19_ClipGEFcomun__grupo00.shp" , "#" , "ClippingGeometry" )
#####.Clip_management( "TRI.tif"         , "237521.109400001 6205220.13528629 428313.109400001 6356028.13528629" , "grupo00Mask/TRI__grupo00_mask.tif"    , "Pisos/Pisos_2018autm19_ClipGEFcomun__grupo00.shp" , "#" , "ClippingGeometry" )
arcpy.Clip_management( "TWI.tif"         , "237521.109400001 6205220.13528629 428313.109400001 6356028.13528629" , "grupo00Mask/TWI__grupo00_mask.tif"    , "Pisos/Pisos_2018autm19_ClipGEFcomun__grupo00.shp" , "#" , "ClippingGeometry" )

### definir variables entorno
import arcpy
arcpy.env.workspace = "D:/BIOTOPOS/CapasFAU/Pisos"
arcpy.env.outputCoordinateSystem = arcpy.SpatialReference("WGS 1984 UTM Zone 19S")

### quitar capas grupo04
arcpy.Delete_management( "D:/Matias_Rebolledo/Raster/CapasFAU/Pisos/Pisos_2018autm19_ClipGEFcomun__grupo04.shp" )
arcpy.Delete_management( "D:/Matias_Rebolledo/Raster/CapasFAU/Pisos/Pisos_2018autm19_ClipGEFcomun__grupo04.tif" )

### grupo04
arcpy.Select_analysis( "Pisos_2018autm19_ClipGEFcomun.shp" , "D:/Matias_Rebolledo/Raster/CapasFAU/Pisos/Pisos_2018autm19_ClipGEFcomun__grupo04.shp" , '"CODIGO" = \'P32\' OR "CODIGO" = \'P33\' OR "CODIGO" = \'P41\' OR "CODIGO" = \'P27\'' )
arcpy.FeatureToRaster_conversion( "D:/Matias_Rebolledo/Raster/CapasFAU/Pisos/Pisos_2018autm19_ClipGEFcomun__grupo04.shp" , "CODIGO" , "D:/Matias_Rebolledo/Raster/CapasFAU/Pisos/Pisos_2018autm19_ClipGEFcomun__grupo04.tif" , "28" )

### definir variables entorno
import arcpy
arcpy.env.workspace = "D:/Matias_Rebolledo/Raster/CapasFAU23_5"
arcpy.env.outputCoordinateSystem = arcpy.SpatialReference("WGS 1984 UTM Zone 19S")

### quitar capas grupo04
arcpy.Delete_management( "grupo04Mask/Aspect__grupo04_mask.tif" )
arcpy.Delete_management( "grupo04Mask/DEM__grupo04_mask.tif"    )
arcpy.Delete_management( "grupo04Mask/NDMI__grupo04_mask.tif"   )
arcpy.Delete_management( "grupo04Mask/Slope__grupo04_mask.tif"  )
#####.Delete_management( "grupo04Mask/TRI__grupo04_mask.tif"    )
arcpy.Delete_management( "grupo04Mask/TWI__grupo04_mask.tif"    )

### cortar grupo04 equivale a paso 01 (actualizar extent) pendiente
arcpy.Clip_management( "Aspect.tif"      , "300328.432000389 6241318.04869894 390992.432000389 6356034.04869894" , "grupo04Mask/Aspect__grupo04_mask.tif" , "Pisos/Pisos_2018autm19_ClipGEFcomun__grupo04.shp" , "#" , "ClippingGeometry" )
arcpy.Clip_management( "DEM_NoSinks.tif" , "300328.432000389 6241318.04869894 390992.432000389 6356034.04869894" , "grupo04Mask/DEM__grupo04_mask.tif"    , "Pisos/Pisos_2018autm19_ClipGEFcomun__grupo04.shp" , "#" , "ClippingGeometry" )
arcpy.Clip_management( "NDMI.tif"        , "300328.432000389 6241318.04869894 390992.432000389 6356034.04869894" , "grupo04Mask/NDMI__grupo04_mask.tif"   , "Pisos/Pisos_2018autm19_ClipGEFcomun__grupo04.shp" , "#" , "ClippingGeometry" )
arcpy.Clip_management( "Slope.tif"       , "300328.432000389 6241318.04869894 390992.432000389 6356034.04869894" , "grupo04Mask/Slope__grupo04_mask.tif"  , "Pisos/Pisos_2018autm19_ClipGEFcomun__grupo04.shp" , "#" , "ClippingGeometry" )
#####.Clip_management( "TRI.tif"         , "300328.432000389 6241318.04869894 390992.432000389 6356034.04869894" , "grupo04Mask/TRI__grupo04_mask.tif"    , "Pisos/Pisos_2018autm19_ClipGEFcomun__grupo04.shp" , "#" , "ClippingGeometry" )
arcpy.Clip_management( "TWI.tif"         , "300328.432000389 6241318.04869894 390992.432000389 6356034.04869894" , "grupo04Mask/TWI__grupo04_mask.tif"    , "Pisos/Pisos_2018autm19_ClipGEFcomun__grupo04.shp" , "#" , "ClippingGeometry" )
