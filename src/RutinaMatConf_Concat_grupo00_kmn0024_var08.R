  load( "kmn_var08_objetos.RData" )
  source( "DefinirVariables.R" )
  setwd( bakdir )
  library( bigmemory )
  options(bigmemory.allow.dimnames=TRUE)
  grupo00st <- bigmemory::attach.big.matrix( dget( "grupo00st.desc" ) )
  grupo00bm <- bigmemory::attach.big.matrix( dget( "grupo00bm.desc" ) )
  bigkmeans_kmn0024_grp00_var08_cluster <- bigmemory::attach.big.matrix( dget( "bigkmeans_kmn0024_grp00_var08_cluster.desc" ) )
  if( file.exists( "grupo00_bigkmeans_kmn0024_grp00_var08_cluster.desc" ) ) file.remove( c( "grupo00_bigkmeans_kmn0024_grp00_var08_cluster.desc" , "grupo00_bigkmeans_kmn0024_grp00_var08_cluster.bin" ) )
  grupo00_bigkmeans_kmn0024_grp00_var08_cluster <- bigmemory::big.matrix( ncol = 15 , nrow = bigmemory::nrow( grupo00bm ) , init=0 , backingfile = "grupo00_bigkmeans_kmn0024_grp00_var08_cluster.bin" , descriptorfile = "grupo00_bigkmeans_kmn0024_grp00_var08_cluster.desc" , type="double" )
  colnames( grupo00_bigkmeans_kmn0024_grp00_var08_cluster ) <- c( "Eje__x_scaled","Eje__y_scaled","Asp__x_scaled","Asp__y_scaled","DEM_scaled","NDMI_scaled","Slope_scaled","TWI_scaled","Asp__x","Asp__y","DEM","NDMI","Slope","TWI","Cluster" )
  grupo00_bigkmeans_kmn0024_grp00_var08_cluster[, 1] <- grupo00st[,1]
  grupo00_bigkmeans_kmn0024_grp00_var08_cluster[, 2] <- grupo00st[,2]
  grupo00_bigkmeans_kmn0024_grp00_var08_cluster[, 3] <- grupo00st[,3]
  grupo00_bigkmeans_kmn0024_grp00_var08_cluster[, 4] <- grupo00st[,4]
  grupo00_bigkmeans_kmn0024_grp00_var08_cluster[, 5] <- grupo00st[,5]
  grupo00_bigkmeans_kmn0024_grp00_var08_cluster[, 6] <- grupo00st[,6]
  grupo00_bigkmeans_kmn0024_grp00_var08_cluster[, 7] <- grupo00st[,7]
  grupo00_bigkmeans_kmn0024_grp00_var08_cluster[, 8] <- grupo00st[,8]
  grupo00_bigkmeans_kmn0024_grp00_var08_cluster[, 9] <- grupo00bm[,1]
  grupo00_bigkmeans_kmn0024_grp00_var08_cluster[,10] <- grupo00bm[,2]
  grupo00_bigkmeans_kmn0024_grp00_var08_cluster[,11] <- grupo00bm[,3]
  grupo00_bigkmeans_kmn0024_grp00_var08_cluster[,12] <- grupo00bm[,4]
  grupo00_bigkmeans_kmn0024_grp00_var08_cluster[,13] <- grupo00bm[,5]
  grupo00_bigkmeans_kmn0024_grp00_var08_cluster[,14] <- grupo00bm[,6]
  grupo00_bigkmeans_kmn0024_grp00_var08_cluster[,15] <- bigkmeans_kmn0024_grp00_var08_cluster[,1]
  setwd( srcdir )
