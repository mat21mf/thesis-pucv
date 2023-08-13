  #!/usr/bin/env R
  args = commandArgs(trailingOnly=TRUE)
  if (length(args)==0) {
    stop("Al menos un argumento debe ser suministrado.\n", call.=FALSE)
  }

  CargarBigMatrix <- function( strflecsv , strflepth , strflebin , strfledsc ){
    if( file.exists( paste( strflepth , strflebin , sep=.Platform$file.sep ) ) ){
      file.remove( paste( strflepth , strflebin , sep=.Platform$file.sep ) )
      unlink( strflebin )
    }
    if( file.exists( paste( strflepth , strfledsc , sep=.Platform$file.sep ) ) ){
      file.remove( paste( strflepth , strfledsc , sep=.Platform$file.sep ) )
      unlink( strfledsc )
    }
    bigmemory::read.big.matrix( strflecsv , type = "integer" , header = TRUE , sep = " " ,
                                backingpath = strflepth ,
                                backingfile = strflebin ,
                                descriptorfile = strfledsc ,
                                shared = TRUE )
    gc()
  }

  if(!interactive()){
    CargarBigMatrix(
    strflecsv = args[1]
   ,strflepth = args[2]
   ,strflebin = args[3]
   ,strfledsc = args[4]
    )
  }
