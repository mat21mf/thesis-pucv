  ### retirar otros objetos
  rm( list = ls() )

  ### cargar datos cluster seleccionados
  load( "grupo01_caracterizar_cluster_kmn0006_var08.RData" )
  load( "grupo02_caracterizar_cluster_kmn0010_var08.RData" )
  load( "grupo03_caracterizar_cluster_kmn0007_var08.RData" )
  load( "grupo04_caracterizar_cluster_kmn0008_var08.RData" )
  load( "grupo05_caracterizar_cluster_kmn0008_var08.RData" )
  load( "grupo06_caracterizar_cluster_kmn0009_var08.RData" )

  ### cargar dimensiones de cada cluster
  load( "nrows_var08.RData" )
  bigkmeans_kmn0006_grp01_var08_cluster.nrows_t <- as.data.frame( t( data.frame( nobs = bigkmeans_kmn0006_grp01_var08_cluster.nrows ) ) )
  bigkmeans_kmn0010_grp02_var08_cluster.nrows_t <- as.data.frame( t( data.frame( nobs = bigkmeans_kmn0010_grp02_var08_cluster.nrows ) ) )
  bigkmeans_kmn0007_grp03_var08_cluster.nrows_t <- as.data.frame( t( data.frame( nobs = bigkmeans_kmn0007_grp03_var08_cluster.nrows ) ) )
  bigkmeans_kmn0008_grp04_var08_cluster.nrows_t <- as.data.frame( t( data.frame( nobs = bigkmeans_kmn0008_grp04_var08_cluster.nrows ) ) )
  bigkmeans_kmn0008_grp05_var08_cluster.nrows_t <- as.data.frame( t( data.frame( nobs = bigkmeans_kmn0008_grp05_var08_cluster.nrows ) ) )
  bigkmeans_kmn0009_grp06_var08_cluster.nrows_t <- as.data.frame( t( data.frame( nobs = bigkmeans_kmn0009_grp06_var08_cluster.nrows ) ) )
  colnames( bigkmeans_kmn0006_grp01_var08_cluster.nrows_t ) <- paste0( "cl_" , colnames( bigkmeans_kmn0006_grp01_var08_cluster.nrows_t ) )
  colnames( bigkmeans_kmn0010_grp02_var08_cluster.nrows_t ) <- paste0( "cl_" , colnames( bigkmeans_kmn0010_grp02_var08_cluster.nrows_t ) )
  colnames( bigkmeans_kmn0007_grp03_var08_cluster.nrows_t ) <- paste0( "cl_" , colnames( bigkmeans_kmn0007_grp03_var08_cluster.nrows_t ) )
  colnames( bigkmeans_kmn0008_grp04_var08_cluster.nrows_t ) <- paste0( "cl_" , colnames( bigkmeans_kmn0008_grp04_var08_cluster.nrows_t ) )
  colnames( bigkmeans_kmn0008_grp05_var08_cluster.nrows_t ) <- paste0( "cl_" , colnames( bigkmeans_kmn0008_grp05_var08_cluster.nrows_t ) )
  colnames( bigkmeans_kmn0009_grp06_var08_cluster.nrows_t ) <- paste0( "cl_" , colnames( bigkmeans_kmn0009_grp06_var08_cluster.nrows_t ) )

  ### trasponer y ordenar dataframes
  TransponerDataFrame <- function( inpdfm , strvar )
  {
    outdfm <- paste0( inpdfm , '_t' )
    outdfm <- as.data.frame( t( inpdfm ) )
    outdfm <- outdfm [ rownames( outdfm ) != 'Cluster' , ]
    outdfm <- outdfm [ grep( "scaled" , rownames( outdfm ) , invert=T ) , ]
   #outdfm <- dplyr::arrange( outdfm , desc( rownames( outdfm ) ) )
    colnames( outdfm ) <- paste0( 'cl_' , colnames( outdfm ) )
    rownames( outdfm ) <- paste0(         rownames( outdfm ) , '.' , strvar )
   #print( outdfm )
    return( outdfm  )
  }

  grupo01_bigkmeans_kmn0006_grp01_var08_cluster_mean_t <- TransponerDataFrame( grupo01_bigkmeans_kmn0006_grp01_var08_cluster_mean , "mean" )
  grupo02_bigkmeans_kmn0010_grp02_var08_cluster_mean_t <- TransponerDataFrame( grupo02_bigkmeans_kmn0010_grp02_var08_cluster_mean , "mean" )
  grupo03_bigkmeans_kmn0007_grp03_var08_cluster_mean_t <- TransponerDataFrame( grupo03_bigkmeans_kmn0007_grp03_var08_cluster_mean , "mean" )
  grupo04_bigkmeans_kmn0008_grp04_var08_cluster_mean_t <- TransponerDataFrame( grupo04_bigkmeans_kmn0008_grp04_var08_cluster_mean , "mean" )
  grupo05_bigkmeans_kmn0008_grp05_var08_cluster_mean_t <- TransponerDataFrame( grupo05_bigkmeans_kmn0008_grp05_var08_cluster_mean , "mean" )
  grupo06_bigkmeans_kmn0009_grp06_var08_cluster_mean_t <- TransponerDataFrame( grupo06_bigkmeans_kmn0009_grp06_var08_cluster_mean , "mean" )

  grupo01_bigkmeans_kmn0006_grp01_var08_cluster_max_t  <- TransponerDataFrame( grupo01_bigkmeans_kmn0006_grp01_var08_cluster_max  , "max"  )
  grupo02_bigkmeans_kmn0010_grp02_var08_cluster_max_t  <- TransponerDataFrame( grupo02_bigkmeans_kmn0010_grp02_var08_cluster_max  , "max"  )
  grupo03_bigkmeans_kmn0007_grp03_var08_cluster_max_t  <- TransponerDataFrame( grupo03_bigkmeans_kmn0007_grp03_var08_cluster_max  , "max"  )
  grupo04_bigkmeans_kmn0008_grp04_var08_cluster_max_t  <- TransponerDataFrame( grupo04_bigkmeans_kmn0008_grp04_var08_cluster_max  , "max"  )
  grupo05_bigkmeans_kmn0008_grp05_var08_cluster_max_t  <- TransponerDataFrame( grupo05_bigkmeans_kmn0008_grp05_var08_cluster_max  , "max"  )
  grupo06_bigkmeans_kmn0009_grp06_var08_cluster_max_t  <- TransponerDataFrame( grupo06_bigkmeans_kmn0009_grp06_var08_cluster_max  , "max"  )

  grupo01_bigkmeans_kmn0006_grp01_var08_cluster_min_t  <- TransponerDataFrame( grupo01_bigkmeans_kmn0006_grp01_var08_cluster_min  , "min"  )
  grupo02_bigkmeans_kmn0010_grp02_var08_cluster_min_t  <- TransponerDataFrame( grupo02_bigkmeans_kmn0010_grp02_var08_cluster_min  , "min"  )
  grupo03_bigkmeans_kmn0007_grp03_var08_cluster_min_t  <- TransponerDataFrame( grupo03_bigkmeans_kmn0007_grp03_var08_cluster_min  , "min"  )
  grupo04_bigkmeans_kmn0008_grp04_var08_cluster_min_t  <- TransponerDataFrame( grupo04_bigkmeans_kmn0008_grp04_var08_cluster_min  , "min"  )
  grupo05_bigkmeans_kmn0008_grp05_var08_cluster_min_t  <- TransponerDataFrame( grupo05_bigkmeans_kmn0008_grp05_var08_cluster_min  , "min"  )
  grupo06_bigkmeans_kmn0009_grp06_var08_cluster_min_t  <- TransponerDataFrame( grupo06_bigkmeans_kmn0009_grp06_var08_cluster_min  , "min"  )

  grupo01_bigkmeans_kmn0006_grp01_var08_cluster_t <- rbind( grupo01_bigkmeans_kmn0006_grp01_var08_cluster_mean_t , grupo01_bigkmeans_kmn0006_grp01_var08_cluster_max_t  , grupo01_bigkmeans_kmn0006_grp01_var08_cluster_min_t  )
  grupo02_bigkmeans_kmn0010_grp02_var08_cluster_t <- rbind( grupo02_bigkmeans_kmn0010_grp02_var08_cluster_mean_t , grupo02_bigkmeans_kmn0010_grp02_var08_cluster_max_t  , grupo02_bigkmeans_kmn0010_grp02_var08_cluster_min_t  )
  grupo03_bigkmeans_kmn0007_grp03_var08_cluster_t <- rbind( grupo03_bigkmeans_kmn0007_grp03_var08_cluster_mean_t , grupo03_bigkmeans_kmn0007_grp03_var08_cluster_max_t  , grupo03_bigkmeans_kmn0007_grp03_var08_cluster_min_t  )
  grupo04_bigkmeans_kmn0008_grp04_var08_cluster_t <- rbind( grupo04_bigkmeans_kmn0008_grp04_var08_cluster_mean_t , grupo04_bigkmeans_kmn0008_grp04_var08_cluster_max_t  , grupo04_bigkmeans_kmn0008_grp04_var08_cluster_min_t  )
  grupo05_bigkmeans_kmn0008_grp05_var08_cluster_t <- rbind( grupo05_bigkmeans_kmn0008_grp05_var08_cluster_mean_t , grupo05_bigkmeans_kmn0008_grp05_var08_cluster_max_t  , grupo05_bigkmeans_kmn0008_grp05_var08_cluster_min_t  )
  grupo06_bigkmeans_kmn0009_grp06_var08_cluster_t <- rbind( grupo06_bigkmeans_kmn0009_grp06_var08_cluster_mean_t , grupo06_bigkmeans_kmn0009_grp06_var08_cluster_max_t  , grupo06_bigkmeans_kmn0009_grp06_var08_cluster_min_t  )

  rm( grupo01_bigkmeans_kmn0006_grp01_var08_cluster_mean_t , grupo01_bigkmeans_kmn0006_grp01_var08_cluster_max_t  , grupo01_bigkmeans_kmn0006_grp01_var08_cluster_min_t  )
  rm( grupo02_bigkmeans_kmn0010_grp02_var08_cluster_mean_t , grupo02_bigkmeans_kmn0010_grp02_var08_cluster_max_t  , grupo02_bigkmeans_kmn0010_grp02_var08_cluster_min_t  )
  rm( grupo03_bigkmeans_kmn0007_grp03_var08_cluster_mean_t , grupo03_bigkmeans_kmn0007_grp03_var08_cluster_max_t  , grupo03_bigkmeans_kmn0007_grp03_var08_cluster_min_t  )
  rm( grupo04_bigkmeans_kmn0008_grp04_var08_cluster_mean_t , grupo04_bigkmeans_kmn0008_grp04_var08_cluster_max_t  , grupo04_bigkmeans_kmn0008_grp04_var08_cluster_min_t  )
  rm( grupo05_bigkmeans_kmn0008_grp05_var08_cluster_mean_t , grupo05_bigkmeans_kmn0008_grp05_var08_cluster_max_t  , grupo05_bigkmeans_kmn0008_grp05_var08_cluster_min_t  )
  rm( grupo06_bigkmeans_kmn0009_grp06_var08_cluster_mean_t , grupo06_bigkmeans_kmn0009_grp06_var08_cluster_max_t  , grupo06_bigkmeans_kmn0009_grp06_var08_cluster_min_t  )

  grupo01_bigkmeans_kmn0006_grp01_var08_cluster_t <- tibble::rownames_to_column( grupo01_bigkmeans_kmn0006_grp01_var08_cluster_t , "Variable" )
  grupo02_bigkmeans_kmn0010_grp02_var08_cluster_t <- tibble::rownames_to_column( grupo02_bigkmeans_kmn0010_grp02_var08_cluster_t , "Variable" )
  grupo03_bigkmeans_kmn0007_grp03_var08_cluster_t <- tibble::rownames_to_column( grupo03_bigkmeans_kmn0007_grp03_var08_cluster_t , "Variable" )
  grupo04_bigkmeans_kmn0008_grp04_var08_cluster_t <- tibble::rownames_to_column( grupo04_bigkmeans_kmn0008_grp04_var08_cluster_t , "Variable" )
  grupo05_bigkmeans_kmn0008_grp05_var08_cluster_t <- tibble::rownames_to_column( grupo05_bigkmeans_kmn0008_grp05_var08_cluster_t , "Variable" )
  grupo06_bigkmeans_kmn0009_grp06_var08_cluster_t <- tibble::rownames_to_column( grupo06_bigkmeans_kmn0009_grp06_var08_cluster_t , "Variable" )

  grupo01_bigkmeans_kmn0006_grp01_var08_cluster_t <- dplyr::arrange( grupo01_bigkmeans_kmn0006_grp01_var08_cluster_t , Variable )
  grupo02_bigkmeans_kmn0010_grp02_var08_cluster_t <- dplyr::arrange( grupo02_bigkmeans_kmn0010_grp02_var08_cluster_t , Variable )
  grupo03_bigkmeans_kmn0007_grp03_var08_cluster_t <- dplyr::arrange( grupo03_bigkmeans_kmn0007_grp03_var08_cluster_t , Variable )
  grupo04_bigkmeans_kmn0008_grp04_var08_cluster_t <- dplyr::arrange( grupo04_bigkmeans_kmn0008_grp04_var08_cluster_t , Variable )
  grupo05_bigkmeans_kmn0008_grp05_var08_cluster_t <- dplyr::arrange( grupo05_bigkmeans_kmn0008_grp05_var08_cluster_t , Variable )
  grupo06_bigkmeans_kmn0009_grp06_var08_cluster_t <- dplyr::arrange( grupo06_bigkmeans_kmn0009_grp06_var08_cluster_t , Variable )

  bigkmeans_kmn0006_grp01_var08_cluster.nrows_t <- tibble::rownames_to_column( bigkmeans_kmn0006_grp01_var08_cluster.nrows_t , "Variable" )
  bigkmeans_kmn0010_grp02_var08_cluster.nrows_t <- tibble::rownames_to_column( bigkmeans_kmn0010_grp02_var08_cluster.nrows_t , "Variable" )
  bigkmeans_kmn0007_grp03_var08_cluster.nrows_t <- tibble::rownames_to_column( bigkmeans_kmn0007_grp03_var08_cluster.nrows_t , "Variable" )
  bigkmeans_kmn0008_grp04_var08_cluster.nrows_t <- tibble::rownames_to_column( bigkmeans_kmn0008_grp04_var08_cluster.nrows_t , "Variable" )
  bigkmeans_kmn0008_grp05_var08_cluster.nrows_t <- tibble::rownames_to_column( bigkmeans_kmn0008_grp05_var08_cluster.nrows_t , "Variable" )
  bigkmeans_kmn0009_grp06_var08_cluster.nrows_t <- tibble::rownames_to_column( bigkmeans_kmn0009_grp06_var08_cluster.nrows_t , "Variable" )

  grupo01_bigkmeans_kmn0006_grp01_var08_cluster_t <- rbind( bigkmeans_kmn0006_grp01_var08_cluster.nrows_t , grupo01_bigkmeans_kmn0006_grp01_var08_cluster_t )
  grupo02_bigkmeans_kmn0010_grp02_var08_cluster_t <- rbind( bigkmeans_kmn0010_grp02_var08_cluster.nrows_t , grupo02_bigkmeans_kmn0010_grp02_var08_cluster_t )
  grupo03_bigkmeans_kmn0007_grp03_var08_cluster_t <- rbind( bigkmeans_kmn0007_grp03_var08_cluster.nrows_t , grupo03_bigkmeans_kmn0007_grp03_var08_cluster_t )
  grupo04_bigkmeans_kmn0008_grp04_var08_cluster_t <- rbind( bigkmeans_kmn0008_grp04_var08_cluster.nrows_t , grupo04_bigkmeans_kmn0008_grp04_var08_cluster_t )
  grupo05_bigkmeans_kmn0008_grp05_var08_cluster_t <- rbind( bigkmeans_kmn0008_grp05_var08_cluster.nrows_t , grupo05_bigkmeans_kmn0008_grp05_var08_cluster_t )
  grupo06_bigkmeans_kmn0009_grp06_var08_cluster_t <- rbind( bigkmeans_kmn0009_grp06_var08_cluster.nrows_t , grupo06_bigkmeans_kmn0009_grp06_var08_cluster_t )

  print( grupo01_bigkmeans_kmn0006_grp01_var08_cluster_t )
  print( grupo02_bigkmeans_kmn0010_grp02_var08_cluster_t )
  print( grupo03_bigkmeans_kmn0007_grp03_var08_cluster_t )
  print( grupo04_bigkmeans_kmn0008_grp04_var08_cluster_t )
  print( grupo05_bigkmeans_kmn0008_grp05_var08_cluster_t )
  print( grupo06_bigkmeans_kmn0009_grp06_var08_cluster_t )

  rm( bigkmeans_kmn0006_grp01_var08_cluster.nrows_t )
  rm( bigkmeans_kmn0010_grp02_var08_cluster.nrows_t )
  rm( bigkmeans_kmn0007_grp03_var08_cluster.nrows_t )
  rm( bigkmeans_kmn0008_grp04_var08_cluster.nrows_t )
  rm( bigkmeans_kmn0008_grp05_var08_cluster.nrows_t )
  rm( bigkmeans_kmn0009_grp06_var08_cluster.nrows_t )

  rm( bigkmeans_kmn0006_grp01_var08_cluster.nrows )
  rm( bigkmeans_kmn0010_grp02_var08_cluster.nrows )
  rm( bigkmeans_kmn0007_grp03_var08_cluster.nrows )
  rm( bigkmeans_kmn0008_grp04_var08_cluster.nrows )
  rm( bigkmeans_kmn0008_grp05_var08_cluster.nrows )
  rm( bigkmeans_kmn0009_grp06_var08_cluster.nrows )

# ### graficar mean
#   par( mar = c(5,5,4,2) + 0.1 ) ## default is c(5,4,4,2) + 0.1
#   plot(  grupo00_bigkmeans_kmn0024_grp00_var08_cluster_mean$DEM , type="l" , lty=1 , col="red"   , xaxt="none" , ann=F , las=1 )
#   lines( grupo00_bigkmeans_kmn0018_grp00_var08_cluster_mean$DEM , type="l" , lty=1 , col="green" )
#   lines( grupo00_bigkmeans_kmn0010_grp00_var08_cluster_mean$DEM , type="l" , lty=1 , col="blue"  )
#   axis( 1 , xaxp= c( 1 ,  25 ,  24 ) , labels=T , las=1 , cex.axis=.8 )
#  #axis( 2                            , labels=F , las=1 , cex.axis=.7 ) ## seq() no funciona
#   title( ylab="DEM"                       , line=4 )
#   title( xlab="Cluster"                   , line=3 )
#   title( main="Promedios variable DEM" )
#   legend( 22.5 , 4500 , legend=c("k=11","k=19","k=25") , col=c("blue","green","red") , lty=1 )
