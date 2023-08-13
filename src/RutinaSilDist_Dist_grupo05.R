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
  grupo05st <- bigmemory::attach.big.matrix( dget( "grupo05st.desc" ) )

  ### remover archivo si existe
  if( file.exists( "grupo05st_dist.desc" ) ) file.remove( c( "grupo05st_dist.desc" ) )
  if( file.exists( "grupo05st_dist.bin"  ) ) file.remove( c( "grupo05st_dist.bin"  ) )

  ### definir big.matrix dist
  grupo05st_dist <- bigmemory::filebacked.big.matrix( nrow=(nrow( grupo05st ) - 1) , ncol=(nrow( grupo05st ) - 1) , init=0 , backingpath="." , backingfile="grupo05st_dist.bin" , descriptorfile="grupo05st_dist.desc" , type="double" )

  ### Call new euclidean function
  ### grupo05st_dist <- bigMatrixEuc(grupo05st_dist)[]
  grupo05st_dist <- bigMatrixEuc( grupo05st )

  ### regresar ruta
  setwd( srcdir )
