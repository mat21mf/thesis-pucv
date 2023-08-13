# ### Archivos raster fueron llevados a tamaño pixel 25 x 25 para normalizar entre ellas
# slo <- raster::raster( "../../DriveBiotopos/Daniel_Zamorano/Pixel25/Transf_slope_px25.tif"            )
# dem <- raster::raster( "../../DriveBiotopos/Daniel_Zamorano/Pixel25/Transf_DEM_px25.tif"              )
# tri <- raster::raster( "../../DriveBiotopos/Daniel_Zamorano/Pixel25dem/Transf_TRI_corregido_px25.tif" )
# asx <- raster::raster( "../../DriveBiotopos/Daniel_Zamorano/Pixel25/Transf_asp_x_px25.tif"            )
# asy <- raster::raster( "../../DriveBiotopos/Daniel_Zamorano/Pixel25/Transf_asp_y_px25.tif"            )
# car <- raster::raster( "../../DriveBiotopos/Daniel_Zamorano/Pixel25/Transf_carbono_2013_px25.tif"     )

# ### Escribir raster grd entrada
# slo.grd <- raster::writeRaster( slo , filename = "../../DriveBiotopos/Daniel_Zamorano/Pixel25/Transf_slope_px25.grd"         , datatype = "FLT4S" , overwrite = T )
# dem.grd <- raster::writeRaster( dem , filename = "../../DriveBiotopos/Daniel_Zamorano/Pixel25/Transf_DEM_px25.grd"           , datatype = "FLT4S" , overwrite = T )
# tri.grd <- raster::writeRaster( tri , filename = "../../DriveBiotopos/Daniel_Zamorano/Pixel25/Transf_TRI_px25.grd"           , datatype = "FLT4S" , overwrite = T )
# asx.grd <- raster::writeRaster( asx , filename = "../../DriveBiotopos/Daniel_Zamorano/Pixel25/Transf_asp_x_px25.grd"         , datatype = "FLT4S" , overwrite = T )
# asy.grd <- raster::writeRaster( asy , filename = "../../DriveBiotopos/Daniel_Zamorano/Pixel25/Transf_asp_y_px25.grd"         , datatype = "FLT4S" , overwrite = T )
# car.grd <- raster::writeRaster( car , filename = "../../DriveBiotopos/Daniel_Zamorano/Pixel25/Transf_carbono_2013_px25.grd"  , datatype = "FLT4S" , overwrite = T )

# ### Remuestrear row y col para que queden todas iguales entre si
# slo.rsm <- rasterfaster::resampleTo( slo.grd , ncol = dim( tri01 )[2] , nrow = dim( tri01 )[1] , method = "ngb" )
# dem.rsm <- rasterfaster::resampleTo( dem.grd , ncol = dim( tri01 )[2] , nrow = dim( tri01 )[1] , method = "ngb" )
# tri.rsm <- rasterfaster::resampleTo( tri.grd , ncol = dim( tri01 )[2] , nrow = dim( tri01 )[1] , method = "ngb" )
# asx.rsm <- rasterfaster::resampleTo( asx.grd , ncol = dim( tri01 )[2] , nrow = dim( tri01 )[1] , method = "ngb" )
# asy.rsm <- rasterfaster::resampleTo( asy.grd , ncol = dim( tri01 )[2] , nrow = dim( tri01 )[1] , method = "ngb" )
# car.rsm <- rasterfaster::resampleTo( car.grd , ncol = dim( tri01 )[2] , nrow = dim( tri01 )[1] , method = "ngb" )

# ### Escribir raster tif salida
# slo.tif <- raster::writeRaster( slo.rsm , filename = "../../DriveBiotopos/Daniel_Zamorano/Pixel25Norm/Transf_slope_px25.tif"         , datatype = "FLT4S" , overwrite = T )
# dem.tif <- raster::writeRaster( dem.rsm , filename = "../../DriveBiotopos/Daniel_Zamorano/Pixel25Norm/Transf_DEM_px25.tif"           , datatype = "FLT4S" , overwrite = T )
# tri.tif <- raster::writeRaster( tri.rsm , filename = "../../DriveBiotopos/Daniel_Zamorano/Pixel25Norm/Transf_TRI_px25.tif"           , datatype = "FLT4S" , overwrite = T )
# asx.tif <- raster::writeRaster( asx.rsm , filename = "../../DriveBiotopos/Daniel_Zamorano/Pixel25Norm/Transf_asp_x_px25.tif"         , datatype = "FLT4S" , overwrite = T )
# asy.tif <- raster::writeRaster( asy.rsm , filename = "../../DriveBiotopos/Daniel_Zamorano/Pixel25Norm/Transf_asp_y_px25.tif"         , datatype = "FLT4S" , overwrite = T )
# car.tif <- raster::writeRaster( car.rsm , filename = "../../DriveBiotopos/Daniel_Zamorano/Pixel25Norm/Transf_carbono_2013_px25.tif"  , datatype = "FLT4S" , overwrite = T )

# ### Escribir raster grd salida
# slo.nrd <- raster::writeRaster( slo.rsm , filename = "../../DriveBiotopos/Daniel_Zamorano/Pixel25Norm/Transf_slope_px25.grd"         , datatype = "FLT4S" , overwrite = T )
# dem.nrd <- raster::writeRaster( dem.rsm , filename = "../../DriveBiotopos/Daniel_Zamorano/Pixel25Norm/Transf_DEM_px25.grd"           , datatype = "FLT4S" , overwrite = T )
# tri.nrd <- raster::writeRaster( tri.rsm , filename = "../../DriveBiotopos/Daniel_Zamorano/Pixel25Norm/Transf_TRI_px25.grd"           , datatype = "FLT4S" , overwrite = T )
# asx.nrd <- raster::writeRaster( asx.rsm , filename = "../../DriveBiotopos/Daniel_Zamorano/Pixel25Norm/Transf_asp_x_px25.grd"         , datatype = "FLT4S" , overwrite = T )
# asy.nrd <- raster::writeRaster( asy.rsm , filename = "../../DriveBiotopos/Daniel_Zamorano/Pixel25Norm/Transf_asp_y_px25.grd"         , datatype = "FLT4S" , overwrite = T )
# car.nrd <- raster::writeRaster( car.rsm , filename = "../../DriveBiotopos/Daniel_Zamorano/Pixel25Norm/Transf_carbono_2013_px25.grd"  , datatype = "FLT4S" , overwrite = T )

# ### Capa resultado cluster inicial llevada a tamaño pixel 25 x 25 para normalizar las otras usandola como referencia
# cla     <- raster::raster( "../previos/Clas_geo_clip.tif" )
# cla.grd <- raster::writeRaster( cla , filename = "../previos/Clas_geo_clip.grd" , datatype = "FLT4S" , overwrite = T )
# cla.grd <- raster::raster( "../previos/Clas_geo_clip.grd" )
# paste( ( raster::extent( cla.grd )[2] - raster::extent( cla.grd )[1] ) / raster::res( cla.grd )[1] , ( raster::extent( cla.grd )[4] - raster::extent( cla.grd )[3] ) / raster::res( cla.grd )[2] )
 #cla     <- raster::raster( "../../DriveBiotopos/Daniel_Zamorano/Pixel25/Transf_Clas_geo_clip_px25.tif"    )
 #cla.grd <- raster::writeRaster( cla , filename = "../../DriveBiotopos/Daniel_Zamorano/Pixel25/Transf_Clas_geo_clip_px25.grd" , datatype = "FLT4S" , overwrite = T )
 #cla.rsm <- rasterfaster::resampleTo( cla.grd , ncol = dim( tri01 )[2] , nrow = dim( tri01 )[1] , method = "ngb" )
 #cla.tif <- raster::writeRaster( cla.rsm , filename = "../../DriveBiotopos/Daniel_Zamorano/Pixel25Norm/Transf_Clas_geo_clip_px25.tif" , datatype = "FLT4S" , overwrite = T )
 #cla.nrd <- raster::writeRaster( cla.rsm , filename = "../../DriveBiotopos/Daniel_Zamorano/Pixel25Norm/Transf_Clas_geo_clip_px25.grd" , datatype = "FLT4S" , overwrite = T )

# ### Cargar archivos grd fueron llevados a tamaño pixel 25 x 25 y normalizados para cortar a raster cluster
# slo.nrd <- raster::raster( "../../DriveBiotopos/Daniel_Zamorano/Pixel25Norm/Transf_slope_px25.grd"        )
# dem.nrd <- raster::raster( "../../DriveBiotopos/Daniel_Zamorano/Pixel25Norm/Transf_DEM_px25.grd"          )
# tri.nrd <- raster::raster( "../../DriveBiotopos/Daniel_Zamorano/Pixel25Norm/Transf_TRI_px25.grd"          )
# asx.nrd <- raster::raster( "../../DriveBiotopos/Daniel_Zamorano/Pixel25Norm/Transf_asp_x_px25.grd"        )
# asy.nrd <- raster::raster( "../../DriveBiotopos/Daniel_Zamorano/Pixel25Norm/Transf_asp_y_px25.grd"        )
# car.nrd <- raster::raster( "../../DriveBiotopos/Daniel_Zamorano/Pixel25Norm/Transf_carbono_2013_px25.grd" )

  ###
  ### arcpy paso 01 cargar y escribir
  ###

# ### Cargar archivos tif paso 01 procesados con arcpy
# slo.p01 <- raster::raster( "../../DriveBiotopos/Daniel_Zamorano/Pixel25Clip/Transf_slope_px25_paso01.tif"        )
# dem.p01 <- raster::raster( "../../DriveBiotopos/Daniel_Zamorano/Pixel25Clip/Transf_DEM_px25_paso01.tif"          )
# tri.p01 <- raster::raster( "../../DriveBiotopos/Daniel_Zamorano/Pixel25Clip/Transf_TRI_px25_paso01.tif"          )
# asx.p01 <- raster::raster( "../../DriveBiotopos/Daniel_Zamorano/Pixel25Clip/Transf_asp_x_px25_paso01.tif"        )
# asy.p01 <- raster::raster( "../../DriveBiotopos/Daniel_Zamorano/Pixel25Clip/Transf_asp_y_px25_paso01.tif"        )
# car.p01 <- raster::raster( "../../DriveBiotopos/Daniel_Zamorano/Pixel25Clip/Transf_carbono_2013_px25_paso01.tif" )

# ### Escribir raster grd arcpy paso 01
# slo.g01 <- raster::writeRaster( slo.p01 , filename = "../../DriveBiotopos/Daniel_Zamorano/Pixel25Clip/Transf_slope_px25_paso01.grd"         , datatype = "FLT4S" , overwrite = T )
# dem.g01 <- raster::writeRaster( dem.p01 , filename = "../../DriveBiotopos/Daniel_Zamorano/Pixel25Clip/Transf_DEM_px25_paso01.grd"           , datatype = "FLT4S" , overwrite = T )
# tri.g01 <- raster::writeRaster( tri.p01 , filename = "../../DriveBiotopos/Daniel_Zamorano/Pixel25Clip/Transf_TRI_px25_paso01.grd"           , datatype = "FLT4S" , overwrite = T )
# asx.g01 <- raster::writeRaster( asx.p01 , filename = "../../DriveBiotopos/Daniel_Zamorano/Pixel25Clip/Transf_asp_x_px25_paso01.grd"         , datatype = "FLT4S" , overwrite = T )
# asy.g01 <- raster::writeRaster( asy.p01 , filename = "../../DriveBiotopos/Daniel_Zamorano/Pixel25Clip/Transf_asp_y_px25_paso01.grd"         , datatype = "FLT4S" , overwrite = T )
# car.g01 <- raster::writeRaster( car.p01 , filename = "../../DriveBiotopos/Daniel_Zamorano/Pixel25Clip/Transf_carbono_2013_px25_paso01.grd"  , datatype = "FLT4S" , overwrite = T )

# ###
# ### arcpy paso 01 cargar y remuestrear NO USAR OBSOLETO
# ###

# ### Cargar cluster formato grd
# cla.grd <- raster::raster( "../previos/Clas_geo_clip.grd" )

# ### Cargar archivos grd paso 01 procesados con arcpy
# slo.g01 <- raster::raster( "../../DriveBiotopos/Daniel_Zamorano/Pixel25Clip/Transf_slope_px25_paso01.grd"        )
# dem.g01 <- raster::raster( "../../DriveBiotopos/Daniel_Zamorano/Pixel25Clip/Transf_DEM_px25_paso01.grd"          )
# tri.g01 <- raster::raster( "../../DriveBiotopos/Daniel_Zamorano/Pixel25Clip/Transf_TRI_px25_paso01.grd"          )
# asx.g01 <- raster::raster( "../../DriveBiotopos/Daniel_Zamorano/Pixel25Clip/Transf_asp_x_px25_paso01.grd"        )
# asy.g01 <- raster::raster( "../../DriveBiotopos/Daniel_Zamorano/Pixel25Clip/Transf_asp_y_px25_paso01.grd"        )
# car.g01 <- raster::raster( "../../DriveBiotopos/Daniel_Zamorano/Pixel25Clip/Transf_carbono_2013_px25_paso01.grd" )

# ### Remuestrear arcpy paso 01
# slo.h01 <- rasterfaster::resampleTo( slo.g01   , ncol = dim( cla.grd )[2] , nrow = dim( cla.grd )[1] , method = "ngb" )
# dem.h01 <- rasterfaster::resampleTo( dem.g01   , ncol = dim( cla.grd )[2] , nrow = dim( cla.grd )[1] , method = "ngb" )
# tri.h01 <- rasterfaster::resampleTo( tri.g01   , ncol = dim( cla.grd )[2] , nrow = dim( cla.grd )[1] , method = "ngb" )
# asx.h01 <- rasterfaster::resampleTo( asx.g01   , ncol = dim( cla.grd )[2] , nrow = dim( cla.grd )[1] , method = "ngb" )
# asy.h01 <- rasterfaster::resampleTo( asy.g01   , ncol = dim( cla.grd )[2] , nrow = dim( cla.grd )[1] , method = "ngb" )
# car.h01 <- rasterfaster::resampleTo( car.g01   , ncol = dim( cla.grd )[2] , nrow = dim( cla.grd )[1] , method = "ngb" )

# ### Escribir raster arcpy paso01 remuestreo 01 formato tif
# slo.i01 <- raster::writeRaster( slo.h01 , filename = "../../DriveBiotopos/Daniel_Zamorano/Pixel25Clip/Transf_slope_px25_paso01_resam01.tif"         , datatype = "FLT4S" , overwrite = T )
# dem.i01 <- raster::writeRaster( dem.h01 , filename = "../../DriveBiotopos/Daniel_Zamorano/Pixel25Clip/Transf_DEM_px25_paso01_resam01.tif"           , datatype = "FLT4S" , overwrite = T )
# tri.i01 <- raster::writeRaster( tri.h01 , filename = "../../DriveBiotopos/Daniel_Zamorano/Pixel25Clip/Transf_TRI_px25_paso01_resam01.tif"           , datatype = "FLT4S" , overwrite = T )
# asx.i01 <- raster::writeRaster( asx.h01 , filename = "../../DriveBiotopos/Daniel_Zamorano/Pixel25Clip/Transf_asp_x_px25_paso01_resam01.tif"         , datatype = "FLT4S" , overwrite = T )
# asy.i01 <- raster::writeRaster( asy.h01 , filename = "../../DriveBiotopos/Daniel_Zamorano/Pixel25Clip/Transf_asp_y_px25_paso01_resam01.tif"         , datatype = "FLT4S" , overwrite = T )
# car.i01 <- raster::writeRaster( car.h01 , filename = "../../DriveBiotopos/Daniel_Zamorano/Pixel25Clip/Transf_carbono_2013_px25_paso01_resam01.tif"  , datatype = "FLT4S" , overwrite = T )

  ###
  ### grabar gdal remuestreado completo para 6 capas referencias + 1 capa cluster definitivo
  ###

  ### Cargar archivos grd paso 01 procesados con arcpy
  cla.rem <- raster::raster( "../../DriveBiotopos/Daniel_Zamorano/Pixel25Alte/Transf_Clas_geo_clip_remuestreado.tif"     )
  slo.rem <- raster::raster( "../../DriveBiotopos/Daniel_Zamorano/Pixel25Alte/Transf_slope_px25_remuestreado.tif"        )
  dem.rem <- raster::raster( "../../DriveBiotopos/Daniel_Zamorano/Pixel25Alte/Transf_DEM_px25_remuestreado.tif"          )
  tri.rem <- raster::raster( "../../DriveBiotopos/Daniel_Zamorano/Pixel25Alte/Transf_TRI_px25_remuestreado.tif"          )
  asx.rem <- raster::raster( "../../DriveBiotopos/Daniel_Zamorano/Pixel25Alte/Transf_asp_x_px25_remuestreado.tif"        )
  asy.rem <- raster::raster( "../../DriveBiotopos/Daniel_Zamorano/Pixel25Alte/Transf_asp_y_px25_remuestreado.tif"        )
  car.rem <- raster::raster( "../../DriveBiotopos/Daniel_Zamorano/Pixel25Alte/Transf_carbono_2013_px25_remuestreado.tif" )

  ### Escribir raster arcpy paso01 remuestreo 01 formato tif
  cla.red <- raster::writeRaster( cla.rem , filename = "../../DriveBiotopos/Daniel_Zamorano/Pixel25Alte/Transf_Clas_geo_clip_remuestreado.grd"      , datatype = "FLT4S" , overwrite = T )
  slo.red <- raster::writeRaster( slo.rem , filename = "../../DriveBiotopos/Daniel_Zamorano/Pixel25Alte/Transf_slope_px25_remuestreado.grd"         , datatype = "FLT4S" , overwrite = T )
  dem.red <- raster::writeRaster( dem.rem , filename = "../../DriveBiotopos/Daniel_Zamorano/Pixel25Alte/Transf_DEM_px25_remuestreado.grd"           , datatype = "FLT4S" , overwrite = T )
  tri.red <- raster::writeRaster( tri.rem , filename = "../../DriveBiotopos/Daniel_Zamorano/Pixel25Alte/Transf_TRI_px25_remuestreado.grd"           , datatype = "FLT4S" , overwrite = T )
  asx.red <- raster::writeRaster( asx.rem , filename = "../../DriveBiotopos/Daniel_Zamorano/Pixel25Alte/Transf_asp_x_px25_remuestreado.grd"         , datatype = "FLT4S" , overwrite = T )
  asy.red <- raster::writeRaster( asy.rem , filename = "../../DriveBiotopos/Daniel_Zamorano/Pixel25Alte/Transf_asp_y_px25_remuestreado.grd"         , datatype = "FLT4S" , overwrite = T )
  car.red <- raster::writeRaster( car.rem , filename = "../../DriveBiotopos/Daniel_Zamorano/Pixel25Alte/Transf_carbono_2013_px25_remuestreado.grd"  , datatype = "FLT4S" , overwrite = T )

  ###
  ### cargar gdal remuestreado completo para 6 capas referencias + 1 capa cluster definitivo usar ffraster
  ###

  ### Cargar archivos grd paso 01 procesados con gdal
  cla.red <- raster::raster( "../../DriveBiotopos/Daniel_Zamorano/Pixel25Alte/Transf_Clas_geo_clip_remuestreado.grd"     )
  slo.red <- raster::raster( "../../DriveBiotopos/Daniel_Zamorano/Pixel25Alte/Transf_slope_px25_remuestreado.grd"        )
  dem.red <- raster::raster( "../../DriveBiotopos/Daniel_Zamorano/Pixel25Alte/Transf_DEM_px25_remuestreado.grd"          )
  tri.red <- raster::raster( "../../DriveBiotopos/Daniel_Zamorano/Pixel25Alte/Transf_TRI_px25_remuestreado.grd"          )
  asx.red <- raster::raster( "../../DriveBiotopos/Daniel_Zamorano/Pixel25Alte/Transf_asp_x_px25_remuestreado.grd"        )
  asy.red <- raster::raster( "../../DriveBiotopos/Daniel_Zamorano/Pixel25Alte/Transf_asp_y_px25_remuestreado.grd"        )
  car.red <- raster::raster( "../../DriveBiotopos/Daniel_Zamorano/Pixel25Alte/Transf_carbono_2013_px25_remuestreado.grd" )

  ###
  ### cargar gdal remuestreado completo para 6 capas referencias + 1 capa cluster definitivo usar ffraster
  ###

  ### Cargar archivos grd paso 01 procesados con gdal
  cla.ffr <- ffraster::ff_object( raster::raster( "../../DriveBiotopos/Daniel_Zamorano/Pixel25Alte/Transf_Clas_geo_clip_remuestreado.grd"     ) )
  slo.ffr <- ffraster::ff_object( raster::raster( "../../DriveBiotopos/Daniel_Zamorano/Pixel25Alte/Transf_slope_px25_remuestreado.grd"        ) )
  dem.ffr <- ffraster::ff_object( raster::raster( "../../DriveBiotopos/Daniel_Zamorano/Pixel25Alte/Transf_DEM_px25_remuestreado.grd"          ) )
  tri.ffr <- ffraster::ff_object( raster::raster( "../../DriveBiotopos/Daniel_Zamorano/Pixel25Alte/Transf_TRI_px25_remuestreado.grd"          ) )
  asx.ffr <- ffraster::ff_object( raster::raster( "../../DriveBiotopos/Daniel_Zamorano/Pixel25Alte/Transf_asp_x_px25_remuestreado.grd"        ) )
  asy.ffr <- ffraster::ff_object( raster::raster( "../../DriveBiotopos/Daniel_Zamorano/Pixel25Alte/Transf_asp_y_px25_remuestreado.grd"        ) )
  car.ffr <- ffraster::ff_object( raster::raster( "../../DriveBiotopos/Daniel_Zamorano/Pixel25Alte/Transf_carbono_2013_px25_remuestreado.grd" ) )

  ###
  ### raster to matrix -> matrices to array
  ###

  ### Cargar archivos grd paso 01 procesados con gdal
  cla.grd <- raster::raster( "../../DriveBiotopos/Daniel_Zamorano/Pixel25Alte/Transf_Clas_geo_clip_remuestreado.grd"     )
  slo.grd <- raster::raster( "../../DriveBiotopos/Daniel_Zamorano/Pixel25Alte/Transf_slope_px25_remuestreado.grd"        )
  dem.grd <- raster::raster( "../../DriveBiotopos/Daniel_Zamorano/Pixel25Alte/Transf_DEM_px25_remuestreado.grd"          )
  tri.grd <- raster::raster( "../../DriveBiotopos/Daniel_Zamorano/Pixel25Alte/Transf_TRI_px25_remuestreado.grd"          )
  asx.grd <- raster::raster( "../../DriveBiotopos/Daniel_Zamorano/Pixel25Alte/Transf_asp_x_px25_remuestreado.grd"        )
  asy.grd <- raster::raster( "../../DriveBiotopos/Daniel_Zamorano/Pixel25Alte/Transf_asp_y_px25_remuestreado.grd"        )
  car.grd <- raster::raster( "../../DriveBiotopos/Daniel_Zamorano/Pixel25Alte/Transf_carbono_2013_px25_remuestreado.grd" )

  ### convertir raster to matrices y grabar formato rda
  cla.mat <- raster::as.matrix( cla.grd ) ; base::save( cla.mat , file = "../../DriveBiotopos/Daniel_Zamorano/Pixel25fftmp/cla.mat.rda" )
  slo.mat <- raster::as.matrix( slo.grd ) ; base::save( slo.mat , file = "../../DriveBiotopos/Daniel_Zamorano/Pixel25fftmp/slo.mat.rda" )
  dem.mat <- raster::as.matrix( dem.grd ) ; base::save( dem.mat , file = "../../DriveBiotopos/Daniel_Zamorano/Pixel25fftmp/dem.mat.rda" )
  tri.mat <- raster::as.matrix( tri.grd ) ; base::save( tri.mat , file = "../../DriveBiotopos/Daniel_Zamorano/Pixel25fftmp/tri.mat.rda" )
  asx.mat <- raster::as.matrix( asx.grd ) ; base::save( asx.mat , file = "../../DriveBiotopos/Daniel_Zamorano/Pixel25fftmp/asx.mat.rda" )
  asy.mat <- raster::as.matrix( asy.grd ) ; base::save( asy.mat , file = "../../DriveBiotopos/Daniel_Zamorano/Pixel25fftmp/asy.mat.rda" )
  car.mat <- raster::as.matrix( car.grd ) ; base::save( car.mat , file = "../../DriveBiotopos/Daniel_Zamorano/Pixel25fftmp/car.mat.rda" )

  ### cargar en sesion matrix formato rda
  base::load( file = "../../DriveBiotopos/Daniel_Zamorano/Pixel25fftmp/cla.mat.rda" )
  base::load( file = "../../DriveBiotopos/Daniel_Zamorano/Pixel25fftmp/slo.mat.rda" )
  base::load( file = "../../DriveBiotopos/Daniel_Zamorano/Pixel25fftmp/dem.mat.rda" )
  base::load( file = "../../DriveBiotopos/Daniel_Zamorano/Pixel25fftmp/tri.mat.rda" )
  base::load( file = "../../DriveBiotopos/Daniel_Zamorano/Pixel25fftmp/asx.mat.rda" )
  base::load( file = "../../DriveBiotopos/Daniel_Zamorano/Pixel25fftmp/asy.mat.rda" )
  base::load( file = "../../DriveBiotopos/Daniel_Zamorano/Pixel25fftmp/car.mat.rda" )

  library( ff )
  options( fftmpdir = "/home/matbox/Documents/TrabajosExtra/DriveBiotopos/Daniel_Zamorano/Pixel25fftmp" )

  ### convertir matrices to ff_matrix
  cla.ffm <- ff::ff( cla.mat , dim = c( dim( cla.mat )[1] , dim( cla.mat )[2] ) , dimorder = c(2:1) , filename = "../../DriveBiotopos/Daniel_Zamorano/Pixel25fftmp/cla.ff" )
  slo.ffm <- ff::ff( slo.mat , dim = c( dim( slo.mat )[1] , dim( slo.mat )[2] ) , dimorder = c(2:1) , filename = "../../DriveBiotopos/Daniel_Zamorano/Pixel25fftmp/slo.ff" )
  dem.ffm <- ff::ff( dem.mat , dim = c( dim( dem.mat )[1] , dim( dem.mat )[2] ) , dimorder = c(2:1) , filename = "../../DriveBiotopos/Daniel_Zamorano/Pixel25fftmp/dem.ff" )
  tri.ffm <- ff::ff( tri.mat , dim = c( dim( tri.mat )[1] , dim( tri.mat )[2] ) , dimorder = c(2:1) , filename = "../../DriveBiotopos/Daniel_Zamorano/Pixel25fftmp/tri.ff" )
  asx.ffm <- ff::ff( asx.mat , dim = c( dim( asx.mat )[1] , dim( asx.mat )[2] ) , dimorder = c(2:1) , filename = "../../DriveBiotopos/Daniel_Zamorano/Pixel25fftmp/asx.ff" )
  asy.ffm <- ff::ff( asy.mat , dim = c( dim( asy.mat )[1] , dim( asy.mat )[2] ) , dimorder = c(2:1) , filename = "../../DriveBiotopos/Daniel_Zamorano/Pixel25fftmp/asy.ff" )
  car.ffm <- ff::ff( car.mat , dim = c( dim( car.mat )[1] , dim( car.mat )[2] ) , dimorder = c(2:1) , filename = "../../DriveBiotopos/Daniel_Zamorano/Pixel25fftmp/car.ff" )

  ### grabar ff_matrix con ffsave
  ff::ffsave( cla.ffm , file = "../../DriveBiotopos/Daniel_Zamorano/Pixel25fftmp/cla.ff" )
  ff::ffsave( slo.ffm , file = "../../DriveBiotopos/Daniel_Zamorano/Pixel25fftmp/slo.ff" )
  ff::ffsave( dem.ffm , file = "../../DriveBiotopos/Daniel_Zamorano/Pixel25fftmp/dem.ff" )
  ff::ffsave( tri.ffm , file = "../../DriveBiotopos/Daniel_Zamorano/Pixel25fftmp/tri.ff" )
  ff::ffsave( asx.ffm , file = "../../DriveBiotopos/Daniel_Zamorano/Pixel25fftmp/asx.ff" )
  ff::ffsave( asy.ffm , file = "../../DriveBiotopos/Daniel_Zamorano/Pixel25fftmp/asy.ff" )
  ff::ffsave( car.ffm , file = "../../DriveBiotopos/Daniel_Zamorano/Pixel25fftmp/car.ff" )

  ### cargar objetos ff
  ff::ffload( "../../DriveBiotopos/Daniel_Zamorano/Pixel25fftmp/cla.ff" , overwrite = F )
  ff::ffload( "../../DriveBiotopos/Daniel_Zamorano/Pixel25fftmp/slo.ff" , overwrite = F )
  ff::ffload( "../../DriveBiotopos/Daniel_Zamorano/Pixel25fftmp/dem.ff" , overwrite = F )
  ff::ffload( "../../DriveBiotopos/Daniel_Zamorano/Pixel25fftmp/tri.ff" , overwrite = F )
  ff::ffload( "../../DriveBiotopos/Daniel_Zamorano/Pixel25fftmp/asx.ff" , overwrite = F )
  ff::ffload( "../../DriveBiotopos/Daniel_Zamorano/Pixel25fftmp/asy.ff" , overwrite = F )
  ff::ffload( "../../DriveBiotopos/Daniel_Zamorano/Pixel25fftmp/car.ff" , overwrite = F )

  ### combinar matrices en array
  ras.arr <- ff::ff( vmode = "double" , dim = c( dim( cla.ffm )[1] , dim( cla.ffm )[2] , 7 ) ,
                     filename = "../../DriveBiotopos/Daniel_Zamorano/Pixel25fftmp/ras.ff" )
  ras.arr[,,1] <- cla.mat
  ras.arr[,,2] <- slo.mat
  ras.arr[,,3] <- dem.mat
  ras.arr[,,4] <- tri.mat
  ras.arr[,,5] <- asx.mat
  ras.arr[,,6] <- asy.mat
  ras.arr[,,7] <- car.mat
  ff::ffsave( ras.arr , file = "../../DriveBiotopos/Daniel_Zamorano/Pixel25fftmp/ras.ff" )

  ###
  ### no usar
  ###

  ### salir y entrar a R
  ff::ffload( "../../DriveBiotopos/Daniel_Zamorano/Pixel25fftmp/ras.ff" )

  ### quitar matrix
  rm( cla.mat )
  rm( slo.mat )
  rm( dem.mat )
  rm( tri.mat )
  rm( asx.mat )
  rm( asy.mat )
  rm( car.mat )

  ### quitar ff_matrix
  rm( cla.ffm )
  rm( slo.ffm )
  rm( dem.ffm )
  rm( tri.ffm )
  rm( asx.ffm )
  rm( asy.ffm )
  rm( car.ffm )

  ###
  ### ejemplo ffraster
  ###

  ### cargar desde directorio
  ruta <- "../../DriveBiotopos/Daniel_Zamorano/Pixel25Alte"
  arcv <- file.path( ruta , list.files( ruta , pattern = "Transf.*.grd$" ) )
  r_brickfile <- raster::rasterTmpFile()
  r0 <- raster::raster( arcv[1] )

  library(ffraster)
  ffraster:::.writeGRD(r0,
                       dataType = "FLT4S",
                       filename = r_brickfile,
                       nbands = length(arcv),
                       ## if dates are known, input them here for each file
                       dates = NULL,
                       overwrite = T )
  #> [1] TRUE

  ## use mode "single", float32 (or double, float64)
  ff_array  <- ffrarr(c(nrow(r0), ncol(r0),
                 length(arcv)),
               mode = "single",
               filename = r_brickfile,
               readonly = FALSE)

  ## now loop and populate
  for (i in seq_along(arcv)) {
    ## in the loop we read each layer from file (or whatever source of layers we have)
    r <- raster(arcv[i])
    ## the ff array can be written to by treating like a slice in a 3D array
    ## the default is transpose, but note other layouts are possible for rasterfile and in ff
    ff_array[,,i] <- values(t(r))
  }

# ### NO USAR
# all.ext <- raster::extent( slo.nrd ) ; cla.grd.ext <- raster::setExtent( cla.grd , all.ext )
# cla.new.ext <- raster::writeRaster( cla.grd.ext , "../previos/Clas_geo_clip_extent.tif" , datatype = "FLT4S" , overwrite = T )
# cla.neg.ext <- raster::writeRaster( cla.grd.ext , "../previos/Clas_geo_clip_extent.grd" , datatype = "FLT4S" , overwrite = T )

# ### Iniciar con cluster con nuevo extent NO USAR
# cla.neg.ext <- raster::raster( "../previos/Clas_geo_clip_extent.grd" )

# ### Verificamos ncol y nrow segun formula
# paste( ( raster::extent( slo.nrd )[2] - raster::extent( slo.nrd )[1] ) / raster::res( slo.nrd )[1] , ( raster::extent( slo.nrd )[4] - raster::extent( slo.nrd )[3] ) / raster::res( slo.nrd )[2] )
# paste( ( raster::extent( dem.nrd )[2] - raster::extent( dem.nrd )[1] ) / raster::res( dem.nrd )[1] , ( raster::extent( dem.nrd )[4] - raster::extent( dem.nrd )[3] ) / raster::res( dem.nrd )[2] )
# paste( ( raster::extent( tri.nrd )[2] - raster::extent( tri.nrd )[1] ) / raster::res( tri.nrd )[1] , ( raster::extent( tri.nrd )[4] - raster::extent( tri.nrd )[3] ) / raster::res( tri.nrd )[2] )
# paste( ( raster::extent( asx.nrd )[2] - raster::extent( asx.nrd )[1] ) / raster::res( asx.nrd )[1] , ( raster::extent( asx.nrd )[4] - raster::extent( asx.nrd )[3] ) / raster::res( asx.nrd )[2] )
# paste( ( raster::extent( asy.nrd )[2] - raster::extent( asy.nrd )[1] ) / raster::res( asy.nrd )[1] , ( raster::extent( asy.nrd )[4] - raster::extent( asy.nrd )[3] ) / raster::res( asy.nrd )[2] )
# paste( ( raster::extent( car.nrd )[2] - raster::extent( car.nrd )[1] ) / raster::res( car.nrd )[1] , ( raster::extent( car.nrd )[4] - raster::extent( car.nrd )[3] ) / raster::res( car.nrd )[2] )

# ### Modificar extent segun extent de cluster
# slo.nrd.ext <- raster::extent( raster::extent( cla.grd )[2] , raster::extent( cla.grd )[1] , raster::extent( cla.grd )[4] , raster::extent( cla.grd )[3] ) ; raster::setExtent( slo.nrd , slo.nrd.ext )
# dem.nrd.ext <- raster::extent( raster::extent( cla.grd )[2] , raster::extent( cla.grd )[1] , raster::extent( cla.grd )[4] , raster::extent( cla.grd )[3] ) ; raster::setExtent( dem.nrd , dem.nrd.ext )
# tri.nrd.ext <- raster::extent( raster::extent( cla.grd )[2] , raster::extent( cla.grd )[1] , raster::extent( cla.grd )[4] , raster::extent( cla.grd )[3] ) ; raster::setExtent( tri.nrd , tri.nrd.ext )
# asx.nrd.ext <- raster::extent( raster::extent( cla.grd )[2] , raster::extent( cla.grd )[1] , raster::extent( cla.grd )[4] , raster::extent( cla.grd )[3] ) ; raster::setExtent( asx.nrd , asx.nrd.ext )
# asy.nrd.ext <- raster::extent( raster::extent( cla.grd )[2] , raster::extent( cla.grd )[1] , raster::extent( cla.grd )[4] , raster::extent( cla.grd )[3] ) ; raster::setExtent( asy.nrd , asy.nrd.ext )
# car.nrd.ext <- raster::extent( raster::extent( cla.grd )[2] , raster::extent( cla.grd )[1] , raster::extent( cla.grd )[4] , raster::extent( cla.grd )[3] ) ; raster::setExtent( car.nrd , car.nrd.ext )

# ### Remuestrear gdalwarp paso 01
# system( gdalwarp -r near -ts 6575 5896 -wm 2048 -multi -wo NUM_THREADS=ALL_CPUS -co BLOCKXSIZE=256 -co BLOCKYSIZE=256 -co TILED=YES -co NUM_THREADS=ALL_CPUS -co COMPRESS=LZW -overwrite "../../DriveBiotopos/Daniel_Zamorano/Pixel25/Transf_slope_px25.tif"        "../../DriveBiotopos/Daniel_Zamorano/Pixel25near/Transf_slope_px25_near.tif"        )
# system( gdalwarp -r near -ts 6575 5896 -wm 2048 -multi -wo NUM_THREADS=ALL_CPUS -co BLOCKXSIZE=256 -co BLOCKYSIZE=256 -co TILED=YES -co NUM_THREADS=ALL_CPUS -co COMPRESS=LZW -overwrite "../../DriveBiotopos/Daniel_Zamorano/Pixel25/Transf_DEM_px25.tif"          "../../DriveBiotopos/Daniel_Zamorano/Pixel25near/Transf_DEM_px25_near.tif"          )
# system( gdalwarp -r near -ts 6575 5896 -wm 2048 -multi -wo NUM_THREADS=ALL_CPUS -co BLOCKXSIZE=256 -co BLOCKYSIZE=256 -co TILED=YES -co NUM_THREADS=ALL_CPUS -co COMPRESS=LZW -overwrite "../../DriveBiotopos/Daniel_Zamorano/Pixel25/Transf_TRI_px25.tif"          "../../DriveBiotopos/Daniel_Zamorano/Pixel25near/Transf_TRI_px25_near.tif"          )
# system( gdalwarp -r near -ts 6575 5896 -wm 2048 -multi -wo NUM_THREADS=ALL_CPUS -co BLOCKXSIZE=256 -co BLOCKYSIZE=256 -co TILED=YES -co NUM_THREADS=ALL_CPUS -co COMPRESS=LZW -overwrite "../../DriveBiotopos/Daniel_Zamorano/Pixel25/Transf_asp_x_px25.tif"        "../../DriveBiotopos/Daniel_Zamorano/Pixel25near/Transf_asp_x_px25_near.tif"        )
# system( gdalwarp -r near -ts 6575 5896 -wm 2048 -multi -wo NUM_THREADS=ALL_CPUS -co BLOCKXSIZE=256 -co BLOCKYSIZE=256 -co TILED=YES -co NUM_THREADS=ALL_CPUS -co COMPRESS=LZW -overwrite "../../DriveBiotopos/Daniel_Zamorano/Pixel25/Transf_asp_y_px25.tif"        "../../DriveBiotopos/Daniel_Zamorano/Pixel25near/Transf_asp_y_px25_near.tif"        )
# system( gdalwarp -r near -ts 6575 5896 -wm 2048 -multi -wo NUM_THREADS=ALL_CPUS -co BLOCKXSIZE=256 -co BLOCKYSIZE=256 -co TILED=YES -co NUM_THREADS=ALL_CPUS -co COMPRESS=LZW -overwrite "../../DriveBiotopos/Daniel_Zamorano/Pixel25/Transf_carbono_2013_px25.tif" "../../DriveBiotopos/Daniel_Zamorano/Pixel25near/Transf_carbono_2013_px25_near.tif" )

# ### Cargar archivos tif fueron llevados a tamaño pixel 25 x 25 para normalizar a raster cluster
# slo.ner <- raster::raster( "../../DriveBiotopos/Daniel_Zamorano/Pixel25near/Transf_slope_px25_near.tif"        )
# dem.ner <- raster::raster( "../../DriveBiotopos/Daniel_Zamorano/Pixel25near/Transf_DEM_px25_near.tif"          )
# tri.ner <- raster::raster( "../../DriveBiotopos/Daniel_Zamorano/Pixel25near/Transf_TRI_px25_near.tif"          )
# asx.ner <- raster::raster( "../../DriveBiotopos/Daniel_Zamorano/Pixel25near/Transf_asp_x_px25_near.tif"        )
# asy.ner <- raster::raster( "../../DriveBiotopos/Daniel_Zamorano/Pixel25near/Transf_asp_y_px25_near.tif"        )
# car.ner <- raster::raster( "../../DriveBiotopos/Daniel_Zamorano/Pixel25near/Transf_carbono_2013_px25_near.tif" )

# ### Escribir raster grd salida referencia cluster paso 01
# slo.ned <- raster::writeRaster( slo.ner , filename = "../../DriveBiotopos/Daniel_Zamorano/Pixel25near/Transf_slope_px25_near.grd"         , datatype = "FLT4S" , overwrite = T )
# dem.ned <- raster::writeRaster( dem.ner , filename = "../../DriveBiotopos/Daniel_Zamorano/Pixel25near/Transf_DEM_px25_near.grd"           , datatype = "FLT4S" , overwrite = T )
# tri.ned <- raster::writeRaster( tri.ner , filename = "../../DriveBiotopos/Daniel_Zamorano/Pixel25near/Transf_TRI_px25_near.grd"           , datatype = "FLT4S" , overwrite = T )
# asx.ned <- raster::writeRaster( asx.ner , filename = "../../DriveBiotopos/Daniel_Zamorano/Pixel25near/Transf_asp_x_px25_near.grd"         , datatype = "FLT4S" , overwrite = T )
# asy.ned <- raster::writeRaster( asy.ner , filename = "../../DriveBiotopos/Daniel_Zamorano/Pixel25near/Transf_asp_y_px25_near.grd"         , datatype = "FLT4S" , overwrite = T )
# car.ned <- raster::writeRaster( car.ner , filename = "../../DriveBiotopos/Daniel_Zamorano/Pixel25near/Transf_carbono_2013_px25_near.grd"  , datatype = "FLT4S" , overwrite = T )

# ### Remuestrear paso 01
# slo.nrd01 <- rasterfaster::resampleBy( slo.grd , factor = c( raster::res( cla.grd )[1] / raster::res( slo.nrd )[1] , raster::res( cla.grd )[2] / raster::res( slo.nrd )[2] ) , method = "ngb" )
# dem.nrd01 <- rasterfaster::resampleBy( dem.grd , factor = c( raster::res( cla.grd )[1] / raster::res( dem.nrd )[1] , raster::res( cla.grd )[2] / raster::res( dem.nrd )[2] ) , method = "ngb" )
# tri.nrd01 <- rasterfaster::resampleBy( tri.grd , factor = c( raster::res( cla.grd )[1] / raster::res( tri.nrd )[1] , raster::res( cla.grd )[2] / raster::res( tri.nrd )[2] ) , method = "ngb" )
# asx.nrd01 <- rasterfaster::resampleBy( asx.grd , factor = c( raster::res( cla.grd )[1] / raster::res( asx.nrd )[1] , raster::res( cla.grd )[2] / raster::res( asx.nrd )[2] ) , method = "ngb" )
# asy.nrd01 <- rasterfaster::resampleBy( asy.grd , factor = c( raster::res( cla.grd )[1] / raster::res( asy.nrd )[1] , raster::res( cla.grd )[2] / raster::res( asy.nrd )[2] ) , method = "ngb" )
# car.nrd01 <- rasterfaster::resampleBy( car.grd , factor = c( raster::res( cla.grd )[1] / raster::res( car.nrd )[1] , raster::res( cla.grd )[2] / raster::res( car.nrd )[2] ) , method = "ngb" )

# ### Remuestrear paso 02
# slo.grd01 <- rasterfaster::resampleTo( slo.grd   , ncol = dim( cla.grd )[2] , nrow = dim( cla.grd )[1] , method = "ngb" )
# dem.grd01 <- rasterfaster::resampleTo( dem.grd   , ncol = dim( cla.grd )[2] , nrow = dim( cla.grd )[1] , method = "ngb" )
# tri.grd01 <- rasterfaster::resampleTo( tri.grd   , ncol = dim( cla.grd )[2] , nrow = dim( cla.grd )[1] , method = "ngb" )
# asx.grd01 <- rasterfaster::resampleTo( asx.grd   , ncol = dim( cla.grd )[2] , nrow = dim( cla.grd )[1] , method = "ngb" )
# asy.grd01 <- rasterfaster::resampleTo( asy.grd   , ncol = dim( cla.grd )[2] , nrow = dim( cla.grd )[1] , method = "ngb" )
# car.grd01 <- rasterfaster::resampleTo( car.grd   , ncol = dim( cla.grd )[2] , nrow = dim( cla.grd )[1] , method = "ngb" )

# ### Escribir raster tif salida referencia cluster paso 01
# slo.tif <- raster::writeRaster( slo.rsm , filename = "../../DriveBiotopos/Daniel_Zamorano/Pixel25Norm/Transf_slope_px25.tif"         , datatype = "FLT4S" , overwrite = T )
# dem.tif <- raster::writeRaster( dem.rsm , filename = "../../DriveBiotopos/Daniel_Zamorano/Pixel25Norm/Transf_DEM_px25.tif"           , datatype = "FLT4S" , overwrite = T )
# tri.tif <- raster::writeRaster( tri.rsm , filename = "../../DriveBiotopos/Daniel_Zamorano/Pixel25Norm/Transf_TRI_px25.tif"           , datatype = "FLT4S" , overwrite = T )
# asx.tif <- raster::writeRaster( asx.rsm , filename = "../../DriveBiotopos/Daniel_Zamorano/Pixel25Norm/Transf_asp_x_px25.tif"         , datatype = "FLT4S" , overwrite = T )
# asy.tif <- raster::writeRaster( asy.rsm , filename = "../../DriveBiotopos/Daniel_Zamorano/Pixel25Norm/Transf_asp_y_px25.tif"         , datatype = "FLT4S" , overwrite = T )
# car.tif <- raster::writeRaster( car.rsm , filename = "../../DriveBiotopos/Daniel_Zamorano/Pixel25Norm/Transf_carbono_2013_px25.tif"  , datatype = "FLT4S" , overwrite = T )

