  ### cargar
  library( bigmemory )
  library( biganalytics )

  ### obtener rutas y variables
  source( "DefinirVariables.R" )

  ### cambiar ruta
  setwd(bakdir)

  ### cargar objetos
  grupo00bm <- bigmemory::attach.big.matrix( dget( strvar00 ) )
  grupo01bm <- bigmemory::attach.big.matrix( dget( strvar01 ) )
  grupo02bm <- bigmemory::attach.big.matrix( dget( strvar02 ) )
  grupo03bm <- bigmemory::attach.big.matrix( dget( strvar03 ) )
  grupo04bm <- bigmemory::attach.big.matrix( dget( strvar04 ) )
  grupo05bm <- bigmemory::attach.big.matrix( dget( strvar05 ) )
  grupo06bm <- bigmemory::attach.big.matrix( dget( strvar06 ) )

  print( as.numeric( biganalytics::colna( grupo00bm ) ) )
  print( as.numeric( biganalytics::colna( grupo01bm ) ) )
  print( as.numeric( biganalytics::colna( grupo02bm ) ) )
  print( as.numeric( biganalytics::colna( grupo03bm ) ) )
  print( as.numeric( biganalytics::colna( grupo04bm ) ) )
  print( as.numeric( biganalytics::colna( grupo05bm ) ) )
  print( as.numeric( biganalytics::colna( grupo06bm ) ) )

# ### proporcion de celdas con valor para zonas sin contar area total
# print( paste( "Obs totales" , "Obs disponibles" , "Prop obs disponibles" , sep = " " ) )
# print( paste( bigmemory::nrow( grupo00bm ) , ( bigmemory::nrow( grupo00bm ) - as.numeric( biganalytics::colna( grupo00bm )[1] ) ) , ( bigmemory::nrow( grupo00bm ) - as.numeric( biganalytics::colna( grupo00bm )[1] ) ) / bigmemory::nrow( grupo00bm ) * 100 , sep = "\t" ) )
# print( paste( bigmemory::nrow( grupo01bm ) , ( bigmemory::nrow( grupo01bm ) - as.numeric( biganalytics::colna( grupo01bm )[1] ) ) , ( bigmemory::nrow( grupo01bm ) - as.numeric( biganalytics::colna( grupo01bm )[1] ) ) / bigmemory::nrow( grupo01bm ) * 100 , sep = "\t" ) )
# print( paste( bigmemory::nrow( grupo02bm ) , ( bigmemory::nrow( grupo02bm ) - as.numeric( biganalytics::colna( grupo02bm )[1] ) ) , ( bigmemory::nrow( grupo02bm ) - as.numeric( biganalytics::colna( grupo02bm )[1] ) ) / bigmemory::nrow( grupo02bm ) * 100 , sep = "\t" ) )
# print( paste( bigmemory::nrow( grupo03bm ) , ( bigmemory::nrow( grupo03bm ) - as.numeric( biganalytics::colna( grupo03bm )[1] ) ) , ( bigmemory::nrow( grupo03bm ) - as.numeric( biganalytics::colna( grupo03bm )[1] ) ) / bigmemory::nrow( grupo03bm ) * 100 , sep = "\t" ) )
# print( paste( bigmemory::nrow( grupo04bm ) , ( bigmemory::nrow( grupo04bm ) - as.numeric( biganalytics::colna( grupo04bm )[1] ) ) , ( bigmemory::nrow( grupo04bm ) - as.numeric( biganalytics::colna( grupo04bm )[1] ) ) / bigmemory::nrow( grupo04bm ) * 100 , sep = "\t" ) )
# print( paste( bigmemory::nrow( grupo05bm ) , ( bigmemory::nrow( grupo05bm ) - as.numeric( biganalytics::colna( grupo05bm )[1] ) ) , ( bigmemory::nrow( grupo05bm ) - as.numeric( biganalytics::colna( grupo05bm )[1] ) ) / bigmemory::nrow( grupo05bm ) * 100 , sep = "\t" ) )
# print( paste( bigmemory::nrow( grupo06bm ) , ( bigmemory::nrow( grupo06bm ) - as.numeric( biganalytics::colna( grupo06bm )[1] ) ) , ( bigmemory::nrow( grupo06bm ) - as.numeric( biganalytics::colna( grupo06bm )[1] ) ) / bigmemory::nrow( grupo06bm ) * 100 , sep = "\t" ) )

# print( ""                         )
# print( "imprimir max min mean sd" )
# print( ""                         )
# print( paste( biganalytics::colmax( grupo00bm ) , biganalytics::colmin( grupo00bm ) , sep = " " ) )
# print( paste( biganalytics::colmax( grupo01bm ) , biganalytics::colmin( grupo01bm ) , sep = " " ) )
# print( paste( biganalytics::colmax( grupo02bm ) , biganalytics::colmin( grupo02bm ) , sep = " " ) )
# print( paste( biganalytics::colmax( grupo03bm ) , biganalytics::colmin( grupo03bm ) , sep = " " ) )
# print( paste( biganalytics::colmax( grupo04bm ) , biganalytics::colmin( grupo04bm ) , sep = " " ) )
# print( paste( biganalytics::colmax( grupo05bm ) , biganalytics::colmin( grupo05bm ) , sep = " " ) )
# print( paste( biganalytics::colmax( grupo06bm ) , biganalytics::colmin( grupo06bm ) , sep = " " ) )

  ### cambiar ruta
  setwd(srcdir)
