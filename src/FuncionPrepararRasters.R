  PrepararRaster <- function( strdfminp , strfleinp , strffdout ){
    strgrdinp <- raster::raster( strfleinp )
    strdfminp <- raster::as.data.frame( strgrdinp , xy = T , na.rm = T )
    strffdout <- ff::as.ffdf( strdfminp )
    rm( strdfminp )
  }

