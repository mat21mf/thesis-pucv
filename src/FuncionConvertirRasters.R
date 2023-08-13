  #!/usr/bin/env R
  args = commandArgs(trailingOnly=TRUE)
  if (length(args)==0) {
    stop("Al menos un argumento debe ser suministrado.\n", call.=FALSE)
  }

  ConvertirRaster <- function( strfleinp , strfleout ){
    strdfminp <- raster::raster( strfleinp )
    strdfmout <- raster::writeRaster( strdfminp , strfleout , datatype = "FLT4S" , overwrite = T )
    return( strdfmout )
  }

  if(!interactive()){
    strdfmout <-
    ConvertirRaster(
    strfleinp   = args[1]
   ,strfleout   = args[2]
    )
  }

