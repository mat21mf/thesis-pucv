  ### cargar libreria
  library( bigmemory )

  ### compilar funcion Rcpp
  Rcpp::sourceCpp( "FuncionBigMatrixDist.cpp" )

  ### cargar funcion wrapper
  source( "WrapBigMatrixDist.R" )

  ### cambiar ruta
  source( "DefinirVariables.R" )
  setwd( bakdir )

  ### cargar big.matrix
  grupo01st <- bigmemory::attach.big.matrix( dget( "grupo01st.desc" ) )

  ### remover archivo si existe
  if( file.exists( "grupo01st_dist.desc" ) ) file.remove( c( "grupo01st_dist.desc" ) )
  if( file.exists( "grupo01st_dist.bin"  ) ) file.remove( c( "grupo01st_dist.bin"  ) )

  ### definir big.matrix dist
  grupo01st_dist <- bigmemory::filebacked.big.matrix( nrow=(nrow( grupo01st ) - 1) , ncol=(nrow( grupo01st ) - 1) , init=0 , backingpath="." , backingfile="grupo01st_dist.bin" , descriptorfile="grupo01st_dist.desc" , type="double" )

  ### Call new euclidean function
  ### grupo01st_dist <- bigMatrixEuc(grupo01st_dist)[]
  grupo01st_dist <- bigMatrixEuc( grupo01st )

  ### regresar ruta
  setwd( srcdir )
