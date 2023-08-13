# #!/usr/bin/env R
# args = commandArgs(trailingOnly=TRUE)
# if (length(args)==0) {
#   stop("Al menos un argumento debe ser suministrado.\n", call.=FALSE)
# }

  ResumirRaster <- function( strfleinp , strrdaout , strdfmout ){
    strdfminp <- raster::raster( strfleinp )
    strdfmout <- data.frame( matrix( NA , ncol = 11 , nrow = 1 ) )
    colnames ( strdfmout ) <- c( "Archivo" ,
                                 "Valor min" ,
                                 "Valor max" ,
                                 "Columnas" ,
                                 "Filas" ,
                                 "Pix ancho" ,
                                 "Pix alto" ,
                                 "Lim xmin" ,
                                 "Lim ymin" ,
                                 "Lim xmax" ,
                                 "Lim ymax" )
    strdfmout[ 1 ,  1 ] <- paste( "D:/Matias_Rebolledo/Raster/CapasFAU23_5/" , strfleinp , sep = "" )
    strdfmout[ 1 ,  1 ] <- paste( strsplit( strdfmout[ 1 ,  1 ] , "[.]" )[[1]][1] , "tif" , sep = "." )
    strdfmout[ 1 ,  2 ] <- raster::minValue( strdfminp )
    strdfmout[ 1 ,  3 ] <- raster::maxValue( strdfminp )
    strdfmout[ 1 ,  4 ] <- dim( strdfminp )[2]
    strdfmout[ 1 ,  5 ] <- dim( strdfminp )[1]
    strdfmout[ 1 ,  6 ] <- raster::xres( strdfminp )
    strdfmout[ 1 ,  7 ] <- raster::yres( strdfminp )
    strdfmout[ 1 ,  8 ] <- raster::extent( strdfminp )[1]
    strdfmout[ 1 ,  9 ] <- raster::extent( strdfminp )[3]
    strdfmout[ 1 , 10 ] <- raster::extent( strdfminp )[2]
    strdfmout[ 1 , 11 ] <- raster::extent( strdfminp )[4]
    save( strdfmout , file = strrdaout )
    return( strdfmout )
  }

# if(!interactive()){
#   strdfmout <-
#   ResumirRaster(
#   strfleinp   = args[1]
#  ,strrdaout   = args[2]
#  ,strdfmout   = args[3]
#   )
# }

