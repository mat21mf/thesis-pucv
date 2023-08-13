  load( "kmn_var08_objetos.RData" )
  source( "DefinirVariables.R" )
  setwd( bakdir )
  library( bigmemory )
  options(bigmemory.allow.dimnames=TRUE)
  grupo02st <- bigmemory::attach.big.matrix( dget( "grupo02st.desc" ) )
  grupo02bm <- bigmemory::attach.big.matrix( dget( "grupo02bm.desc" ) )
  bigkmeans_kmn0024_grp02_var08_cluster <- bigmemory::attach.big.matrix( dget( "bigkmeans_kmn0024_grp02_var08_cluster.desc" ) )
  if( file.exists( "grupo02_bigkmeans_kmn0024_grp02_var08_cluster.desc" ) ) file.remove( c( "grupo02_bigkmeans_kmn0024_grp02_var08_cluster.desc" , "grupo02_bigkmeans_kmn0024_grp02_var08_cluster.bin" ) )
  grupo02_bigkmeans_kmn0024_grp02_var08_cluster <- bigmemory::big.matrix( ncol = 15 , nrow = bigmemory::nrow( grupo02bm ) , init=0 , backingfile = "grupo02_bigkmeans_kmn0024_grp02_var08_cluster.bin" , descriptorfile = "grupo02_bigkmeans_kmn0024_grp02_var08_cluster.desc" , type="double" )
  colnames( grupo02_bigkmeans_kmn0024_grp02_var08_cluster ) <- c( "Eje__x_scaled","Eje__y_scaled","Asp__x_scaled","Asp__y_scaled","DEM_scaled","NDMI_scaled","Slope_scaled","TWI_scaled","Asp__x","Asp__y","DEM","NDMI","Slope","TWI","Cluster" )
  grupo02_bigkmeans_kmn0024_grp02_var08_cluster[, 1] <- grupo02st[,1]
  grupo02_bigkmeans_kmn0024_grp02_var08_cluster[, 2] <- grupo02st[,2]
  grupo02_bigkmeans_kmn0024_grp02_var08_cluster[, 3] <- grupo02st[,3]
  grupo02_bigkmeans_kmn0024_grp02_var08_cluster[, 4] <- grupo02st[,4]
  grupo02_bigkmeans_kmn0024_grp02_var08_cluster[, 5] <- grupo02st[,5]
  grupo02_bigkmeans_kmn0024_grp02_var08_cluster[, 6] <- grupo02st[,6]
  grupo02_bigkmeans_kmn0024_grp02_var08_cluster[, 7] <- grupo02st[,7]
  grupo02_bigkmeans_kmn0024_grp02_var08_cluster[, 8] <- grupo02st[,8]
  grupo02_bigkmeans_kmn0024_grp02_var08_cluster[, 9] <- grupo02bm[,1]
  grupo02_bigkmeans_kmn0024_grp02_var08_cluster[,10] <- grupo02bm[,2]
  grupo02_bigkmeans_kmn0024_grp02_var08_cluster[,11] <- grupo02bm[,3]
  grupo02_bigkmeans_kmn0024_grp02_var08_cluster[,12] <- grupo02bm[,4]
  grupo02_bigkmeans_kmn0024_grp02_var08_cluster[,13] <- grupo02bm[,5]
  grupo02_bigkmeans_kmn0024_grp02_var08_cluster[,14] <- grupo02bm[,6]
  grupo02_bigkmeans_kmn0024_grp02_var08_cluster[,15] <- bigkmeans_kmn0024_grp02_var08_cluster[,1]
  setwd( srcdir )
