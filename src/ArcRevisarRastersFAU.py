# ### definir variables entorno
# import arcpy
# arcpy.env.workspace = "D:/BIOTOPOS/CapasFAU/Pisos"
# arcpy.env.outputCoordinateSystem = arcpy.SpatialReference("WGS 1984 UTM Zone 19S")

# ### editado 23 de junio para correccion de grupo00 y grupo04
# ### modificaciones en el archigo: ArcCorregirGrupo00.py
# ### separar capa pisos en 6 grupos
# ###
# arcpy.Select_analysis( "Pisos_2018autm19_ClipGEFcomun.shp" , "D:/Matias_Rebolledo/Raster/CapasFAU/Pisos/Pisos_2018autm19_ClipGEFcomun__grupo01.shp" , '"CODIGO" = \'P34\''                                                )
# arcpy.Select_analysis( "Pisos_2018autm19_ClipGEFcomun.shp" , "D:/Matias_Rebolledo/Raster/CapasFAU/Pisos/Pisos_2018autm19_ClipGEFcomun__grupo02.shp" , '"CODIGO" = \'P39\'  OR "CODIGO" = \'P40\''                         )
# arcpy.Select_analysis( "Pisos_2018autm19_ClipGEFcomun.shp" , "D:/Matias_Rebolledo/Raster/CapasFAU/Pisos/Pisos_2018autm19_ClipGEFcomun__grupo03.shp" , '"CODIGO" = \'P46\'  OR "CODIGO" = \'P110\''                        )
  arcpy.Select_analysis( "Pisos_2018autm19_ClipGEFcomun.shp" , "D:/Matias_Rebolledo/Raster/CapasFAU/Pisos/Pisos_2018autm19_ClipGEFcomun__grupo04.shp" , '"CODIGO" = \'P32\'  OR "CODIGO" = \'P33\'  OR "CODIGO" = \'P41\''  )
# arcpy.Select_analysis( "Pisos_2018autm19_ClipGEFcomun.shp" , "D:/Matias_Rebolledo/Raster/CapasFAU/Pisos/Pisos_2018autm19_ClipGEFcomun__grupo05.shp" , '"CODIGO" = \'P38\'  OR "CODIGO" = \'P111\' OR "CODIGO" = \'P112\'' )
# arcpy.Select_analysis( "Pisos_2018autm19_ClipGEFcomun.shp" , "D:/Matias_Rebolledo/Raster/CapasFAU/Pisos/Pisos_2018autm19_ClipGEFcomun__grupo06.shp" , '"CODIGO" = \'P118\' OR "CODIGO" = \'SV\''                          )

# ### eliminar para volver a crear shp
# ###
# arcpy.Delete_management( "D:/Matias_Rebolledo/Raster/CapasFAU/Pisos/Pisos_2018autm19_ClipGEFcomun__grupo01.shp" )
# arcpy.Delete_management( "D:/Matias_Rebolledo/Raster/CapasFAU/Pisos/Pisos_2018autm19_ClipGEFcomun__grupo02.shp" )
# arcpy.Delete_management( "D:/Matias_Rebolledo/Raster/CapasFAU/Pisos/Pisos_2018autm19_ClipGEFcomun__grupo03.shp" )
  arcpy.Delete_management( "D:/Matias_Rebolledo/Raster/CapasFAU/Pisos/Pisos_2018autm19_ClipGEFcomun__grupo04.shp" )
# arcpy.Delete_management( "D:/Matias_Rebolledo/Raster/CapasFAU/Pisos/Pisos_2018autm19_ClipGEFcomun__grupo05.shp" )
# arcpy.Delete_management( "D:/Matias_Rebolledo/Raster/CapasFAU/Pisos/Pisos_2018autm19_ClipGEFcomun__grupo06.shp" )

# ### eliminar para volver a crear tif
# arcpy.Delete_management( "D:/Matias_Rebolledo/Raster/CapasFAU/Pisos/Pisos_2018autm19_ClipGEFcomun.tif"          )
# arcpy.Delete_management( "D:/Matias_Rebolledo/Raster/CapasFAU/Pisos/Pisos_2018autm19_ClipGEFcomun__grupo01.tif" )
# arcpy.Delete_management( "D:/Matias_Rebolledo/Raster/CapasFAU/Pisos/Pisos_2018autm19_ClipGEFcomun__grupo02.tif" )
# arcpy.Delete_management( "D:/Matias_Rebolledo/Raster/CapasFAU/Pisos/Pisos_2018autm19_ClipGEFcomun__grupo03.tif" )
  arcpy.Delete_management( "D:/Matias_Rebolledo/Raster/CapasFAU/Pisos/Pisos_2018autm19_ClipGEFcomun__grupo04.tif" )
# arcpy.Delete_management( "D:/Matias_Rebolledo/Raster/CapasFAU/Pisos/Pisos_2018autm19_ClipGEFcomun__grupo05.tif" )
# arcpy.Delete_management( "D:/Matias_Rebolledo/Raster/CapasFAU/Pisos/Pisos_2018autm19_ClipGEFcomun__grupo06.tif" )

# ### rasterizar cada grupo
# arcpy.FeatureToRaster_conversion( "Pisos_2018autm19_ClipGEFcomun.shp"                                                    , "CODIGO" , "D:/Matias_Rebolledo/Raster/CapasFAU/Pisos/Pisos_2018autm19_ClipGEFcomun.tif"          , "28" )
# arcpy.FeatureToRaster_conversion( "D:/Matias_Rebolledo/Raster/CapasFAU/Pisos/Pisos_2018autm19_ClipGEFcomun__grupo01.shp" , "CODIGO" , "D:/Matias_Rebolledo/Raster/CapasFAU/Pisos/Pisos_2018autm19_ClipGEFcomun__grupo01.tif" , "28" )
# arcpy.FeatureToRaster_conversion( "D:/Matias_Rebolledo/Raster/CapasFAU/Pisos/Pisos_2018autm19_ClipGEFcomun__grupo02.shp" , "CODIGO" , "D:/Matias_Rebolledo/Raster/CapasFAU/Pisos/Pisos_2018autm19_ClipGEFcomun__grupo02.tif" , "28" )
# arcpy.FeatureToRaster_conversion( "D:/Matias_Rebolledo/Raster/CapasFAU/Pisos/Pisos_2018autm19_ClipGEFcomun__grupo03.shp" , "CODIGO" , "D:/Matias_Rebolledo/Raster/CapasFAU/Pisos/Pisos_2018autm19_ClipGEFcomun__grupo03.tif" , "28" )
  arcpy.FeatureToRaster_conversion( "D:/Matias_Rebolledo/Raster/CapasFAU/Pisos/Pisos_2018autm19_ClipGEFcomun__grupo04.shp" , "CODIGO" , "D:/Matias_Rebolledo/Raster/CapasFAU/Pisos/Pisos_2018autm19_ClipGEFcomun__grupo04.tif" , "28" )
# arcpy.FeatureToRaster_conversion( "D:/Matias_Rebolledo/Raster/CapasFAU/Pisos/Pisos_2018autm19_ClipGEFcomun__grupo05.shp" , "CODIGO" , "D:/Matias_Rebolledo/Raster/CapasFAU/Pisos/Pisos_2018autm19_ClipGEFcomun__grupo05.tif" , "28" )
# arcpy.FeatureToRaster_conversion( "D:/Matias_Rebolledo/Raster/CapasFAU/Pisos/Pisos_2018autm19_ClipGEFcomun__grupo06.shp" , "CODIGO" , "D:/Matias_Rebolledo/Raster/CapasFAU/Pisos/Pisos_2018autm19_ClipGEFcomun__grupo06.tif" , "28" )

### mkdir -p {grupo00Mask,grupo01Mask,grupo02Mask,grupo03Mask,grupo04Mask,grupo05Mask,grupo06Mask}
### mkdir -p {grupo00MaskSample,grupo01MaskSample,grupo02MaskSample,grupo03MaskSample,grupo04MaskSample,grupo05MaskSample,grupo06MaskSample}

# ### cortar cada grupo equ
# arcpy.Delete_management( "grupo00Mask/Aspect__grupo00_mask.tif" )
# arcpy.Delete_management( "grupo00Mask/DEM__grupo00_mask.tif"    )
# arcpy.Delete_management( "grupo00Mask/NDMI__grupo00_mask.tif"   )
# arcpy.Delete_management( "grupo00Mask/Slope__grupo00_mask.tif"  )
# arcpy.Delete_management( "grupo00Mask/TRI__grupo00_mask.tif"    )
# arcpy.Delete_management( "grupo00Mask/TWI__grupo00_mask.tif"    )

# ### cortar cada grupo equ
# arcpy.Delete_management( "grupo01Mask/Aspect__grupo01_mask.tif" )
# arcpy.Delete_management( "grupo01Mask/DEM__grupo01_mask.tif"    )
# arcpy.Delete_management( "grupo01Mask/NDMI__grupo01_mask.tif"   )
# arcpy.Delete_management( "grupo01Mask/Slope__grupo01_mask.tif"  )
# arcpy.Delete_management( "grupo01Mask/TRI__grupo01_mask.tif"    )
# arcpy.Delete_management( "grupo01Mask/TWI__grupo01_mask.tif"    )

# ### cortar cada grupo equ
# arcpy.Delete_management( "grupo02Mask/Aspect__grupo02_mask.tif" )
# arcpy.Delete_management( "grupo02Mask/DEM__grupo02_mask.tif"    )
# arcpy.Delete_management( "grupo02Mask/NDMI__grupo02_mask.tif"   )
# arcpy.Delete_management( "grupo02Mask/Slope__grupo02_mask.tif"  )
# arcpy.Delete_management( "grupo02Mask/TRI__grupo02_mask.tif"    )
# arcpy.Delete_management( "grupo02Mask/TWI__grupo02_mask.tif"    )

# ### cortar cada grupo equ
# arcpy.Delete_management( "grupo03Mask/Aspect__grupo03_mask.tif" )
# arcpy.Delete_management( "grupo03Mask/DEM__grupo03_mask.tif"    )
# arcpy.Delete_management( "grupo03Mask/NDMI__grupo03_mask.tif"   )
# arcpy.Delete_management( "grupo03Mask/Slope__grupo03_mask.tif"  )
# arcpy.Delete_management( "grupo03Mask/TRI__grupo03_mask.tif"    )
# arcpy.Delete_management( "grupo03Mask/TWI__grupo03_mask.tif"    )

# ### cortar cada grupo equ
  arcpy.Delete_management( "grupo04Mask/Aspect__grupo04_mask.tif" )
  arcpy.Delete_management( "grupo04Mask/DEM__grupo04_mask.tif"    )
  arcpy.Delete_management( "grupo04Mask/NDMI__grupo04_mask.tif"   )
  arcpy.Delete_management( "grupo04Mask/Slope__grupo04_mask.tif"  )
  arcpy.Delete_management( "grupo04Mask/TRI__grupo04_mask.tif"    )
  arcpy.Delete_management( "grupo04Mask/TWI__grupo04_mask.tif"    )

# ### cortar cada grupo equ
# arcpy.Delete_management( "grupo05Mask/Aspect__grupo05_mask.tif" )
# arcpy.Delete_management( "grupo05Mask/DEM__grupo05_mask.tif"    )
# arcpy.Delete_management( "grupo05Mask/NDMI__grupo05_mask.tif"   )
# arcpy.Delete_management( "grupo05Mask/Slope__grupo05_mask.tif"  )
# arcpy.Delete_management( "grupo05Mask/TRI__grupo05_mask.tif"    )
# arcpy.Delete_management( "grupo05Mask/TWI__grupo05_mask.tif"    )

# ### cortar cada grupo equ
# arcpy.Delete_management( "grupo06Mask/Aspect__grupo06_mask.tif" )
# arcpy.Delete_management( "grupo06Mask/DEM__grupo06_mask.tif"    )
# arcpy.Delete_management( "grupo06Mask/NDMI__grupo06_mask.tif"   )
# arcpy.Delete_management( "grupo06Mask/Slope__grupo06_mask.tif"  )
# arcpy.Delete_management( "grupo06Mask/TRI__grupo06_mask.tif"    )
# arcpy.Delete_management( "grupo06Mask/TWI__grupo06_mask.tif"    )

### definir variables entorno
import arcpy
arcpy.env.workspace = "D:/Matias_Rebolledo/Raster/CapasFAU23_5"
arcpy.env.snapRaster = "D:/Matias_Rebolledo/Raster/CapasFAU23_5/Pisos/Pisos_2018autm19_ClipGEFcomun.tif"
arcpy.env.outputCoordinateSystem = arcpy.SpatialReference("WGS 1984 UTM Zone 19S")

### cortar grupo00 equivale a paso 01 (actualizar extent)
arcpy.Clip_management( "Aspect.tif"      , "237521.109400001 6205220.13528629 428313.109400001 6356028.13528629" , "grupo00Mask/Aspect__grupo00_mask.tif" , "Pisos/Pisos_2018autm19_ClipGEFcomun.shp"          , "#" , "ClippingGeometry" )
arcpy.Clip_management( "DEM_NoSinks.tif" , "237521.109400001 6205220.13528629 428313.109400001 6356028.13528629" , "grupo00Mask/DEM__grupo00_mask.tif"    , "Pisos/Pisos_2018autm19_ClipGEFcomun.shp"          , "#" , "ClippingGeometry" )
arcpy.Clip_management( "NDMI.tif"        , "237521.109400001 6205220.13528629 428313.109400001 6356028.13528629" , "grupo00Mask/NDMI__grupo00_mask.tif"   , "Pisos/Pisos_2018autm19_ClipGEFcomun.shp"          , "#" , "ClippingGeometry" )
arcpy.Clip_management( "Slope.tif"       , "237521.109400001 6205220.13528629 428313.109400001 6356028.13528629" , "grupo00Mask/Slope__grupo00_mask.tif"  , "Pisos/Pisos_2018autm19_ClipGEFcomun.shp"          , "#" , "ClippingGeometry" )
#####.Clip_management( "TRI.tif"         , "237521.109400001 6205220.13528629 428313.109400001 6356028.13528629" , "grupo00Mask/TRI__grupo00_mask.tif"    , "Pisos/Pisos_2018autm19_ClipGEFcomun.shp"          , "#" , "ClippingGeometry" )
arcpy.Clip_management( "TWI.tif"         , "237521.109400001 6205220.13528629 428313.109400001 6356028.13528629" , "grupo00Mask/TWI__grupo00_mask.tif"    , "Pisos/Pisos_2018autm19_ClipGEFcomun.shp"          , "#" , "ClippingGeometry" )

### cortar grupo01 equivale a paso 01
arcpy.Clip_management( "Aspect.tif"      , "237521.109400001 6225563.50919256 297525.109400001 6286883.50919256" , "grupo01Mask/Aspect__grupo01_mask.tif" , "Pisos/Pisos_2018autm19_ClipGEFcomun__grupo01.shp" , "#" , "ClippingGeometry" )
arcpy.Clip_management( "DEM_NoSinks.tif" , "237521.109400001 6225563.50919256 297525.109400001 6286883.50919256" , "grupo01Mask/DEM__grupo01_mask.tif"    , "Pisos/Pisos_2018autm19_ClipGEFcomun__grupo01.shp" , "#" , "ClippingGeometry" )
arcpy.Clip_management( "NDMI.tif"        , "237521.109400001 6225563.50919256 297525.109400001 6286883.50919256" , "grupo01Mask/NDMI__grupo01_mask.tif"   , "Pisos/Pisos_2018autm19_ClipGEFcomun__grupo01.shp" , "#" , "ClippingGeometry" )
arcpy.Clip_management( "Slope.tif"       , "237521.109400001 6225563.50919256 297525.109400001 6286883.50919256" , "grupo01Mask/Slope__grupo01_mask.tif"  , "Pisos/Pisos_2018autm19_ClipGEFcomun__grupo01.shp" , "#" , "ClippingGeometry" )
#####.Clip_management( "TRI.tif"         , "237521.109400001 6225563.50919256 297525.109400001 6286883.50919256" , "grupo01Mask/TRI__grupo01_mask.tif"    , "Pisos/Pisos_2018autm19_ClipGEFcomun__grupo01.shp" , "#" , "ClippingGeometry" )
arcpy.Clip_management( "TWI.tif"         , "237521.109400001 6225563.50919256 297525.109400001 6286883.50919256" , "grupo01Mask/TWI__grupo01_mask.tif"    , "Pisos/Pisos_2018autm19_ClipGEFcomun__grupo01.shp" , "#" , "ClippingGeometry" )

### cortar grupo02 equivale a paso 01
arcpy.Clip_management( "Aspect.tif"      , "247592.03563855  6216642.80004922 338228.03563855  6350426.80004922" , "grupo02Mask/Aspect__grupo02_mask.tif" , "Pisos/Pisos_2018autm19_ClipGEFcomun__grupo02.shp" , "#" , "ClippingGeometry" )
arcpy.Clip_management( "DEM_NoSinks.tif" , "247592.03563855  6216642.80004922 338228.03563855  6350426.80004922" , "grupo02Mask/DEM__grupo02_mask.tif"    , "Pisos/Pisos_2018autm19_ClipGEFcomun__grupo02.shp" , "#" , "ClippingGeometry" )
arcpy.Clip_management( "NDMI.tif"        , "247592.03563855  6216642.80004922 338228.03563855  6350426.80004922" , "grupo02Mask/NDMI__grupo02_mask.tif"   , "Pisos/Pisos_2018autm19_ClipGEFcomun__grupo02.shp" , "#" , "ClippingGeometry" )
arcpy.Clip_management( "Slope.tif"       , "247592.03563855  6216642.80004922 338228.03563855  6350426.80004922" , "grupo02Mask/Slope__grupo02_mask.tif"  , "Pisos/Pisos_2018autm19_ClipGEFcomun__grupo02.shp" , "#" , "ClippingGeometry" )
#####.Clip_management( "TRI.tif"         , "247592.03563855  6216642.80004922 338228.03563855  6350426.80004922" , "grupo02Mask/TRI__grupo02_mask.tif"    , "Pisos/Pisos_2018autm19_ClipGEFcomun__grupo02.shp" , "#" , "ClippingGeometry" )
arcpy.Clip_management( "TWI.tif"         , "247592.03563855  6216642.80004922 338228.03563855  6350426.80004922" , "grupo02Mask/TWI__grupo02_mask.tif"    , "Pisos/Pisos_2018autm19_ClipGEFcomun__grupo02.shp" , "#" , "ClippingGeometry" )

### cortar grupo03 equivale a paso 01
arcpy.Clip_management( "Aspect.tif"      , "291514.386739295 6215514.6578     336258.386739295 6351818.6578"     , "grupo03Mask/Aspect__grupo03_mask.tif" , "Pisos/Pisos_2018autm19_ClipGEFcomun__grupo03.shp" , "#" , "ClippingGeometry" )
arcpy.Clip_management( "DEM_NoSinks.tif" , "291514.386739295 6215514.6578     336258.386739295 6351818.6578"     , "grupo03Mask/DEM__grupo03_mask.tif"    , "Pisos/Pisos_2018autm19_ClipGEFcomun__grupo03.shp" , "#" , "ClippingGeometry" )
arcpy.Clip_management( "NDMI.tif"        , "291514.386739295 6215514.6578     336258.386739295 6351818.6578"     , "grupo03Mask/NDMI__grupo03_mask.tif"   , "Pisos/Pisos_2018autm19_ClipGEFcomun__grupo03.shp" , "#" , "ClippingGeometry" )
arcpy.Clip_management( "Slope.tif"       , "291514.386739295 6215514.6578     336258.386739295 6351818.6578"     , "grupo03Mask/Slope__grupo03_mask.tif"  , "Pisos/Pisos_2018autm19_ClipGEFcomun__grupo03.shp" , "#" , "ClippingGeometry" )
#####.Clip_management( "TRI.tif"         , "291514.386739295 6215514.6578     336258.386739295 6351818.6578"     , "grupo03Mask/TRI__grupo03_mask.tif"    , "Pisos/Pisos_2018autm19_ClipGEFcomun__grupo03.shp" , "#" , "ClippingGeometry" )
arcpy.Clip_management( "TWI.tif"         , "291514.386739295 6215514.6578     336258.386739295 6351818.6578"     , "grupo03Mask/TWI__grupo03_mask.tif"    , "Pisos/Pisos_2018autm19_ClipGEFcomun__grupo03.shp" , "#" , "ClippingGeometry" )

### cortar grupo04 equivale a paso 01 (actualizar extent)
arcpy.Clip_management( "Aspect.tif"      , "300328.432000389 6241318.04869894 390992.432000389 6355810.04869894" , "grupo04Mask/Aspect__grupo04_mask.tif" , "Pisos/Pisos_2018autm19_ClipGEFcomun__grupo04.shp" , "#" , "ClippingGeometry" )
arcpy.Clip_management( "DEM_NoSinks.tif" , "300328.432000389 6241318.04869894 390992.432000389 6355810.04869894" , "grupo04Mask/DEM__grupo04_mask.tif"    , "Pisos/Pisos_2018autm19_ClipGEFcomun__grupo04.shp" , "#" , "ClippingGeometry" )
arcpy.Clip_management( "NDMI.tif"        , "300328.432000389 6241318.04869894 390992.432000389 6355810.04869894" , "grupo04Mask/NDMI__grupo04_mask.tif"   , "Pisos/Pisos_2018autm19_ClipGEFcomun__grupo04.shp" , "#" , "ClippingGeometry" )
arcpy.Clip_management( "Slope.tif"       , "300328.432000389 6241318.04869894 390992.432000389 6355810.04869894" , "grupo04Mask/Slope__grupo04_mask.tif"  , "Pisos/Pisos_2018autm19_ClipGEFcomun__grupo04.shp" , "#" , "ClippingGeometry" )
#####.Clip_management( "TRI.tif"         , "300328.432000389 6241318.04869894 390992.432000389 6355810.04869894" , "grupo04Mask/TRI__grupo04_mask.tif"    , "Pisos/Pisos_2018autm19_ClipGEFcomun__grupo04.shp" , "#" , "ClippingGeometry" )
arcpy.Clip_management( "TWI.tif"         , "300328.432000389 6241318.04869894 390992.432000389 6355810.04869894" , "grupo04Mask/TWI__grupo04_mask.tif"    , "Pisos/Pisos_2018autm19_ClipGEFcomun__grupo04.shp" , "#" , "ClippingGeometry" )

### cortar grupo05 equivale a paso 01
arcpy.Clip_management( "Aspect.tif"      , "343917.637073581 6213372.87289775 416493.637073581 6353988.87289775" , "grupo05Mask/Aspect__grupo05_mask.tif" , "Pisos/Pisos_2018autm19_ClipGEFcomun__grupo05.shp" , "#" , "ClippingGeometry" )
arcpy.Clip_management( "DEM_NoSinks.tif" , "343917.637073581 6213372.87289775 416493.637073581 6353988.87289775" , "grupo05Mask/DEM__grupo05_mask.tif"    , "Pisos/Pisos_2018autm19_ClipGEFcomun__grupo05.shp" , "#" , "ClippingGeometry" )
arcpy.Clip_management( "NDMI.tif"        , "343917.637073581 6213372.87289775 416493.637073581 6353988.87289775" , "grupo05Mask/NDMI__grupo05_mask.tif"   , "Pisos/Pisos_2018autm19_ClipGEFcomun__grupo05.shp" , "#" , "ClippingGeometry" )
arcpy.Clip_management( "Slope.tif"       , "343917.637073581 6213372.87289775 416493.637073581 6353988.87289775" , "grupo05Mask/Slope__grupo05_mask.tif"  , "Pisos/Pisos_2018autm19_ClipGEFcomun__grupo05.shp" , "#" , "ClippingGeometry" )
#####.Clip_management( "TRI.tif"         , "343917.637073581 6213372.87289775 416493.637073581 6353988.87289775" , "grupo05Mask/TRI__grupo05_mask.tif"    , "Pisos/Pisos_2018autm19_ClipGEFcomun__grupo05.shp" , "#" , "ClippingGeometry" )
arcpy.Clip_management( "TWI.tif"         , "343917.637073581 6213372.87289775 416493.637073581 6353988.87289775" , "grupo05Mask/TWI__grupo05_mask.tif"    , "Pisos/Pisos_2018autm19_ClipGEFcomun__grupo05.shp" , "#" , "ClippingGeometry" )

### cortar grupo06 equivale a paso 01
arcpy.Clip_management( "Aspect.tif"      , "363140.565928675 6205220.13528629 428296.565928675 6345500.13528629" , "grupo06Mask/Aspect__grupo06_mask.tif" , "Pisos/Pisos_2018autm19_ClipGEFcomun__grupo06.shp" , "#" , "ClippingGeometry" )
arcpy.Clip_management( "DEM_NoSinks.tif" , "363140.565928675 6205220.13528629 428296.565928675 6345500.13528629" , "grupo06Mask/DEM__grupo06_mask.tif"    , "Pisos/Pisos_2018autm19_ClipGEFcomun__grupo06.shp" , "#" , "ClippingGeometry" )
arcpy.Clip_management( "NDMI.tif"        , "363140.565928675 6205220.13528629 428296.565928675 6345500.13528629" , "grupo06Mask/NDMI__grupo06_mask.tif"   , "Pisos/Pisos_2018autm19_ClipGEFcomun__grupo06.shp" , "#" , "ClippingGeometry" )
arcpy.Clip_management( "Slope.tif"       , "363140.565928675 6205220.13528629 428296.565928675 6345500.13528629" , "grupo06Mask/Slope__grupo06_mask.tif"  , "Pisos/Pisos_2018autm19_ClipGEFcomun__grupo06.shp" , "#" , "ClippingGeometry" )
#####.Clip_management( "TRI.tif"         , "363140.565928675 6205220.13528629 428296.565928675 6345500.13528629" , "grupo06Mask/TRI__grupo06_mask.tif"    , "Pisos/Pisos_2018autm19_ClipGEFcomun__grupo06.shp" , "#" , "ClippingGeometry" )
arcpy.Clip_management( "TWI.tif"         , "363140.565928675 6205220.13528629 428296.565928675 6345500.13528629" , "grupo06Mask/TWI__grupo06_mask.tif"    , "Pisos/Pisos_2018autm19_ClipGEFcomun__grupo06.shp" , "#" , "ClippingGeometry" )

