
  ### Cargar archivos grd paso 01 procesados con gdal
  asp     <- raster::raster( "D:/BIOTOPOS/CapasFAU/Aspect.tif"  )
  dem     <- raster::raster( "D:/BIOTOPOS/CapasFAU/DEM.tif"     )
  ndm     <- raster::raster( "D:/BIOTOPOS/CapasFAU/NDMI.tif"    )
  slo     <- raster::raster( "D:/BIOTOPOS/CapasFAU/Slope.tif"   )
  tri     <- raster::raster( "D:/BIOTOPOS/CapasFAU/TRI.tif"     )
  twi     <- raster::raster( "D:/BIOTOPOS/CapasFAU/TWI.tif"     )
 #pli     <- raster::raster( "D:/BIOTOPOS/CapasFAU/Pliscof.grd" )

  ### Cargar archivos grd paso 01 procesados con gdal
  asp.grd <- raster::writeRaster( asp                 , "D:/Matias_Rebolledo/Raster/CapasFAU/Aspect.grd"  , datatype = "FLT4S" , overwrite = T )
  dem.grd <- raster::writeRaster( dem                 , "D:/Matias_Rebolledo/Raster/CapasFAU/DEM.grd"     , datatype = "FLT4S" , overwrite = T )
  ndm.grd <- raster::writeRaster( ndm                 , "D:/Matias_Rebolledo/Raster/CapasFAU/NDMI.grd"    , datatype = "FLT4S" , overwrite = T )
  slo.grd <- raster::writeRaster( slo                 , "D:/Matias_Rebolledo/Raster/CapasFAU/Slope.grd"   , datatype = "FLT4S" , overwrite = T )
  tri.grd <- raster::writeRaster( tri                 , "D:/Matias_Rebolledo/Raster/CapasFAU/TRI.grd"     , datatype = "FLT4S" , overwrite = T )
  twi.grd <- raster::writeRaster( twi                 , "D:/Matias_Rebolledo/Raster/CapasFAU/TWI.grd"     , datatype = "FLT4S" , overwrite = T )
 #pli.grd <- raster::writeRaster( pli                 , "D:/Matias_Rebolledo/Raster/CapasFAU/Pliscof.grd" , datatype = "FLT4S" , overwrite = T )

  ### Quitar objetos sin uso
  rm( asp     )
  rm( dem     )
  rm( ndm     )
  rm( slo     )
  rm( tri     )
  rm( twi     )

  ### revisar capas pisos para cortes
  pisg00     <- raster::raster( "../../DriveBiotopos/Matias_Rebolledo/Raster/CapasFAU/Pisos/Pisos_2018autm19_ClipGEFcomun.tif"          )
  pisg01     <- raster::raster( "../../DriveBiotopos/Matias_Rebolledo/Raster/CapasFAU/Pisos/Pisos_2018autm19_ClipGEFcomun__grupo01.tif" )
  pisg02     <- raster::raster( "../../DriveBiotopos/Matias_Rebolledo/Raster/CapasFAU/Pisos/Pisos_2018autm19_ClipGEFcomun__grupo02.tif" )
  pisg03     <- raster::raster( "../../DriveBiotopos/Matias_Rebolledo/Raster/CapasFAU/Pisos/Pisos_2018autm19_ClipGEFcomun__grupo03.tif" )
  pisg04     <- raster::raster( "../../DriveBiotopos/Matias_Rebolledo/Raster/CapasFAU/Pisos/Pisos_2018autm19_ClipGEFcomun__grupo04.tif" )
  pisg05     <- raster::raster( "../../DriveBiotopos/Matias_Rebolledo/Raster/CapasFAU/Pisos/Pisos_2018autm19_ClipGEFcomun__grupo05.tif" )
  pisg06     <- raster::raster( "../../DriveBiotopos/Matias_Rebolledo/Raster/CapasFAU/Pisos/Pisos_2018autm19_ClipGEFcomun__grupo06.tif" )

  ### grabar capas pisos para cortes
  pisg00.grd <- raster::writeRaster( pisg00 , "../../DriveBiotopos/Matias_Rebolledo/Raster/CapasFAU/Pisos/Pisos_2018autm19_ClipGEFcomun.grd"          , datatype = "FLT4S" , overwrite = T )
  pisg01.grd <- raster::writeRaster( pisg01 , "../../DriveBiotopos/Matias_Rebolledo/Raster/CapasFAU/Pisos/Pisos_2018autm19_ClipGEFcomun__grupo01.grd" , datatype = "FLT4S" , overwrite = T )
  pisg02.grd <- raster::writeRaster( pisg02 , "../../DriveBiotopos/Matias_Rebolledo/Raster/CapasFAU/Pisos/Pisos_2018autm19_ClipGEFcomun__grupo02.grd" , datatype = "FLT4S" , overwrite = T )
  pisg03.grd <- raster::writeRaster( pisg03 , "../../DriveBiotopos/Matias_Rebolledo/Raster/CapasFAU/Pisos/Pisos_2018autm19_ClipGEFcomun__grupo03.grd" , datatype = "FLT4S" , overwrite = T )
  pisg04.grd <- raster::writeRaster( pisg04 , "../../DriveBiotopos/Matias_Rebolledo/Raster/CapasFAU/Pisos/Pisos_2018autm19_ClipGEFcomun__grupo04.grd" , datatype = "FLT4S" , overwrite = T )
  pisg05.grd <- raster::writeRaster( pisg05 , "../../DriveBiotopos/Matias_Rebolledo/Raster/CapasFAU/Pisos/Pisos_2018autm19_ClipGEFcomun__grupo05.grd" , datatype = "FLT4S" , overwrite = T )
  pisg06.grd <- raster::writeRaster( pisg06 , "../../DriveBiotopos/Matias_Rebolledo/Raster/CapasFAU/Pisos/Pisos_2018autm19_ClipGEFcomun__grupo06.grd" , datatype = "FLT4S" , overwrite = T )

  ### cargar capas pisos para cortes
  pisg00.grd <- raster::raster( "../../DriveBiotopos/Matias_Rebolledo/Raster/CapasFAU/Pisos/Pisos_2018autm19_ClipGEFcomun.grd"          )
  pisg01.grd <- raster::raster( "../../DriveBiotopos/Matias_Rebolledo/Raster/CapasFAU/Pisos/Pisos_2018autm19_ClipGEFcomun__grupo01.grd" )
  pisg02.grd <- raster::raster( "../../DriveBiotopos/Matias_Rebolledo/Raster/CapasFAU/Pisos/Pisos_2018autm19_ClipGEFcomun__grupo02.grd" )
  pisg03.grd <- raster::raster( "../../DriveBiotopos/Matias_Rebolledo/Raster/CapasFAU/Pisos/Pisos_2018autm19_ClipGEFcomun__grupo03.grd" )
  pisg04.grd <- raster::raster( "../../DriveBiotopos/Matias_Rebolledo/Raster/CapasFAU/Pisos/Pisos_2018autm19_ClipGEFcomun__grupo04.grd" )
  pisg05.grd <- raster::raster( "../../DriveBiotopos/Matias_Rebolledo/Raster/CapasFAU/Pisos/Pisos_2018autm19_ClipGEFcomun__grupo05.grd" )
  pisg06.grd <- raster::raster( "../../DriveBiotopos/Matias_Rebolledo/Raster/CapasFAU/Pisos/Pisos_2018autm19_ClipGEFcomun__grupo06.grd" )

  ### imprimir dimensiones para corte con gdalwarp
  paste( "-ts" , base::dim( pisg00.grd )[2] , base::dim( pisg00.grd )[1] , "-te" , raster::extent( pisg00.grd )[1] , raster::extent( pisg00.grd )[3] , raster::extent( pisg00.grd )[2] , raster::extent( pisg00.grd )[4] , sep = " " )
  paste( "-ts" , base::dim( pisg01.grd )[2] , base::dim( pisg01.grd )[1] , "-te" , raster::extent( pisg01.grd )[1] , raster::extent( pisg01.grd )[3] , raster::extent( pisg01.grd )[2] , raster::extent( pisg01.grd )[4] , sep = " " )
  paste( "-ts" , base::dim( pisg02.grd )[2] , base::dim( pisg02.grd )[1] , "-te" , raster::extent( pisg02.grd )[1] , raster::extent( pisg02.grd )[3] , raster::extent( pisg02.grd )[2] , raster::extent( pisg02.grd )[4] , sep = " " )
  paste( "-ts" , base::dim( pisg03.grd )[2] , base::dim( pisg03.grd )[1] , "-te" , raster::extent( pisg03.grd )[1] , raster::extent( pisg03.grd )[3] , raster::extent( pisg03.grd )[2] , raster::extent( pisg03.grd )[4] , sep = " " )
  paste( "-ts" , base::dim( pisg04.grd )[2] , base::dim( pisg04.grd )[1] , "-te" , raster::extent( pisg04.grd )[1] , raster::extent( pisg04.grd )[3] , raster::extent( pisg04.grd )[2] , raster::extent( pisg04.grd )[4] , sep = " " )
  paste( "-ts" , base::dim( pisg05.grd )[2] , base::dim( pisg05.grd )[1] , "-te" , raster::extent( pisg05.grd )[1] , raster::extent( pisg05.grd )[3] , raster::extent( pisg05.grd )[2] , raster::extent( pisg05.grd )[4] , sep = " " )
  paste( "-ts" , base::dim( pisg06.grd )[2] , base::dim( pisg06.grd )[1] , "-te" , raster::extent( pisg06.grd )[1] , raster::extent( pisg06.grd )[3] , raster::extent( pisg06.grd )[2] , raster::extent( pisg06.grd )[4] , sep = " " )

  ### revisar capas grandes sin cortar
  aspbig     <- raster::raster( "../../DriveBiotopos/Matias_Rebolledo/Raster/CapasFAU/Aspect.tif" )
  dembig     <- raster::raster( "../../DriveBiotopos/Matias_Rebolledo/Raster/CapasFAU/DEM.tif"    )
  ndmbig     <- raster::raster( "../../DriveBiotopos/Matias_Rebolledo/Raster/CapasFAU/NDMI.tif"   )
  slobig     <- raster::raster( "../../DriveBiotopos/Matias_Rebolledo/Raster/CapasFAU/Slope.tif"  )
  tribig     <- raster::raster( "../../DriveBiotopos/Matias_Rebolledo/Raster/CapasFAU/TRI.tif"    )
  twibig     <- raster::raster( "../../DriveBiotopos/Matias_Rebolledo/Raster/CapasFAU/TWI.tif"    )

  ###
  ### creacion grupo00
  ###

  ### revisar capas grupo00
  aspg00     <- raster::raster( "../../DriveBiotopos/Matias_Rebolledo/Raster/CapasFAU/grupo00/Aspect_remuestreado_grupo00.tif" )
  demg00     <- raster::raster( "../../DriveBiotopos/Matias_Rebolledo/Raster/CapasFAU/grupo00/DEM_remuestreado_grupo00.tif"    )
  ndmg00     <- raster::raster( "../../DriveBiotopos/Matias_Rebolledo/Raster/CapasFAU/grupo00/NDMI_remuestreado_grupo00.tif"   )
  slog00     <- raster::raster( "../../DriveBiotopos/Matias_Rebolledo/Raster/CapasFAU/grupo00/Slope_remuestreado_grupo00.tif"  )
  trig00     <- raster::raster( "../../DriveBiotopos/Matias_Rebolledo/Raster/CapasFAU/grupo00/TRI_remuestreado_grupo00.tif"    )
  twig00     <- raster::raster( "../../DriveBiotopos/Matias_Rebolledo/Raster/CapasFAU/grupo00/TWI_remuestreado_grupo00.tif"    )

  ### grabar capas grupo00 sin cortar
  aspg00.grd <- raster::writeRaster( aspg00    , "../../DriveBiotopos/Matias_Rebolledo/Raster/CapasFAU/grupo00/Aspect_remuestreado_grupo00.grd" , datatype = "FLT4S" , overwrite = T )
  demg00.grd <- raster::writeRaster( demg00    , "../../DriveBiotopos/Matias_Rebolledo/Raster/CapasFAU/grupo00/DEM_remuestreado_grupo00.grd"    , datatype = "FLT4S" , overwrite = T )
  ndmg00.grd <- raster::writeRaster( ndmg00    , "../../DriveBiotopos/Matias_Rebolledo/Raster/CapasFAU/grupo00/NDMI_remuestreado_grupo00.grd"   , datatype = "FLT4S" , overwrite = T )
  slog00.grd <- raster::writeRaster( slog00    , "../../DriveBiotopos/Matias_Rebolledo/Raster/CapasFAU/grupo00/Slope_remuestreado_grupo00.grd"  , datatype = "FLT4S" , overwrite = T )
  trig00.grd <- raster::writeRaster( trig00    , "../../DriveBiotopos/Matias_Rebolledo/Raster/CapasFAU/grupo00/TRI_remuestreado_grupo00.grd"    , datatype = "FLT4S" , overwrite = T )
  twig00.grd <- raster::writeRaster( twig00    , "../../DriveBiotopos/Matias_Rebolledo/Raster/CapasFAU/grupo00/TWI_remuestreado_grupo00.grd"    , datatype = "FLT4S" , overwrite = T )

  ###
  ### revision grupo00
  ###

  ### cargar capas grupo00
  pisg00.grd <- raster::raster( "../../DriveBiotopos/Matias_Rebolledo/Raster/CapasFAU/Pisos/Pisos_2018autm19_ClipGEFcomun.grd" )
  aspg00.grd <- raster::raster( "../../DriveBiotopos/Matias_Rebolledo/Raster/CapasFAU/grupo00/Aspect_remuestreado_grupo00.grd" )
  demg00.grd <- raster::raster( "../../DriveBiotopos/Matias_Rebolledo/Raster/CapasFAU/grupo00/DEM_remuestreado_grupo00.grd"    )
  ndmg00.grd <- raster::raster( "../../DriveBiotopos/Matias_Rebolledo/Raster/CapasFAU/grupo00/NDMI_remuestreado_grupo00.grd"   )
  slog00.grd <- raster::raster( "../../DriveBiotopos/Matias_Rebolledo/Raster/CapasFAU/grupo00/Slope_remuestreado_grupo00.grd"  )
  trig00.grd <- raster::raster( "../../DriveBiotopos/Matias_Rebolledo/Raster/CapasFAU/grupo00/TRI_remuestreado_grupo00.grd"    )
  twig00.grd <- raster::raster( "../../DriveBiotopos/Matias_Rebolledo/Raster/CapasFAU/grupo00/TWI_remuestreado_grupo00.grd"    )

  ### revisar dimensiones segun grupo00
  paste( "-ts" , base::dim( pisg00.grd )[2] , base::dim( pisg00.grd )[1] , "-te" , raster::extent( pisg00.grd )[1] , raster::extent( pisg00.grd )[3] , raster::extent( pisg00.grd )[2] , raster::extent( pisg00.grd )[4] , sep = " " )
  paste( "-ts" , base::dim( aspg00.grd )[2] , base::dim( aspg00.grd )[1] , "-te" , raster::extent( aspg00.grd )[1] , raster::extent( aspg00.grd )[3] , raster::extent( aspg00.grd )[2] , raster::extent( aspg00.grd )[4] , sep = " " )
  paste( "-ts" , base::dim( demg00.grd )[2] , base::dim( demg00.grd )[1] , "-te" , raster::extent( demg00.grd )[1] , raster::extent( demg00.grd )[3] , raster::extent( demg00.grd )[2] , raster::extent( demg00.grd )[4] , sep = " " )
  paste( "-ts" , base::dim( ndmg00.grd )[2] , base::dim( ndmg00.grd )[1] , "-te" , raster::extent( ndmg00.grd )[1] , raster::extent( ndmg00.grd )[3] , raster::extent( ndmg00.grd )[2] , raster::extent( ndmg00.grd )[4] , sep = " " )
  paste( "-ts" , base::dim( slog00.grd )[2] , base::dim( slog00.grd )[1] , "-te" , raster::extent( slog00.grd )[1] , raster::extent( slog00.grd )[3] , raster::extent( slog00.grd )[2] , raster::extent( slog00.grd )[4] , sep = " " )
  paste( "-ts" , base::dim( trig00.grd )[2] , base::dim( trig00.grd )[1] , "-te" , raster::extent( trig00.grd )[1] , raster::extent( trig00.grd )[3] , raster::extent( trig00.grd )[2] , raster::extent( trig00.grd )[4] , sep = " " )
  paste( "-ts" , base::dim( twig00.grd )[2] , base::dim( twig00.grd )[1] , "-te" , raster::extent( twig00.grd )[1] , raster::extent( twig00.grd )[3] , raster::extent( twig00.grd )[2] , raster::extent( twig00.grd )[4] , sep = " " )

