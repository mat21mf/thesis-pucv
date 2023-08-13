  ### cargar libreria
  library( biganalytics )

  ### cargar big.matrix
  source( "RutinaMatConf_Load_grupo01_kmn0006_var08.R" )

  ### mean
  grupo01_bigkmeans_kmn0006_grp01_var08_cluster_mean <- data.frame( matrix( ncol=15 ) )
  colnames( grupo01_bigkmeans_kmn0006_grp01_var08_cluster_mean ) <- c( "Eje__x_scaled","Eje__y_scaled","Asp__x_scaled","Asp__y_scaled","DEM_scaled","NDMI_scaled","Slope_scaled","TWI_scaled","Asp__x","Asp__y","DEM","NDMI","Slope","TWI","Cluster" )
  grupo01_bigkmeans_kmn0006_grp01_var08_cluster_mean[ 1,] <- c( biganalytics::colmean( as.big.matrix( grupo01_bigkmeans_kmn0006_grp01_var08_cluster[ bigmemory::mwhich( grupo01_bigkmeans_kmn0006_grp01_var08_cluster , 15 ,  1 , 'eq' ) , c(1:14) ] ) ) , Cluster= 1 )
  grupo01_bigkmeans_kmn0006_grp01_var08_cluster_mean[ 2,] <- c( biganalytics::colmean( as.big.matrix( grupo01_bigkmeans_kmn0006_grp01_var08_cluster[ bigmemory::mwhich( grupo01_bigkmeans_kmn0006_grp01_var08_cluster , 15 ,  2 , 'eq' ) , c(1:14) ] ) ) , Cluster= 2 )
  grupo01_bigkmeans_kmn0006_grp01_var08_cluster_mean[ 3,] <- c( biganalytics::colmean( as.big.matrix( grupo01_bigkmeans_kmn0006_grp01_var08_cluster[ bigmemory::mwhich( grupo01_bigkmeans_kmn0006_grp01_var08_cluster , 15 ,  3 , 'eq' ) , c(1:14) ] ) ) , Cluster= 3 )
  grupo01_bigkmeans_kmn0006_grp01_var08_cluster_mean[ 4,] <- c( biganalytics::colmean( as.big.matrix( grupo01_bigkmeans_kmn0006_grp01_var08_cluster[ bigmemory::mwhich( grupo01_bigkmeans_kmn0006_grp01_var08_cluster , 15 ,  4 , 'eq' ) , c(1:14) ] ) ) , Cluster= 4 )
  grupo01_bigkmeans_kmn0006_grp01_var08_cluster_mean[ 5,] <- c( biganalytics::colmean( as.big.matrix( grupo01_bigkmeans_kmn0006_grp01_var08_cluster[ bigmemory::mwhich( grupo01_bigkmeans_kmn0006_grp01_var08_cluster , 15 ,  5 , 'eq' ) , c(1:14) ] ) ) , Cluster= 5 )
  grupo01_bigkmeans_kmn0006_grp01_var08_cluster_mean[ 6,] <- c( biganalytics::colmean( as.big.matrix( grupo01_bigkmeans_kmn0006_grp01_var08_cluster[ bigmemory::mwhich( grupo01_bigkmeans_kmn0006_grp01_var08_cluster , 15 ,  6 , 'eq' ) , c(1:14) ] ) ) , Cluster= 6 )
  grupo01_bigkmeans_kmn0006_grp01_var08_cluster_mean[ 7,] <- c( biganalytics::colmean( as.big.matrix( grupo01_bigkmeans_kmn0006_grp01_var08_cluster[ bigmemory::mwhich( grupo01_bigkmeans_kmn0006_grp01_var08_cluster , 15 ,  7 , 'eq' ) , c(1:14) ] ) ) , Cluster= 7 )

  ### sd
  grupo01_bigkmeans_kmn0006_grp01_var08_cluster_sd <- data.frame( matrix( ncol=15 ) )
  colnames( grupo01_bigkmeans_kmn0006_grp01_var08_cluster_sd ) <- c( "Eje__x_scaled","Eje__y_scaled","Asp__x_scaled","Asp__y_scaled","DEM_scaled","NDMI_scaled","Slope_scaled","TWI_scaled","Asp__x","Asp__y","DEM","NDMI","Slope","TWI","Cluster" )
  grupo01_bigkmeans_kmn0006_grp01_var08_cluster_sd[ 1,] <- c( biganalytics::colsd( as.big.matrix( grupo01_bigkmeans_kmn0006_grp01_var08_cluster[ bigmemory::mwhich( grupo01_bigkmeans_kmn0006_grp01_var08_cluster , 15 ,  1 , 'eq' ) , c(1:14) ] ) ) , Cluster= 1 )
  grupo01_bigkmeans_kmn0006_grp01_var08_cluster_sd[ 2,] <- c( biganalytics::colsd( as.big.matrix( grupo01_bigkmeans_kmn0006_grp01_var08_cluster[ bigmemory::mwhich( grupo01_bigkmeans_kmn0006_grp01_var08_cluster , 15 ,  2 , 'eq' ) , c(1:14) ] ) ) , Cluster= 2 )
  grupo01_bigkmeans_kmn0006_grp01_var08_cluster_sd[ 3,] <- c( biganalytics::colsd( as.big.matrix( grupo01_bigkmeans_kmn0006_grp01_var08_cluster[ bigmemory::mwhich( grupo01_bigkmeans_kmn0006_grp01_var08_cluster , 15 ,  3 , 'eq' ) , c(1:14) ] ) ) , Cluster= 3 )
  grupo01_bigkmeans_kmn0006_grp01_var08_cluster_sd[ 4,] <- c( biganalytics::colsd( as.big.matrix( grupo01_bigkmeans_kmn0006_grp01_var08_cluster[ bigmemory::mwhich( grupo01_bigkmeans_kmn0006_grp01_var08_cluster , 15 ,  4 , 'eq' ) , c(1:14) ] ) ) , Cluster= 4 )
  grupo01_bigkmeans_kmn0006_grp01_var08_cluster_sd[ 5,] <- c( biganalytics::colsd( as.big.matrix( grupo01_bigkmeans_kmn0006_grp01_var08_cluster[ bigmemory::mwhich( grupo01_bigkmeans_kmn0006_grp01_var08_cluster , 15 ,  5 , 'eq' ) , c(1:14) ] ) ) , Cluster= 5 )
  grupo01_bigkmeans_kmn0006_grp01_var08_cluster_sd[ 6,] <- c( biganalytics::colsd( as.big.matrix( grupo01_bigkmeans_kmn0006_grp01_var08_cluster[ bigmemory::mwhich( grupo01_bigkmeans_kmn0006_grp01_var08_cluster , 15 ,  6 , 'eq' ) , c(1:14) ] ) ) , Cluster= 6 )
  grupo01_bigkmeans_kmn0006_grp01_var08_cluster_sd[ 7,] <- c( biganalytics::colsd( as.big.matrix( grupo01_bigkmeans_kmn0006_grp01_var08_cluster[ bigmemory::mwhich( grupo01_bigkmeans_kmn0006_grp01_var08_cluster , 15 ,  7 , 'eq' ) , c(1:14) ] ) ) , Cluster= 7 )

  ### max
  grupo01_bigkmeans_kmn0006_grp01_var08_cluster_max <- data.frame( matrix( ncol=15 ) )
  colnames( grupo01_bigkmeans_kmn0006_grp01_var08_cluster_max ) <- c( "Eje__x_scaled","Eje__y_scaled","Asp__x_scaled","Asp__y_scaled","DEM_scaled","NDMI_scaled","Slope_scaled","TWI_scaled","Asp__x","Asp__y","DEM","NDMI","Slope","TWI","Cluster" )
  grupo01_bigkmeans_kmn0006_grp01_var08_cluster_max[ 1,] <- c( biganalytics::colmax( as.big.matrix( grupo01_bigkmeans_kmn0006_grp01_var08_cluster[ bigmemory::mwhich( grupo01_bigkmeans_kmn0006_grp01_var08_cluster , 15 ,  1 , 'eq' ) , c(1:14) ] ) ) , Cluster= 1 )
  grupo01_bigkmeans_kmn0006_grp01_var08_cluster_max[ 2,] <- c( biganalytics::colmax( as.big.matrix( grupo01_bigkmeans_kmn0006_grp01_var08_cluster[ bigmemory::mwhich( grupo01_bigkmeans_kmn0006_grp01_var08_cluster , 15 ,  2 , 'eq' ) , c(1:14) ] ) ) , Cluster= 2 )
  grupo01_bigkmeans_kmn0006_grp01_var08_cluster_max[ 3,] <- c( biganalytics::colmax( as.big.matrix( grupo01_bigkmeans_kmn0006_grp01_var08_cluster[ bigmemory::mwhich( grupo01_bigkmeans_kmn0006_grp01_var08_cluster , 15 ,  3 , 'eq' ) , c(1:14) ] ) ) , Cluster= 3 )
  grupo01_bigkmeans_kmn0006_grp01_var08_cluster_max[ 4,] <- c( biganalytics::colmax( as.big.matrix( grupo01_bigkmeans_kmn0006_grp01_var08_cluster[ bigmemory::mwhich( grupo01_bigkmeans_kmn0006_grp01_var08_cluster , 15 ,  4 , 'eq' ) , c(1:14) ] ) ) , Cluster= 4 )
  grupo01_bigkmeans_kmn0006_grp01_var08_cluster_max[ 5,] <- c( biganalytics::colmax( as.big.matrix( grupo01_bigkmeans_kmn0006_grp01_var08_cluster[ bigmemory::mwhich( grupo01_bigkmeans_kmn0006_grp01_var08_cluster , 15 ,  5 , 'eq' ) , c(1:14) ] ) ) , Cluster= 5 )
  grupo01_bigkmeans_kmn0006_grp01_var08_cluster_max[ 6,] <- c( biganalytics::colmax( as.big.matrix( grupo01_bigkmeans_kmn0006_grp01_var08_cluster[ bigmemory::mwhich( grupo01_bigkmeans_kmn0006_grp01_var08_cluster , 15 ,  6 , 'eq' ) , c(1:14) ] ) ) , Cluster= 6 )
  grupo01_bigkmeans_kmn0006_grp01_var08_cluster_max[ 7,] <- c( biganalytics::colmax( as.big.matrix( grupo01_bigkmeans_kmn0006_grp01_var08_cluster[ bigmemory::mwhich( grupo01_bigkmeans_kmn0006_grp01_var08_cluster , 15 ,  7 , 'eq' ) , c(1:14) ] ) ) , Cluster= 7 )

  ### min
  grupo01_bigkmeans_kmn0006_grp01_var08_cluster_min <- data.frame( matrix( ncol=15 ) )
  colnames( grupo01_bigkmeans_kmn0006_grp01_var08_cluster_min ) <- c( "Eje__x_scaled","Eje__y_scaled","Asp__x_scaled","Asp__y_scaled","DEM_scaled","NDMI_scaled","Slope_scaled","TWI_scaled","Asp__x","Asp__y","DEM","NDMI","Slope","TWI","Cluster" )
  grupo01_bigkmeans_kmn0006_grp01_var08_cluster_min[ 1,] <- c( biganalytics::colmin( as.big.matrix( grupo01_bigkmeans_kmn0006_grp01_var08_cluster[ bigmemory::mwhich( grupo01_bigkmeans_kmn0006_grp01_var08_cluster , 15 ,  1 , 'eq' ) , c(1:14) ] ) ) , Cluster= 1 )
  grupo01_bigkmeans_kmn0006_grp01_var08_cluster_min[ 2,] <- c( biganalytics::colmin( as.big.matrix( grupo01_bigkmeans_kmn0006_grp01_var08_cluster[ bigmemory::mwhich( grupo01_bigkmeans_kmn0006_grp01_var08_cluster , 15 ,  2 , 'eq' ) , c(1:14) ] ) ) , Cluster= 2 )
  grupo01_bigkmeans_kmn0006_grp01_var08_cluster_min[ 3,] <- c( biganalytics::colmin( as.big.matrix( grupo01_bigkmeans_kmn0006_grp01_var08_cluster[ bigmemory::mwhich( grupo01_bigkmeans_kmn0006_grp01_var08_cluster , 15 ,  3 , 'eq' ) , c(1:14) ] ) ) , Cluster= 3 )
  grupo01_bigkmeans_kmn0006_grp01_var08_cluster_min[ 4,] <- c( biganalytics::colmin( as.big.matrix( grupo01_bigkmeans_kmn0006_grp01_var08_cluster[ bigmemory::mwhich( grupo01_bigkmeans_kmn0006_grp01_var08_cluster , 15 ,  4 , 'eq' ) , c(1:14) ] ) ) , Cluster= 4 )
  grupo01_bigkmeans_kmn0006_grp01_var08_cluster_min[ 5,] <- c( biganalytics::colmin( as.big.matrix( grupo01_bigkmeans_kmn0006_grp01_var08_cluster[ bigmemory::mwhich( grupo01_bigkmeans_kmn0006_grp01_var08_cluster , 15 ,  5 , 'eq' ) , c(1:14) ] ) ) , Cluster= 5 )
  grupo01_bigkmeans_kmn0006_grp01_var08_cluster_min[ 6,] <- c( biganalytics::colmin( as.big.matrix( grupo01_bigkmeans_kmn0006_grp01_var08_cluster[ bigmemory::mwhich( grupo01_bigkmeans_kmn0006_grp01_var08_cluster , 15 ,  6 , 'eq' ) , c(1:14) ] ) ) , Cluster= 6 )
  grupo01_bigkmeans_kmn0006_grp01_var08_cluster_min[ 7,] <- c( biganalytics::colmin( as.big.matrix( grupo01_bigkmeans_kmn0006_grp01_var08_cluster[ bigmemory::mwhich( grupo01_bigkmeans_kmn0006_grp01_var08_cluster , 15 ,  7 , 'eq' ) , c(1:14) ] ) ) , Cluster= 7 )

  ### se
  grupo01_bigkmeans_kmn0006_grp01_var08_cluster_se <- data.frame( matrix( ncol=15 ) )
  colnames( grupo01_bigkmeans_kmn0006_grp01_var08_cluster_se ) <- c( "Eje__x_scaled","Eje__y_scaled","Asp__x_scaled","Asp__y_scaled","DEM_scaled","NDMI_scaled","Slope_scaled","TWI_scaled","Asp__x","Asp__y","DEM","NDMI","Slope","TWI","Cluster" )
  grupo01_bigkmeans_kmn0006_grp01_var08_cluster_se[ 1,] <- c( biganalytics::colsd( as.big.matrix( grupo01_bigkmeans_kmn0006_grp01_var08_cluster[ bigmemory::mwhich( grupo01_bigkmeans_kmn0006_grp01_var08_cluster , 15 ,  1 , 'eq' ) , c(1:14) ] ) ) / sqrt( bigtabulate::bigtable( grupo01_bigkmeans_kmn0006_grp01_var08_cluster , "Cluster" )[ 1] ) , Cluster= 1 )
  grupo01_bigkmeans_kmn0006_grp01_var08_cluster_se[ 2,] <- c( biganalytics::colsd( as.big.matrix( grupo01_bigkmeans_kmn0006_grp01_var08_cluster[ bigmemory::mwhich( grupo01_bigkmeans_kmn0006_grp01_var08_cluster , 15 ,  2 , 'eq' ) , c(1:14) ] ) ) / sqrt( bigtabulate::bigtable( grupo01_bigkmeans_kmn0006_grp01_var08_cluster , "Cluster" )[ 2] ) , Cluster= 2 )
  grupo01_bigkmeans_kmn0006_grp01_var08_cluster_se[ 3,] <- c( biganalytics::colsd( as.big.matrix( grupo01_bigkmeans_kmn0006_grp01_var08_cluster[ bigmemory::mwhich( grupo01_bigkmeans_kmn0006_grp01_var08_cluster , 15 ,  3 , 'eq' ) , c(1:14) ] ) ) / sqrt( bigtabulate::bigtable( grupo01_bigkmeans_kmn0006_grp01_var08_cluster , "Cluster" )[ 3] ) , Cluster= 3 )
  grupo01_bigkmeans_kmn0006_grp01_var08_cluster_se[ 4,] <- c( biganalytics::colsd( as.big.matrix( grupo01_bigkmeans_kmn0006_grp01_var08_cluster[ bigmemory::mwhich( grupo01_bigkmeans_kmn0006_grp01_var08_cluster , 15 ,  4 , 'eq' ) , c(1:14) ] ) ) / sqrt( bigtabulate::bigtable( grupo01_bigkmeans_kmn0006_grp01_var08_cluster , "Cluster" )[ 4] ) , Cluster= 4 )
  grupo01_bigkmeans_kmn0006_grp01_var08_cluster_se[ 5,] <- c( biganalytics::colsd( as.big.matrix( grupo01_bigkmeans_kmn0006_grp01_var08_cluster[ bigmemory::mwhich( grupo01_bigkmeans_kmn0006_grp01_var08_cluster , 15 ,  5 , 'eq' ) , c(1:14) ] ) ) / sqrt( bigtabulate::bigtable( grupo01_bigkmeans_kmn0006_grp01_var08_cluster , "Cluster" )[ 5] ) , Cluster= 5 )
  grupo01_bigkmeans_kmn0006_grp01_var08_cluster_se[ 6,] <- c( biganalytics::colsd( as.big.matrix( grupo01_bigkmeans_kmn0006_grp01_var08_cluster[ bigmemory::mwhich( grupo01_bigkmeans_kmn0006_grp01_var08_cluster , 15 ,  6 , 'eq' ) , c(1:14) ] ) ) / sqrt( bigtabulate::bigtable( grupo01_bigkmeans_kmn0006_grp01_var08_cluster , "Cluster" )[ 6] ) , Cluster= 6 )
  grupo01_bigkmeans_kmn0006_grp01_var08_cluster_se[ 7,] <- c( biganalytics::colsd( as.big.matrix( grupo01_bigkmeans_kmn0006_grp01_var08_cluster[ bigmemory::mwhich( grupo01_bigkmeans_kmn0006_grp01_var08_cluster , 15 ,  7 , 'eq' ) , c(1:14) ] ) ) / sqrt( bigtabulate::bigtable( grupo01_bigkmeans_kmn0006_grp01_var08_cluster , "Cluster" )[ 7] ) , Cluster= 7 )

  ### ci
  grupo01_bigkmeans_kmn0006_grp01_var08_cluster_ci <- data.frame( matrix( ncol=15 ) )
  colnames( grupo01_bigkmeans_kmn0006_grp01_var08_cluster_ci ) <- c( "Eje__x_scaled","Eje__y_scaled","Asp__x_scaled","Asp__y_scaled","DEM_scaled","NDMI_scaled","Slope_scaled","TWI_scaled","Asp__x","Asp__y","DEM","NDMI","Slope","TWI","Cluster" )
  grupo01_bigkmeans_kmn0006_grp01_var08_cluster_ci[ 1,] <- c( grupo01_bigkmeans_kmn0006_grp01_var08_cluster_se[ 1,c(1:14)] * qt( .95/2+.5 , bigtabulate::bigtable( grupo01_bigkmeans_kmn0006_grp01_var08_cluster , "Cluster" )[ 1] - 1 ) , Cluster= 1 )
  grupo01_bigkmeans_kmn0006_grp01_var08_cluster_ci[ 2,] <- c( grupo01_bigkmeans_kmn0006_grp01_var08_cluster_se[ 2,c(1:14)] * qt( .95/2+.5 , bigtabulate::bigtable( grupo01_bigkmeans_kmn0006_grp01_var08_cluster , "Cluster" )[ 2] - 1 ) , Cluster= 2 )
  grupo01_bigkmeans_kmn0006_grp01_var08_cluster_ci[ 3,] <- c( grupo01_bigkmeans_kmn0006_grp01_var08_cluster_se[ 3,c(1:14)] * qt( .95/2+.5 , bigtabulate::bigtable( grupo01_bigkmeans_kmn0006_grp01_var08_cluster , "Cluster" )[ 3] - 1 ) , Cluster= 3 )
  grupo01_bigkmeans_kmn0006_grp01_var08_cluster_ci[ 4,] <- c( grupo01_bigkmeans_kmn0006_grp01_var08_cluster_se[ 4,c(1:14)] * qt( .95/2+.5 , bigtabulate::bigtable( grupo01_bigkmeans_kmn0006_grp01_var08_cluster , "Cluster" )[ 4] - 1 ) , Cluster= 4 )
  grupo01_bigkmeans_kmn0006_grp01_var08_cluster_ci[ 5,] <- c( grupo01_bigkmeans_kmn0006_grp01_var08_cluster_se[ 5,c(1:14)] * qt( .95/2+.5 , bigtabulate::bigtable( grupo01_bigkmeans_kmn0006_grp01_var08_cluster , "Cluster" )[ 5] - 1 ) , Cluster= 5 )
  grupo01_bigkmeans_kmn0006_grp01_var08_cluster_ci[ 6,] <- c( grupo01_bigkmeans_kmn0006_grp01_var08_cluster_se[ 6,c(1:14)] * qt( .95/2+.5 , bigtabulate::bigtable( grupo01_bigkmeans_kmn0006_grp01_var08_cluster , "Cluster" )[ 6] - 1 ) , Cluster= 6 )
  grupo01_bigkmeans_kmn0006_grp01_var08_cluster_ci[ 7,] <- c( grupo01_bigkmeans_kmn0006_grp01_var08_cluster_se[ 7,c(1:14)] * qt( .95/2+.5 , bigtabulate::bigtable( grupo01_bigkmeans_kmn0006_grp01_var08_cluster , "Cluster" )[ 7] - 1 ) , Cluster= 7 )

  ### grabar objetos
  save( list = ls( pattern = c( "cluster_" ) ) , file = "grupo01_caracterizar_cluster_kmn0006_var08.RData" )
