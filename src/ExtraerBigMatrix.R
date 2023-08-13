  ### cargar
  library( bigmemory )
  library( biganalytics )

  ### obtener rutas y variables
  source( "DefinirVariables.R" )

# ### ya se hizo extraccion de NA con bash. Revisar grupo00 porque debiera tener mismos NA para las 6 variables pendiente. Paso obsoleto.
# grupo00xy <- bigmemory::as.big.matrix( grupo00BigMat [ bigmemory::mwhich( grupo00BigMat , 1:6 , NA , 'neq' , 'AND' ) , ] , backingpath = NULL , backingfile = "grupo00xy.bin" , descriptorfile = "grupo00xy.desc" , type = "double" , shared = T )
# grupo01xy <- bigmemory::as.big.matrix( grupo01BigMat [ bigmemory::mwhich( grupo01BigMat , 1:6 , NA , 'neq' , 'AND' ) , ] , backingpath = NULL , backingfile = "grupo01xy.bin" , descriptorfile = "grupo01xy.desc" , type = "double" , shared = T )
# grupo02xy <- bigmemory::as.big.matrix( grupo02BigMat [ bigmemory::mwhich( grupo02BigMat , 1:6 , NA , 'neq' , 'AND' ) , ] , backingpath = NULL , backingfile = "grupo02xy.bin" , descriptorfile = "grupo02xy.desc" , type = "double" , shared = T )
# grupo03xy <- bigmemory::as.big.matrix( grupo03BigMat [ bigmemory::mwhich( grupo03BigMat , 1:6 , NA , 'neq' , 'AND' ) , ] , backingpath = NULL , backingfile = "grupo03xy.bin" , descriptorfile = "grupo03xy.desc" , type = "double" , shared = T )
# grupo04xy <- bigmemory::as.big.matrix( grupo04BigMat [ bigmemory::mwhich( grupo04BigMat , 1:6 , NA , 'neq' , 'AND' ) , ] , backingpath = NULL , backingfile = "grupo04xy.bin" , descriptorfile = "grupo04xy.desc" , type = "double" , shared = T )
# grupo05xy <- bigmemory::as.big.matrix( grupo05BigMat [ bigmemory::mwhich( grupo05BigMat , 1:6 , NA , 'neq' , 'AND' ) , ] , backingpath = NULL , backingfile = "grupo05xy.bin" , descriptorfile = "grupo05xy.desc" , type = "double" , shared = T )
# grupo06xy <- bigmemory::as.big.matrix( grupo06BigMat [ bigmemory::mwhich( grupo06BigMat , 1:6 , NA , 'neq' , 'AND' ) , ] , backingpath = NULL , backingfile = "grupo06xy.bin" , descriptorfile = "grupo06xy.desc" , type = "double" , shared = T )

  ### cambiar ruta
  setwd(bakdir)

  ### cargar objetos iniciales
  grupo00xy <- bigmemory::attach.big.matrix( dget( "grupo00xy.desc" ) )
  grupo01xy <- bigmemory::attach.big.matrix( dget( "grupo01xy.desc" ) )
  grupo02xy <- bigmemory::attach.big.matrix( dget( "grupo02xy.desc" ) )
  grupo03xy <- bigmemory::attach.big.matrix( dget( "grupo03xy.desc" ) )
  grupo04xy <- bigmemory::attach.big.matrix( dget( "grupo04xy.desc" ) )
  grupo05xy <- bigmemory::attach.big.matrix( dget( "grupo05xy.desc" ) )
  grupo06xy <- bigmemory::attach.big.matrix( dget( "grupo06xy.desc" ) )

  ### retirar archivos en caso de existir
  if( file.exists( "grupo00md.desc" ) ) file.remove( c( "grupo00md.desc" , "grupo00md.bin" ) )
  if( file.exists( "grupo01md.desc" ) ) file.remove( c( "grupo01md.desc" , "grupo01md.bin" ) )
  if( file.exists( "grupo02md.desc" ) ) file.remove( c( "grupo02md.desc" , "grupo02md.bin" ) )
  if( file.exists( "grupo03md.desc" ) ) file.remove( c( "grupo03md.desc" , "grupo03md.bin" ) )
  if( file.exists( "grupo04md.desc" ) ) file.remove( c( "grupo04md.desc" , "grupo04md.bin" ) )
  if( file.exists( "grupo05md.desc" ) ) file.remove( c( "grupo05md.desc" , "grupo05md.bin" ) )
  if( file.exists( "grupo06md.desc" ) ) file.remove( c( "grupo06md.desc" , "grupo06md.bin" ) )

  ### crear matrix medias con respaldo permanente
  grupo00md <- bigmemory::big.matrix( bigmemory::nrow( grupo00xy ) , bigmemory::ncol( grupo00xy ) , init=0 , backingpath = NULL , backingfile = "grupo00md.bin" , descriptorfile = "grupo00md.desc" , type = "double" , shared = T )
  grupo01md <- bigmemory::big.matrix( bigmemory::nrow( grupo01xy ) , bigmemory::ncol( grupo01xy ) , init=0 , backingpath = NULL , backingfile = "grupo01md.bin" , descriptorfile = "grupo01md.desc" , type = "double" , shared = T )
  grupo02md <- bigmemory::big.matrix( bigmemory::nrow( grupo02xy ) , bigmemory::ncol( grupo02xy ) , init=0 , backingpath = NULL , backingfile = "grupo02md.bin" , descriptorfile = "grupo02md.desc" , type = "double" , shared = T )
  grupo03md <- bigmemory::big.matrix( bigmemory::nrow( grupo03xy ) , bigmemory::ncol( grupo03xy ) , init=0 , backingpath = NULL , backingfile = "grupo03md.bin" , descriptorfile = "grupo03md.desc" , type = "double" , shared = T )
  grupo04md <- bigmemory::big.matrix( bigmemory::nrow( grupo04xy ) , bigmemory::ncol( grupo04xy ) , init=0 , backingpath = NULL , backingfile = "grupo04md.bin" , descriptorfile = "grupo04md.desc" , type = "double" , shared = T )
  grupo05md <- bigmemory::big.matrix( bigmemory::nrow( grupo05xy ) , bigmemory::ncol( grupo05xy ) , init=0 , backingpath = NULL , backingfile = "grupo05md.bin" , descriptorfile = "grupo05md.desc" , type = "double" , shared = T )
  grupo06md <- bigmemory::big.matrix( bigmemory::nrow( grupo06xy ) , bigmemory::ncol( grupo06xy ) , init=0 , backingpath = NULL , backingfile = "grupo06md.bin" , descriptorfile = "grupo06md.desc" , type = "double" , shared = T )

  ### evaluar matrix con promedio
  grupo00md[,1] <- as.numeric( biganalytics::colmean( grupo00xy )[1] ); grupo00md[,2] <- as.numeric( biganalytics::colmean( grupo00xy )[2] ); grupo00md[,3] <- as.numeric( biganalytics::colmean( grupo00xy )[3] ); grupo00md[,4] <- as.numeric( biganalytics::colmean( grupo00xy )[4] ); grupo00md[,5] <- as.numeric( biganalytics::colmean( grupo00xy )[5] ); grupo00md[,6] <- as.numeric( biganalytics::colmean( grupo00xy )[6] ); grupo00md[,7] <- as.numeric( biganalytics::colmean( grupo00xy )[7] ); grupo00md[,8] <- as.numeric( biganalytics::colmean( grupo00xy )[8] );
  grupo01md[,1] <- as.numeric( biganalytics::colmean( grupo01xy )[1] ); grupo01md[,2] <- as.numeric( biganalytics::colmean( grupo01xy )[2] ); grupo01md[,3] <- as.numeric( biganalytics::colmean( grupo01xy )[3] ); grupo01md[,4] <- as.numeric( biganalytics::colmean( grupo01xy )[4] ); grupo01md[,5] <- as.numeric( biganalytics::colmean( grupo01xy )[5] ); grupo01md[,6] <- as.numeric( biganalytics::colmean( grupo01xy )[6] ); grupo01md[,7] <- as.numeric( biganalytics::colmean( grupo01xy )[7] ); grupo01md[,8] <- as.numeric( biganalytics::colmean( grupo01xy )[8] );
  grupo02md[,1] <- as.numeric( biganalytics::colmean( grupo02xy )[1] ); grupo02md[,2] <- as.numeric( biganalytics::colmean( grupo02xy )[2] ); grupo02md[,3] <- as.numeric( biganalytics::colmean( grupo02xy )[3] ); grupo02md[,4] <- as.numeric( biganalytics::colmean( grupo02xy )[4] ); grupo02md[,5] <- as.numeric( biganalytics::colmean( grupo02xy )[5] ); grupo02md[,6] <- as.numeric( biganalytics::colmean( grupo02xy )[6] ); grupo02md[,7] <- as.numeric( biganalytics::colmean( grupo02xy )[7] ); grupo02md[,8] <- as.numeric( biganalytics::colmean( grupo02xy )[8] );
  grupo03md[,1] <- as.numeric( biganalytics::colmean( grupo03xy )[1] ); grupo03md[,2] <- as.numeric( biganalytics::colmean( grupo03xy )[2] ); grupo03md[,3] <- as.numeric( biganalytics::colmean( grupo03xy )[3] ); grupo03md[,4] <- as.numeric( biganalytics::colmean( grupo03xy )[4] ); grupo03md[,5] <- as.numeric( biganalytics::colmean( grupo03xy )[5] ); grupo03md[,6] <- as.numeric( biganalytics::colmean( grupo03xy )[6] ); grupo03md[,7] <- as.numeric( biganalytics::colmean( grupo03xy )[7] ); grupo03md[,8] <- as.numeric( biganalytics::colmean( grupo03xy )[8] );
  grupo04md[,1] <- as.numeric( biganalytics::colmean( grupo04xy )[1] ); grupo04md[,2] <- as.numeric( biganalytics::colmean( grupo04xy )[2] ); grupo04md[,3] <- as.numeric( biganalytics::colmean( grupo04xy )[3] ); grupo04md[,4] <- as.numeric( biganalytics::colmean( grupo04xy )[4] ); grupo04md[,5] <- as.numeric( biganalytics::colmean( grupo04xy )[5] ); grupo04md[,6] <- as.numeric( biganalytics::colmean( grupo04xy )[6] ); grupo04md[,7] <- as.numeric( biganalytics::colmean( grupo04xy )[7] ); grupo04md[,8] <- as.numeric( biganalytics::colmean( grupo04xy )[8] );
  grupo05md[,1] <- as.numeric( biganalytics::colmean( grupo05xy )[1] ); grupo05md[,2] <- as.numeric( biganalytics::colmean( grupo05xy )[2] ); grupo05md[,3] <- as.numeric( biganalytics::colmean( grupo05xy )[3] ); grupo05md[,4] <- as.numeric( biganalytics::colmean( grupo05xy )[4] ); grupo05md[,5] <- as.numeric( biganalytics::colmean( grupo05xy )[5] ); grupo05md[,6] <- as.numeric( biganalytics::colmean( grupo05xy )[6] ); grupo05md[,7] <- as.numeric( biganalytics::colmean( grupo05xy )[7] ); grupo05md[,8] <- as.numeric( biganalytics::colmean( grupo05xy )[8] );
  grupo06md[,1] <- as.numeric( biganalytics::colmean( grupo06xy )[1] ); grupo06md[,2] <- as.numeric( biganalytics::colmean( grupo06xy )[2] ); grupo06md[,3] <- as.numeric( biganalytics::colmean( grupo06xy )[3] ); grupo06md[,4] <- as.numeric( biganalytics::colmean( grupo06xy )[4] ); grupo06md[,5] <- as.numeric( biganalytics::colmean( grupo06xy )[5] ); grupo06md[,6] <- as.numeric( biganalytics::colmean( grupo06xy )[6] ); grupo06md[,7] <- as.numeric( biganalytics::colmean( grupo06xy )[7] ); grupo06md[,8] <- as.numeric( biganalytics::colmean( grupo06xy )[8] );

  ### retirar archivos en caso de existir
  if( file.exists( "grupo00sd.desc" ) ) file.remove( c( "grupo00sd.desc" , "grupo00sd.bin" ) )
  if( file.exists( "grupo01sd.desc" ) ) file.remove( c( "grupo01sd.desc" , "grupo01sd.bin" ) )
  if( file.exists( "grupo02sd.desc" ) ) file.remove( c( "grupo02sd.desc" , "grupo02sd.bin" ) )
  if( file.exists( "grupo03sd.desc" ) ) file.remove( c( "grupo03sd.desc" , "grupo03sd.bin" ) )
  if( file.exists( "grupo04sd.desc" ) ) file.remove( c( "grupo04sd.desc" , "grupo04sd.bin" ) )
  if( file.exists( "grupo05sd.desc" ) ) file.remove( c( "grupo05sd.desc" , "grupo05sd.bin" ) )
  if( file.exists( "grupo06sd.desc" ) ) file.remove( c( "grupo06sd.desc" , "grupo06sd.bin" ) )

  ### crear matrix sd con respaldo permanente
  grupo00sd <- bigmemory::big.matrix( bigmemory::nrow( grupo00xy ) , bigmemory::ncol( grupo00xy ) , init=0 , backingpath = NULL , backingfile = "grupo00sd.bin" , descriptorfile = "grupo00sd.desc" , type = "double" , shared = T )
  grupo01sd <- bigmemory::big.matrix( bigmemory::nrow( grupo01xy ) , bigmemory::ncol( grupo01xy ) , init=0 , backingpath = NULL , backingfile = "grupo01sd.bin" , descriptorfile = "grupo01sd.desc" , type = "double" , shared = T )
  grupo02sd <- bigmemory::big.matrix( bigmemory::nrow( grupo02xy ) , bigmemory::ncol( grupo02xy ) , init=0 , backingpath = NULL , backingfile = "grupo02sd.bin" , descriptorfile = "grupo02sd.desc" , type = "double" , shared = T )
  grupo03sd <- bigmemory::big.matrix( bigmemory::nrow( grupo03xy ) , bigmemory::ncol( grupo03xy ) , init=0 , backingpath = NULL , backingfile = "grupo03sd.bin" , descriptorfile = "grupo03sd.desc" , type = "double" , shared = T )
  grupo04sd <- bigmemory::big.matrix( bigmemory::nrow( grupo04xy ) , bigmemory::ncol( grupo04xy ) , init=0 , backingpath = NULL , backingfile = "grupo04sd.bin" , descriptorfile = "grupo04sd.desc" , type = "double" , shared = T )
  grupo05sd <- bigmemory::big.matrix( bigmemory::nrow( grupo05xy ) , bigmemory::ncol( grupo05xy ) , init=0 , backingpath = NULL , backingfile = "grupo05sd.bin" , descriptorfile = "grupo05sd.desc" , type = "double" , shared = T )
  grupo06sd <- bigmemory::big.matrix( bigmemory::nrow( grupo06xy ) , bigmemory::ncol( grupo06xy ) , init=0 , backingpath = NULL , backingfile = "grupo06sd.bin" , descriptorfile = "grupo06sd.desc" , type = "double" , shared = T )

  ### evaluar matrix con sd
  grupo00sd[,1] <- as.numeric( biganalytics::colsd( grupo00xy )[1] ); grupo00sd[,2] <- as.numeric( biganalytics::colsd( grupo00xy )[2] ); grupo00sd[,3] <- as.numeric( biganalytics::colsd( grupo00xy )[3] ); grupo00sd[,4] <- as.numeric( biganalytics::colsd( grupo00xy )[4] ); grupo00sd[,5] <- as.numeric( biganalytics::colsd( grupo00xy )[5] ); grupo00sd[,6] <- as.numeric( biganalytics::colsd( grupo00xy )[6] ); grupo00sd[,7] <- as.numeric( biganalytics::colsd( grupo00xy )[7] ); grupo00sd[,8] <- as.numeric( biganalytics::colsd( grupo00xy )[8] );
  grupo01sd[,1] <- as.numeric( biganalytics::colsd( grupo01xy )[1] ); grupo01sd[,2] <- as.numeric( biganalytics::colsd( grupo01xy )[2] ); grupo01sd[,3] <- as.numeric( biganalytics::colsd( grupo01xy )[3] ); grupo01sd[,4] <- as.numeric( biganalytics::colsd( grupo01xy )[4] ); grupo01sd[,5] <- as.numeric( biganalytics::colsd( grupo01xy )[5] ); grupo01sd[,6] <- as.numeric( biganalytics::colsd( grupo01xy )[6] ); grupo01sd[,7] <- as.numeric( biganalytics::colsd( grupo01xy )[7] ); grupo01sd[,8] <- as.numeric( biganalytics::colsd( grupo01xy )[8] );
  grupo02sd[,1] <- as.numeric( biganalytics::colsd( grupo02xy )[1] ); grupo02sd[,2] <- as.numeric( biganalytics::colsd( grupo02xy )[2] ); grupo02sd[,3] <- as.numeric( biganalytics::colsd( grupo02xy )[3] ); grupo02sd[,4] <- as.numeric( biganalytics::colsd( grupo02xy )[4] ); grupo02sd[,5] <- as.numeric( biganalytics::colsd( grupo02xy )[5] ); grupo02sd[,6] <- as.numeric( biganalytics::colsd( grupo02xy )[6] ); grupo02sd[,7] <- as.numeric( biganalytics::colsd( grupo02xy )[7] ); grupo02sd[,8] <- as.numeric( biganalytics::colsd( grupo02xy )[8] );
  grupo03sd[,1] <- as.numeric( biganalytics::colsd( grupo03xy )[1] ); grupo03sd[,2] <- as.numeric( biganalytics::colsd( grupo03xy )[2] ); grupo03sd[,3] <- as.numeric( biganalytics::colsd( grupo03xy )[3] ); grupo03sd[,4] <- as.numeric( biganalytics::colsd( grupo03xy )[4] ); grupo03sd[,5] <- as.numeric( biganalytics::colsd( grupo03xy )[5] ); grupo03sd[,6] <- as.numeric( biganalytics::colsd( grupo03xy )[6] ); grupo03sd[,7] <- as.numeric( biganalytics::colsd( grupo03xy )[7] ); grupo03sd[,8] <- as.numeric( biganalytics::colsd( grupo03xy )[8] );
  grupo04sd[,1] <- as.numeric( biganalytics::colsd( grupo04xy )[1] ); grupo04sd[,2] <- as.numeric( biganalytics::colsd( grupo04xy )[2] ); grupo04sd[,3] <- as.numeric( biganalytics::colsd( grupo04xy )[3] ); grupo04sd[,4] <- as.numeric( biganalytics::colsd( grupo04xy )[4] ); grupo04sd[,5] <- as.numeric( biganalytics::colsd( grupo04xy )[5] ); grupo04sd[,6] <- as.numeric( biganalytics::colsd( grupo04xy )[6] ); grupo04sd[,7] <- as.numeric( biganalytics::colsd( grupo04xy )[7] ); grupo04sd[,8] <- as.numeric( biganalytics::colsd( grupo04xy )[8] );
  grupo05sd[,1] <- as.numeric( biganalytics::colsd( grupo05xy )[1] ); grupo05sd[,2] <- as.numeric( biganalytics::colsd( grupo05xy )[2] ); grupo05sd[,3] <- as.numeric( biganalytics::colsd( grupo05xy )[3] ); grupo05sd[,4] <- as.numeric( biganalytics::colsd( grupo05xy )[4] ); grupo05sd[,5] <- as.numeric( biganalytics::colsd( grupo05xy )[5] ); grupo05sd[,6] <- as.numeric( biganalytics::colsd( grupo05xy )[6] ); grupo05sd[,7] <- as.numeric( biganalytics::colsd( grupo05xy )[7] ); grupo05sd[,8] <- as.numeric( biganalytics::colsd( grupo05xy )[8] );
  grupo06sd[,1] <- as.numeric( biganalytics::colsd( grupo06xy )[1] ); grupo06sd[,2] <- as.numeric( biganalytics::colsd( grupo06xy )[2] ); grupo06sd[,3] <- as.numeric( biganalytics::colsd( grupo06xy )[3] ); grupo06sd[,4] <- as.numeric( biganalytics::colsd( grupo06xy )[4] ); grupo06sd[,5] <- as.numeric( biganalytics::colsd( grupo06xy )[5] ); grupo06sd[,6] <- as.numeric( biganalytics::colsd( grupo06xy )[6] ); grupo06sd[,7] <- as.numeric( biganalytics::colsd( grupo06xy )[7] ); grupo06sd[,8] <- as.numeric( biganalytics::colsd( grupo06xy )[8] );

  ### retirar archivos en caso de existir
  if( file.exists( "grupo00st.desc" ) ) file.remove( c( "grupo00st.desc" , "grupo00st.bin" ) )
  if( file.exists( "grupo01st.desc" ) ) file.remove( c( "grupo01st.desc" , "grupo01st.bin" ) )
  if( file.exists( "grupo02st.desc" ) ) file.remove( c( "grupo02st.desc" , "grupo02st.bin" ) )
  if( file.exists( "grupo03st.desc" ) ) file.remove( c( "grupo03st.desc" , "grupo03st.bin" ) )
  if( file.exists( "grupo04st.desc" ) ) file.remove( c( "grupo04st.desc" , "grupo04st.bin" ) )
  if( file.exists( "grupo05st.desc" ) ) file.remove( c( "grupo05st.desc" , "grupo05st.bin" ) )
  if( file.exists( "grupo06st.desc" ) ) file.remove( c( "grupo06st.desc" , "grupo06st.bin" ) )

  ### estandarizar variables nuevas bigmatrices
  grupo00st <- bigmemory::as.big.matrix( ( grupo00xy[,] - grupo00md[,] ) / grupo00sd[,] , backingpath = NULL , backingfile = "grupo00st.bin" , descriptorfile = "grupo00st.desc" , type = "double" , shared = T )
  grupo01st <- bigmemory::as.big.matrix( ( grupo01xy[,] - grupo01md[,] ) / grupo01sd[,] , backingpath = NULL , backingfile = "grupo01st.bin" , descriptorfile = "grupo01st.desc" , type = "double" , shared = T )
  grupo02st <- bigmemory::as.big.matrix( ( grupo02xy[,] - grupo02md[,] ) / grupo02sd[,] , backingpath = NULL , backingfile = "grupo02st.bin" , descriptorfile = "grupo02st.desc" , type = "double" , shared = T )
  grupo03st <- bigmemory::as.big.matrix( ( grupo03xy[,] - grupo03md[,] ) / grupo03sd[,] , backingpath = NULL , backingfile = "grupo03st.bin" , descriptorfile = "grupo03st.desc" , type = "double" , shared = T )
  grupo04st <- bigmemory::as.big.matrix( ( grupo04xy[,] - grupo04md[,] ) / grupo04sd[,] , backingpath = NULL , backingfile = "grupo04st.bin" , descriptorfile = "grupo04st.desc" , type = "double" , shared = T )
  grupo05st <- bigmemory::as.big.matrix( ( grupo05xy[,] - grupo05md[,] ) / grupo05sd[,] , backingpath = NULL , backingfile = "grupo05st.bin" , descriptorfile = "grupo05st.desc" , type = "double" , shared = T )
  grupo06st <- bigmemory::as.big.matrix( ( grupo06xy[,] - grupo06md[,] ) / grupo06sd[,] , backingpath = NULL , backingfile = "grupo06st.bin" , descriptorfile = "grupo06st.desc" , type = "double" , shared = T )

  ### comprobar
  sprintf( "Mat: grupo00xy; Prom: %s; Sd: %s", biganalytics::colmean( grupo00xy ) , biganalytics::colsd( grupo00xy ) )
  sprintf( "Mat: grupo01xy; Prom: %s; Sd: %s", biganalytics::colmean( grupo01xy ) , biganalytics::colsd( grupo01xy ) )
  sprintf( "Mat: grupo02xy; Prom: %s; Sd: %s", biganalytics::colmean( grupo02xy ) , biganalytics::colsd( grupo02xy ) )
  sprintf( "Mat: grupo03xy; Prom: %s; Sd: %s", biganalytics::colmean( grupo03xy ) , biganalytics::colsd( grupo03xy ) )
  sprintf( "Mat: grupo04xy; Prom: %s; Sd: %s", biganalytics::colmean( grupo04xy ) , biganalytics::colsd( grupo04xy ) )
  sprintf( "Mat: grupo05xy; Prom: %s; Sd: %s", biganalytics::colmean( grupo05xy ) , biganalytics::colsd( grupo05xy ) )
  sprintf( "Mat: grupo06xy; Prom: %s; Sd: %s", biganalytics::colmean( grupo06xy ) , biganalytics::colsd( grupo06xy ) )

  ### comprobar
  sprintf( "Mat: grupo00st; Prom: %s; Sd: %s", biganalytics::colmean( grupo00st ) , biganalytics::colsd( grupo00st ) )
  sprintf( "Mat: grupo01st; Prom: %s; Sd: %s", biganalytics::colmean( grupo01st ) , biganalytics::colsd( grupo01st ) )
  sprintf( "Mat: grupo02st; Prom: %s; Sd: %s", biganalytics::colmean( grupo02st ) , biganalytics::colsd( grupo02st ) )
  sprintf( "Mat: grupo03st; Prom: %s; Sd: %s", biganalytics::colmean( grupo03st ) , biganalytics::colsd( grupo03st ) )
  sprintf( "Mat: grupo04st; Prom: %s; Sd: %s", biganalytics::colmean( grupo04st ) , biganalytics::colsd( grupo04st ) )
  sprintf( "Mat: grupo05st; Prom: %s; Sd: %s", biganalytics::colmean( grupo05st ) , biganalytics::colsd( grupo05st ) )
  sprintf( "Mat: grupo06st; Prom: %s; Sd: %s", biganalytics::colmean( grupo06st ) , biganalytics::colsd( grupo06st ) )

  ### retirar matrices de uso temporal
  if( file.exists( "grupo00md.desc" ) ) file.remove( c( "grupo00md.desc" , "grupo00md.bin" ) )
  if( file.exists( "grupo01md.desc" ) ) file.remove( c( "grupo01md.desc" , "grupo01md.bin" ) )
  if( file.exists( "grupo02md.desc" ) ) file.remove( c( "grupo02md.desc" , "grupo02md.bin" ) )
  if( file.exists( "grupo03md.desc" ) ) file.remove( c( "grupo03md.desc" , "grupo03md.bin" ) )
  if( file.exists( "grupo04md.desc" ) ) file.remove( c( "grupo04md.desc" , "grupo04md.bin" ) )
  if( file.exists( "grupo05md.desc" ) ) file.remove( c( "grupo05md.desc" , "grupo05md.bin" ) )
  if( file.exists( "grupo06md.desc" ) ) file.remove( c( "grupo06md.desc" , "grupo06md.bin" ) )

  ### retirar matrices de uso temporal
  if( file.exists( "grupo00sd.desc" ) ) file.remove( c( "grupo00sd.desc" , "grupo00sd.bin" ) )
  if( file.exists( "grupo01sd.desc" ) ) file.remove( c( "grupo01sd.desc" , "grupo01sd.bin" ) )
  if( file.exists( "grupo02sd.desc" ) ) file.remove( c( "grupo02sd.desc" , "grupo02sd.bin" ) )
  if( file.exists( "grupo03sd.desc" ) ) file.remove( c( "grupo03sd.desc" , "grupo03sd.bin" ) )
  if( file.exists( "grupo04sd.desc" ) ) file.remove( c( "grupo04sd.desc" , "grupo04sd.bin" ) )
  if( file.exists( "grupo05sd.desc" ) ) file.remove( c( "grupo05sd.desc" , "grupo05sd.bin" ) )
  if( file.exists( "grupo06sd.desc" ) ) file.remove( c( "grupo06sd.desc" , "grupo06sd.bin" ) )

  ### cambiar ruta
  setwd(srcdir)

