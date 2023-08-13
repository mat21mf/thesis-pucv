  ### Recomienda convertir en funcion este codigo
  ### como tambien los otros codigos que son ejecutados
  ### en modo lista para evitar crear todos los objetos
  ### secuencialmente y poder ir liberando espacio uno a uno

  ### librerias
  library( bigmemory )
  library( biganalytics )

  ### cargar rutas
  source( "DefinirVariables.R" )

  ### cambiar ruta
  setwd(bakdir)

  ### retirar archivo si existe
  if( file.exists( "grupo00stXM.desc" ) ) file.remove( c( "grupo00stXM.desc" , "grupo00stXM.bin" ) )
  if( file.exists( "grupo01stXM.desc" ) ) file.remove( c( "grupo01stXM.desc" , "grupo01stXM.bin" ) )
  if( file.exists( "grupo02stXM.desc" ) ) file.remove( c( "grupo02stXM.desc" , "grupo02stXM.bin" ) )
  if( file.exists( "grupo03stXM.desc" ) ) file.remove( c( "grupo03stXM.desc" , "grupo03stXM.bin" ) )
  if( file.exists( "grupo04stXM.desc" ) ) file.remove( c( "grupo04stXM.desc" , "grupo04stXM.bin" ) )
  if( file.exists( "grupo05stXM.desc" ) ) file.remove( c( "grupo05stXM.desc" , "grupo05stXM.bin" ) )
  if( file.exists( "grupo06stXM.desc" ) ) file.remove( c( "grupo06stXM.desc" , "grupo06stXM.bin" ) )

  ### crear matrix desviacion media no requiere cluster
  grupo00stXM <- bigmemory::big.matrix( bigmemory::nrow( grupo00st ) , bigmemory::ncol( grupo00st ) , init=0 , backingpath = NULL , backingfile = "grupo00stXM.bin" , descriptorfile = "grupo00stXM.desc" , type = "double" , shared = T )
  grupo01stXM <- bigmemory::big.matrix( bigmemory::nrow( grupo01st ) , bigmemory::ncol( grupo01st ) , init=0 , backingpath = NULL , backingfile = "grupo01stXM.bin" , descriptorfile = "grupo01stXM.desc" , type = "double" , shared = T )
  grupo02stXM <- bigmemory::big.matrix( bigmemory::nrow( grupo02st ) , bigmemory::ncol( grupo02st ) , init=0 , backingpath = NULL , backingfile = "grupo02stXM.bin" , descriptorfile = "grupo02stXM.desc" , type = "double" , shared = T )
  grupo03stXM <- bigmemory::big.matrix( bigmemory::nrow( grupo03st ) , bigmemory::ncol( grupo03st ) , init=0 , backingpath = NULL , backingfile = "grupo03stXM.bin" , descriptorfile = "grupo03stXM.desc" , type = "double" , shared = T )
  grupo04stXM <- bigmemory::big.matrix( bigmemory::nrow( grupo04st ) , bigmemory::ncol( grupo04st ) , init=0 , backingpath = NULL , backingfile = "grupo04stXM.bin" , descriptorfile = "grupo04stXM.desc" , type = "double" , shared = T )
  grupo05stXM <- bigmemory::big.matrix( bigmemory::nrow( grupo05st ) , bigmemory::ncol( grupo05st ) , init=0 , backingpath = NULL , backingfile = "grupo05stXM.bin" , descriptorfile = "grupo05stXM.desc" , type = "double" , shared = T )
  grupo06stXM <- bigmemory::big.matrix( bigmemory::nrow( grupo06st ) , bigmemory::ncol( grupo06st ) , init=0 , backingpath = NULL , backingfile = "grupo06stXM.bin" , descriptorfile = "grupo06stXM.desc" , type = "double" , shared = T )

  ### calcular desviacion media OK
  grupo00stXM[,1] <- ( grupo00st[,1] - as.numeric( biganalytics::colmean( grupo00st )[1] ) )^2;
  grupo00stXM[,2] <- ( grupo00st[,2] - as.numeric( biganalytics::colmean( grupo00st )[2] ) )^2;
  grupo00stXM[,3] <- ( grupo00st[,3] - as.numeric( biganalytics::colmean( grupo00st )[3] ) )^2;
  grupo00stXM[,4] <- ( grupo00st[,4] - as.numeric( biganalytics::colmean( grupo00st )[4] ) )^2;
  grupo00stXM[,5] <- ( grupo00st[,5] - as.numeric( biganalytics::colmean( grupo00st )[5] ) )^2;
  grupo00stXM[,6] <- ( grupo00st[,6] - as.numeric( biganalytics::colmean( grupo00st )[6] ) )^2;
  grupo00stXM[,7] <- ( grupo00st[,7] - as.numeric( biganalytics::colmean( grupo00st )[7] ) )^2;
  grupo00stXM[,8] <- ( grupo00st[,8] - as.numeric( biganalytics::colmean( grupo00st )[8] ) )^2;
  grupo01stXM[,1] <- ( grupo01st[,1] - as.numeric( biganalytics::colmean( grupo01st )[1] ) )^2;
  grupo01stXM[,2] <- ( grupo01st[,2] - as.numeric( biganalytics::colmean( grupo01st )[2] ) )^2;
  grupo01stXM[,3] <- ( grupo01st[,3] - as.numeric( biganalytics::colmean( grupo01st )[3] ) )^2;
  grupo01stXM[,4] <- ( grupo01st[,4] - as.numeric( biganalytics::colmean( grupo01st )[4] ) )^2;
  grupo01stXM[,5] <- ( grupo01st[,5] - as.numeric( biganalytics::colmean( grupo01st )[5] ) )^2;
  grupo01stXM[,6] <- ( grupo01st[,6] - as.numeric( biganalytics::colmean( grupo01st )[6] ) )^2;
  grupo01stXM[,7] <- ( grupo01st[,7] - as.numeric( biganalytics::colmean( grupo01st )[7] ) )^2;
  grupo01stXM[,8] <- ( grupo01st[,8] - as.numeric( biganalytics::colmean( grupo01st )[8] ) )^2;
  grupo02stXM[,1] <- ( grupo02st[,1] - as.numeric( biganalytics::colmean( grupo02st )[1] ) )^2;
  grupo02stXM[,2] <- ( grupo02st[,2] - as.numeric( biganalytics::colmean( grupo02st )[2] ) )^2;
  grupo02stXM[,3] <- ( grupo02st[,3] - as.numeric( biganalytics::colmean( grupo02st )[3] ) )^2;
  grupo02stXM[,4] <- ( grupo02st[,4] - as.numeric( biganalytics::colmean( grupo02st )[4] ) )^2;
  grupo02stXM[,5] <- ( grupo02st[,5] - as.numeric( biganalytics::colmean( grupo02st )[5] ) )^2;
  grupo02stXM[,6] <- ( grupo02st[,6] - as.numeric( biganalytics::colmean( grupo02st )[6] ) )^2;
  grupo02stXM[,7] <- ( grupo02st[,7] - as.numeric( biganalytics::colmean( grupo02st )[7] ) )^2;
  grupo02stXM[,8] <- ( grupo02st[,8] - as.numeric( biganalytics::colmean( grupo02st )[8] ) )^2;
  grupo03stXM[,1] <- ( grupo03st[,1] - as.numeric( biganalytics::colmean( grupo03st )[1] ) )^2;
  grupo03stXM[,2] <- ( grupo03st[,2] - as.numeric( biganalytics::colmean( grupo03st )[2] ) )^2;
  grupo03stXM[,3] <- ( grupo03st[,3] - as.numeric( biganalytics::colmean( grupo03st )[3] ) )^2;
  grupo03stXM[,4] <- ( grupo03st[,4] - as.numeric( biganalytics::colmean( grupo03st )[4] ) )^2;
  grupo03stXM[,5] <- ( grupo03st[,5] - as.numeric( biganalytics::colmean( grupo03st )[5] ) )^2;
  grupo03stXM[,6] <- ( grupo03st[,6] - as.numeric( biganalytics::colmean( grupo03st )[6] ) )^2;
  grupo03stXM[,7] <- ( grupo03st[,7] - as.numeric( biganalytics::colmean( grupo03st )[7] ) )^2;
  grupo03stXM[,8] <- ( grupo03st[,8] - as.numeric( biganalytics::colmean( grupo03st )[8] ) )^2;
  grupo04stXM[,1] <- ( grupo04st[,1] - as.numeric( biganalytics::colmean( grupo04st )[1] ) )^2;
  grupo04stXM[,2] <- ( grupo04st[,2] - as.numeric( biganalytics::colmean( grupo04st )[2] ) )^2;
  grupo04stXM[,3] <- ( grupo04st[,3] - as.numeric( biganalytics::colmean( grupo04st )[3] ) )^2;
  grupo04stXM[,4] <- ( grupo04st[,4] - as.numeric( biganalytics::colmean( grupo04st )[4] ) )^2;
  grupo04stXM[,5] <- ( grupo04st[,5] - as.numeric( biganalytics::colmean( grupo04st )[5] ) )^2;
  grupo04stXM[,6] <- ( grupo04st[,6] - as.numeric( biganalytics::colmean( grupo04st )[6] ) )^2;
  grupo04stXM[,7] <- ( grupo04st[,7] - as.numeric( biganalytics::colmean( grupo04st )[7] ) )^2;
  grupo04stXM[,8] <- ( grupo04st[,8] - as.numeric( biganalytics::colmean( grupo04st )[8] ) )^2;
  grupo05stXM[,1] <- ( grupo05st[,1] - as.numeric( biganalytics::colmean( grupo05st )[1] ) )^2;
  grupo05stXM[,2] <- ( grupo05st[,2] - as.numeric( biganalytics::colmean( grupo05st )[2] ) )^2;
  grupo05stXM[,3] <- ( grupo05st[,3] - as.numeric( biganalytics::colmean( grupo05st )[3] ) )^2;
  grupo05stXM[,4] <- ( grupo05st[,4] - as.numeric( biganalytics::colmean( grupo05st )[4] ) )^2;
  grupo05stXM[,5] <- ( grupo05st[,5] - as.numeric( biganalytics::colmean( grupo05st )[5] ) )^2;
  grupo05stXM[,6] <- ( grupo05st[,6] - as.numeric( biganalytics::colmean( grupo05st )[6] ) )^2;
  grupo05stXM[,7] <- ( grupo05st[,7] - as.numeric( biganalytics::colmean( grupo05st )[7] ) )^2;
  grupo05stXM[,8] <- ( grupo05st[,8] - as.numeric( biganalytics::colmean( grupo05st )[8] ) )^2;
  grupo06stXM[,1] <- ( grupo06st[,1] - as.numeric( biganalytics::colmean( grupo06st )[1] ) )^2;
  grupo06stXM[,2] <- ( grupo06st[,2] - as.numeric( biganalytics::colmean( grupo06st )[2] ) )^2;
  grupo06stXM[,3] <- ( grupo06st[,3] - as.numeric( biganalytics::colmean( grupo06st )[3] ) )^2;
  grupo06stXM[,4] <- ( grupo06st[,4] - as.numeric( biganalytics::colmean( grupo06st )[4] ) )^2;
  grupo06stXM[,5] <- ( grupo06st[,5] - as.numeric( biganalytics::colmean( grupo06st )[5] ) )^2;
  grupo06stXM[,6] <- ( grupo06st[,6] - as.numeric( biganalytics::colmean( grupo06st )[6] ) )^2;
  grupo06stXM[,7] <- ( grupo06st[,7] - as.numeric( biganalytics::colmean( grupo06st )[7] ) )^2;
  grupo06stXM[,8] <- ( grupo06st[,8] - as.numeric( biganalytics::colmean( grupo06st )[8] ) )^2;

  ### se comprueba la diferencia usando las dos siguientes formulas OK
  ### bigmemory::head( grupo01st ) - bigmemory::head( grupo01stXM )
  ### biganalytics::colmean( grupo01st )

  ### calcular totss
  grupo00stXM.totss <- structure( sum( biganalytics::colsum( grupo00stXM ) ) , names = "totss" )
  grupo01stXM.totss <- structure( sum( biganalytics::colsum( grupo01stXM ) ) , names = "totss" )
  grupo02stXM.totss <- structure( sum( biganalytics::colsum( grupo02stXM ) ) , names = "totss" )
  grupo03stXM.totss <- structure( sum( biganalytics::colsum( grupo03stXM ) ) , names = "totss" )
  grupo04stXM.totss <- structure( sum( biganalytics::colsum( grupo04stXM ) ) , names = "totss" )
  grupo05stXM.totss <- structure( sum( biganalytics::colsum( grupo05stXM ) ) , names = "totss" )
  grupo06stXM.totss <- structure( sum( biganalytics::colsum( grupo06stXM ) ) , names = "totss" )

  ### almacenar totss
  save( list = ls( pattern = "*.totss" ) , file = "totss.RData" )

  ### retirar archivo auxiliar
  if( file.exists( "grupo00stXM.desc" ) ) file.remove( c( "grupo00stXM.desc" , "grupo00stXM.bin" ) )
  if( file.exists( "grupo01stXM.desc" ) ) file.remove( c( "grupo01stXM.desc" , "grupo01stXM.bin" ) )
  if( file.exists( "grupo02stXM.desc" ) ) file.remove( c( "grupo02stXM.desc" , "grupo02stXM.bin" ) )
  if( file.exists( "grupo03stXM.desc" ) ) file.remove( c( "grupo03stXM.desc" , "grupo03stXM.bin" ) )
  if( file.exists( "grupo04stXM.desc" ) ) file.remove( c( "grupo04stXM.desc" , "grupo04stXM.bin" ) )
  if( file.exists( "grupo05stXM.desc" ) ) file.remove( c( "grupo05stXM.desc" , "grupo05stXM.bin" ) )
  if( file.exists( "grupo06stXM.desc" ) ) file.remove( c( "grupo06stXM.desc" , "grupo06stXM.bin" ) )

  ### cambiar ruta
  setwd(srcdir)

