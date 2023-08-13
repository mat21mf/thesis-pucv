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
  grupo02st <- bigmemory::attach.big.matrix( dget( "grupo02st.desc" ) )
  print( kmn0011_grp02_var08_time <- system.time( kmn0011_grp02_var08 <- biganalytics::bigkmeans( grupo02st , iter.max=500 , dist="euclid" , centers=12, nstart=12   )  )  )

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
  if( file.exists( "bigkmeans_kmn0011_grp02_var08_cluster.desc" ) ) file.remove( c( "bigkmeans_kmn0011_grp02_var08_cluster.desc" , "bigkmeans_kmn0011_grp02_var08_cluster.bin" ) )
  bigkmeans_kmn0011_grp02_var08_cluster <- bigmemory::big.matrix( nrow=nrow( grupo02st ) , ncol=1 , init=0 , type="short" , shared=T , backingfile="bigkmeans_kmn0011_grp02_var08_cluster.bin" , descriptorfile="bigkmeans_kmn0011_grp02_var08_cluster.desc" )
  colnames( bigkmeans_kmn0011_grp02_var08_cluster ) <- c( "kmc0011" )
  bigkmeans_kmn0011_grp02_var08_cluster[,1]  <- kmn0011_grp02_var08$cluster
  kmn0011_grp02_var08_centers   <- kmn0011_grp02_var08$centers
  kmn0011_grp02_var08_size      <- kmn0011_grp02_var08$size
  kmn0011_grp02_var08_withinss  <- kmn0011_grp02_var08$withinss
  setwd(srcdir)

  ###
  ### proceso 03: grabar objetos withinss, size, centers
  ###

  ### grabar objetos: withinss, size, centers
  save(
    kmn0011_grp02_var08_time
  , kmn0011_grp02_var08_centers
  , kmn0011_grp02_var08_size
  , kmn0011_grp02_var08_withinss
  , file="RData/bigkmeans_kmn0011_grp02_var08_objetos.RData" )
