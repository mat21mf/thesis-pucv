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
  grupo00st <- bigmemory::attach.big.matrix( dget( "grupo00st.desc" ) )

  ### remover archivo si existe
  if( file.exists( "grupo00st_dist.desc" ) ) file.remove( c( "grupo00st_dist.desc" ) )
  if( file.exists( "grupo00st_dist.bin"  ) ) file.remove( c( "grupo00st_dist.bin"  ) )

  ### definir big.matrix dist
  grupo00st_dist <- bigmemory::filebacked.big.matrix( nrow=(nrow( grupo00st ) - 1) , ncol=(nrow( grupo00st ) - 1) , init=0 , backingpath="." , backingfile="grupo00st_dist.bin" , descriptorfile="grupo00st_dist.desc" , type="double" )

  ### Call new euclidean function
  ### grupo00st_dist <- bigMatrixEuc(grupo00st_dist)[]
  grupo00st_dist <- bigMatrixEuc( grupo00st )

  ### regresar ruta
  setwd( srcdir )
