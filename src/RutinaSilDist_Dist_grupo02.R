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
  grupo02st <- bigmemory::attach.big.matrix( dget( "grupo02st.desc" ) )

  ### remover archivo si existe
  if( file.exists( "grupo02st_dist.desc" ) ) file.remove( c( "grupo02st_dist.desc" ) )
  if( file.exists( "grupo02st_dist.bin"  ) ) file.remove( c( "grupo02st_dist.bin"  ) )

  ### definir big.matrix dist
  grupo02st_dist <- bigmemory::filebacked.big.matrix( nrow=(nrow( grupo02st ) - 1) , ncol=(nrow( grupo02st ) - 1) , init=0 , backingpath="." , backingfile="grupo02st_dist.bin" , descriptorfile="grupo02st_dist.desc" , type="double" )

  ### Call new euclidean function
  ### grupo02st_dist <- bigMatrixEuc(grupo02st_dist)[]
  grupo02st_dist <- bigMatrixEuc( grupo02st )

  ### regresar ruta
  setwd( srcdir )
