  load( "kmn_var08_objetos.RData" )
  source( "DefinirVariables.R" )
  setwd( bakdir )
  library( bigmemory )
  options(bigmemory.allow.dimnames=TRUE)
  grupo05st <- bigmemory::attach.big.matrix( dget( "grupo05st.desc" ) )
  grupo05bm <- bigmemory::attach.big.matrix( dget( "grupo05bm.desc" ) )
  bigkmeans_kmn0024_grp05_var08_cluster <- bigmemory::attach.big.matrix( dget( "bigkmeans_kmn0024_grp05_var08_cluster.desc" ) )
  if( file.exists( "grupo05_bigkmeans_kmn0024_grp05_var08_cluster.desc" ) ) file.remove( c( "grupo05_bigkmeans_kmn0024_grp05_var08_cluster.desc" , "grupo05_bigkmeans_kmn0024_grp05_var08_cluster.bin" ) )
  grupo05_bigkmeans_kmn0024_grp05_var08_cluster <- bigmemory::big.matrix( ncol = 15 , nrow = bigmemory::nrow( grupo05bm ) , init=0 , backingfile = "grupo05_bigkmeans_kmn0024_grp05_var08_cluster.bin" , descriptorfile = "grupo05_bigkmeans_kmn0024_grp05_var08_cluster.desc" , type="double" )
  colnames( grupo05_bigkmeans_kmn0024_grp05_var08_cluster ) <- c( "Eje__x_scaled","Eje__y_scaled","Asp__x_scaled","Asp__y_scaled","DEM_scaled","NDMI_scaled","Slope_scaled","TWI_scaled","Asp__x","Asp__y","DEM","NDMI","Slope","TWI","Cluster" )
  grupo05_bigkmeans_kmn0024_grp05_var08_cluster[, 1] <- grupo05st[,1]
  grupo05_bigkmeans_kmn0024_grp05_var08_cluster[, 2] <- grupo05st[,2]
  grupo05_bigkmeans_kmn0024_grp05_var08_cluster[, 3] <- grupo05st[,3]
  grupo05_bigkmeans_kmn0024_grp05_var08_cluster[, 4] <- grupo05st[,4]
  grupo05_bigkmeans_kmn0024_grp05_var08_cluster[, 5] <- grupo05st[,5]
  grupo05_bigkmeans_kmn0024_grp05_var08_cluster[, 6] <- grupo05st[,6]
  grupo05_bigkmeans_kmn0024_grp05_var08_cluster[, 7] <- grupo05st[,7]
  grupo05_bigkmeans_kmn0024_grp05_var08_cluster[, 8] <- grupo05st[,8]
  grupo05_bigkmeans_kmn0024_grp05_var08_cluster[, 9] <- grupo05bm[,1]
  grupo05_bigkmeans_kmn0024_grp05_var08_cluster[,10] <- grupo05bm[,2]
  grupo05_bigkmeans_kmn0024_grp05_var08_cluster[,11] <- grupo05bm[,3]
  grupo05_bigkmeans_kmn0024_grp05_var08_cluster[,12] <- grupo05bm[,4]
  grupo05_bigkmeans_kmn0024_grp05_var08_cluster[,13] <- grupo05bm[,5]
  grupo05_bigkmeans_kmn0024_grp05_var08_cluster[,14] <- grupo05bm[,6]
  grupo05_bigkmeans_kmn0024_grp05_var08_cluster[,15] <- bigkmeans_kmn0024_grp05_var08_cluster[,1]
  setwd( srcdir )
