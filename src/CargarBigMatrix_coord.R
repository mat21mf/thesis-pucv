  ### cargar rutas
  source( "DefinirVariables.R" )

  ### cambiar ruta
  setwd(bakdir)

  if( file.exists( "grupo01xy.desc" ) ) file.remove( "grupo01xy.desc" )
  if( file.exists( "grupo02xy.desc" ) ) file.remove( "grupo02xy.desc" )
  if( file.exists( "grupo03xy.desc" ) ) file.remove( "grupo03xy.desc" )
  if( file.exists( "grupo04xy.desc" ) ) file.remove( "grupo04xy.desc" )
  if( file.exists( "grupo05xy.desc" ) ) file.remove( "grupo05xy.desc" )
  if( file.exists( "grupo06xy.desc" ) ) file.remove( "grupo06xy.desc" )
  if( file.exists( "grupo00xy.desc" ) ) file.remove( "grupo00xy.desc" )

  if( file.exists( "grupo01xy.bin" )  ) file.remove( "grupo01xy.bin" )
  if( file.exists( "grupo02xy.bin" )  ) file.remove( "grupo02xy.bin" )
  if( file.exists( "grupo03xy.bin" )  ) file.remove( "grupo03xy.bin" )
  if( file.exists( "grupo04xy.bin" )  ) file.remove( "grupo04xy.bin" )
  if( file.exists( "grupo05xy.bin" )  ) file.remove( "grupo05xy.bin" )
  if( file.exists( "grupo06xy.bin" )  ) file.remove( "grupo06xy.bin" )
  if( file.exists( "grupo00xy.bin" )  ) file.remove( "grupo00xy.bin" )

  ### revisar grupo00 desde mascara y remuestreo
  print( system.time( grupo01xy <- bigmemory::read.big.matrix( file.path( rasdir , "grupo01MaskSample/grupo01xy.csv" ) , header = T , sep = "," , type="double" , backingpath=NULL , backingfile="grupo01xy.bin" , descriptorfile="grupo01xy.desc" , shared = T ) ) )
  print( system.time( grupo02xy <- bigmemory::read.big.matrix( file.path( rasdir , "grupo02MaskSample/grupo02xy.csv" ) , header = T , sep = "," , type="double" , backingpath=NULL , backingfile="grupo02xy.bin" , descriptorfile="grupo02xy.desc" , shared = T ) ) )
  print( system.time( grupo03xy <- bigmemory::read.big.matrix( file.path( rasdir , "grupo03MaskSample/grupo03xy.csv" ) , header = T , sep = "," , type="double" , backingpath=NULL , backingfile="grupo03xy.bin" , descriptorfile="grupo03xy.desc" , shared = T ) ) )
  print( system.time( grupo04xy <- bigmemory::read.big.matrix( file.path( rasdir , "grupo04MaskSample/grupo04xy.csv" ) , header = T , sep = "," , type="double" , backingpath=NULL , backingfile="grupo04xy.bin" , descriptorfile="grupo04xy.desc" , shared = T ) ) )
  print( system.time( grupo05xy <- bigmemory::read.big.matrix( file.path( rasdir , "grupo05MaskSample/grupo05xy.csv" ) , header = T , sep = "," , type="double" , backingpath=NULL , backingfile="grupo05xy.bin" , descriptorfile="grupo05xy.desc" , shared = T ) ) )
  print( system.time( grupo06xy <- bigmemory::read.big.matrix( file.path( rasdir , "grupo06MaskSample/grupo06xy.csv" ) , header = T , sep = "," , type="double" , backingpath=NULL , backingfile="grupo06xy.bin" , descriptorfile="grupo06xy.desc" , shared = T ) ) )
  print( system.time( grupo00xy <- bigmemory::read.big.matrix( file.path( rasdir , "grupo00MaskSample/grupo00xy.csv" ) , header = T , sep = "," , type="double" , backingpath=NULL , backingfile="grupo00xy.bin" , descriptorfile="grupo00xy.desc" , shared = T ) ) )

  ### cambiar ruta
  setwd(srcdir)

