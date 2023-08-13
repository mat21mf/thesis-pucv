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
  grupo03st <- bigmemory::attach.big.matrix( dget( "grupo03st.desc" ) )

  ### remover archivo si existe
  if( file.exists( "grupo03st_dist.desc" ) ) file.remove( c( "grupo03st_dist.desc" ) )
  if( file.exists( "grupo03st_dist.bin"  ) ) file.remove( c( "grupo03st_dist.bin"  ) )

  ### definir big.matrix dist
  grupo03st_dist <- bigmemory::filebacked.big.matrix( nrow=(nrow( grupo03st ) - 1) , ncol=(nrow( grupo03st ) - 1) , init=0 , backingpath="." , backingfile="grupo03st_dist.bin" , descriptorfile="grupo03st_dist.desc" , type="double" )

  ### Call new euclidean function
  ### grupo03st_dist <- bigMatrixEuc(grupo03st_dist)[]
  grupo03st_dist <- bigMatrixEuc( grupo03st )

  ### regresar ruta
  setwd( srcdir )
