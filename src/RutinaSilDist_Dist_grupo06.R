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
  grupo06st <- bigmemory::attach.big.matrix( dget( "grupo06st.desc" ) )

  ### remover archivo si existe
  if( file.exists( "grupo06st_dist.desc" ) ) file.remove( c( "grupo06st_dist.desc" ) )
  if( file.exists( "grupo06st_dist.bin"  ) ) file.remove( c( "grupo06st_dist.bin"  ) )

  ### definir big.matrix dist
  grupo06st_dist <- bigmemory::filebacked.big.matrix( nrow=(nrow( grupo06st ) - 1) , ncol=(nrow( grupo06st ) - 1) , init=0 , backingpath="." , backingfile="grupo06st_dist.bin" , descriptorfile="grupo06st_dist.desc" , type="double" )

  ### Call new euclidean function
  ### grupo06st_dist <- bigMatrixEuc(grupo06st_dist)[]
  grupo06st_dist <- bigMatrixEuc( grupo06st )

  ### regresar ruta
  setwd( srcdir )
