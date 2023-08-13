  ###
  ### proceso 01: ejecutar bigkmeans
  ###

  ### librerias (pendiente, source DefinirRutas.R)
  library(bigmemory)
  library(biganalytics)
  ### cargar rutas
  source( "DefinirVariables.R" )

  ### ejecutar bigkmeans
  setwd(bakdir)
  grupo06st <- bigmemory::attach.big.matrix( dget( "grupo06st.desc" ) )
  print( kmn0005_grp06_var07_time <- system.time( kmn0005_grp06_var07 <- biganalytics::bigkmeans( grupo06st[,-6] , iter.max=500 , dist="euclid" , centers=6, nstart=6   )  )  )

  ###
  ### proceso 02: crear y grabar big.matrix
  ###

  ### crear big.matrix
  ### cargar big.matrix, concatenar y grabar clusters
  ### pendiente:
  ### - verificar que el contenido se grabe efectivamente
  ###   o si hace falta usar "dput"
  ### - separar cada una de las 20 ejecuciones
  options(bigmemory.allow.dimnames=TRUE)
  options(bigmemory.typecast.warning=FALSE)
  if( file.exists( "bigkmeans_kmn0005_grp06_var07_cluster.desc" ) ) file.remove( c( "bigkmeans_kmn0005_grp06_var07_cluster.desc" , "bigkmeans_kmn0005_grp06_var07_cluster.bin" ) )
  bigkmeans_kmn0005_grp06_var07_cluster <- bigmemory::big.matrix( nrow=nrow( grupo06st ) , ncol=1 , init=0 , type="short" , shared=T , backingfile="bigkmeans_kmn0005_grp06_var07_cluster.bin" , descriptorfile="bigkmeans_kmn0005_grp06_var07_cluster.desc" )
  colnames( bigkmeans_kmn0005_grp06_var07_cluster ) <- c( "kmc0005" )
  bigkmeans_kmn0005_grp06_var07_cluster[,1]  <- kmn0005_grp06_var07$cluster
  kmn0005_grp06_var07_centers   <- kmn0005_grp06_var07$centers
  kmn0005_grp06_var07_size      <- kmn0005_grp06_var07$size
  kmn0005_grp06_var07_withinss  <- kmn0005_grp06_var07$withinss
  setwd(srcdir)

  ###
  ### proceso 03: grabar objetos withinss, size, centers
  ###

  ### grabar objetos: withinss, size, centers
  save(
    kmn0005_grp06_var07_time
  , kmn0005_grp06_var07_centers
  , kmn0005_grp06_var07_size
  , kmn0005_grp06_var07_withinss
  , file="RData/bigkmeans_kmn0005_grp06_var07_objetos.RData" )
