  ### cargar libreria
  library( bigmemory )

  ### cargar rutas
  source( "DefinirVariables.R" )

  ### cambiar ruta
  setwd(bakdir)

  ### cargar objetos estandarizados
  grupo00st <- bigmemory::attach.big.matrix( dget( "grupo00st.desc" ) )
  grupo01st <- bigmemory::attach.big.matrix( dget( "grupo01st.desc" ) )
  grupo02st <- bigmemory::attach.big.matrix( dget( "grupo02st.desc" ) )
  grupo03st <- bigmemory::attach.big.matrix( dget( "grupo03st.desc" ) )
  grupo04st <- bigmemory::attach.big.matrix( dget( "grupo04st.desc" ) )
  grupo05st <- bigmemory::attach.big.matrix( dget( "grupo05st.desc" ) )
  grupo06st <- bigmemory::attach.big.matrix( dget( "grupo06st.desc" ) )

  ### imprimir dimensiones
  print( paste( 'filas x columnas' ) )
  print( paste( bigmemory::nrow( grupo00st ) , 'x' , bigmemory::ncol( grupo00st ) ) )
  print( paste( bigmemory::nrow( grupo01st ) , 'x' , bigmemory::ncol( grupo01st ) ) )
  print( paste( bigmemory::nrow( grupo02st ) , 'x' , bigmemory::ncol( grupo02st ) ) )
  print( paste( bigmemory::nrow( grupo03st ) , 'x' , bigmemory::ncol( grupo03st ) ) )
  print( paste( bigmemory::nrow( grupo04st ) , 'x' , bigmemory::ncol( grupo04st ) ) )
  print( paste( bigmemory::nrow( grupo05st ) , 'x' , bigmemory::ncol( grupo05st ) ) )
  print( paste( bigmemory::nrow( grupo06st ) , 'x' , bigmemory::ncol( grupo06st ) ) )

  ### imprimir dimensiones matrix distancia
  print( paste( 'filas ==> filas distancia euclideana' ) )
  print( paste( bigmemory::nrow( grupo00st ) , '==>' , bigmemory::nrow( grupo00st )*(bigmemory::nrow( grupo00st )-1)/2 ) )
  print( paste( bigmemory::nrow( grupo01st ) , '==>' , bigmemory::nrow( grupo01st )*(bigmemory::nrow( grupo01st )-1)/2 ) )
  print( paste( bigmemory::nrow( grupo02st ) , '==>' , bigmemory::nrow( grupo02st )*(bigmemory::nrow( grupo02st )-1)/2 ) )
  print( paste( bigmemory::nrow( grupo03st ) , '==>' , bigmemory::nrow( grupo03st )*(bigmemory::nrow( grupo03st )-1)/2 ) )
  print( paste( bigmemory::nrow( grupo04st ) , '==>' , bigmemory::nrow( grupo04st )*(bigmemory::nrow( grupo04st )-1)/2 ) )
  print( paste( bigmemory::nrow( grupo05st ) , '==>' , bigmemory::nrow( grupo05st )*(bigmemory::nrow( grupo05st )-1)/2 ) )
  print( paste( bigmemory::nrow( grupo06st ) , '==>' , bigmemory::nrow( grupo06st )*(bigmemory::nrow( grupo06st )-1)/2 ) )
  ### cambiar ruta
  setwd(srcdir)

