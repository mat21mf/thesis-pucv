  load( "kmn_var08_objetos.RData" )
  source( "DefinirVariables.R" )
  setwd( bakdir )
  library( bigmemory )
  options(bigmemory.allow.dimnames=TRUE)
  grupo06st <- bigmemory::attach.big.matrix( dget( "grupo06st.desc" ) )
  grupo06bm <- bigmemory::attach.big.matrix( dget( "grupo06bm.desc" ) )
  bigkmeans_kmn0024_grp06_var08_cluster <- bigmemory::attach.big.matrix( dget( "bigkmeans_kmn0024_grp06_var08_cluster.desc" ) )
  if( file.exists( "grupo06_bigkmeans_kmn0024_grp06_var08_cluster.desc" ) ) file.remove( c( "grupo06_bigkmeans_kmn0024_grp06_var08_cluster.desc" , "grupo06_bigkmeans_kmn0024_grp06_var08_cluster.bin" ) )
  grupo06_bigkmeans_kmn0024_grp06_var08_cluster <- bigmemory::big.matrix( ncol = 15 , nrow = bigmemory::nrow( grupo06bm ) , init=0 , backingfile = "grupo06_bigkmeans_kmn0024_grp06_var08_cluster.bin" , descriptorfile = "grupo06_bigkmeans_kmn0024_grp06_var08_cluster.desc" , type="double" )
  colnames( grupo06_bigkmeans_kmn0024_grp06_var08_cluster ) <- c( "Eje__x_scaled","Eje__y_scaled","Asp__x_scaled","Asp__y_scaled","DEM_scaled","NDMI_scaled","Slope_scaled","TWI_scaled","Asp__x","Asp__y","DEM","NDMI","Slope","TWI","Cluster" )
  grupo06_bigkmeans_kmn0024_grp06_var08_cluster[, 1] <- grupo06st[,1]
  grupo06_bigkmeans_kmn0024_grp06_var08_cluster[, 2] <- grupo06st[,2]
  grupo06_bigkmeans_kmn0024_grp06_var08_cluster[, 3] <- grupo06st[,3]
  grupo06_bigkmeans_kmn0024_grp06_var08_cluster[, 4] <- grupo06st[,4]
  grupo06_bigkmeans_kmn0024_grp06_var08_cluster[, 5] <- grupo06st[,5]
  grupo06_bigkmeans_kmn0024_grp06_var08_cluster[, 6] <- grupo06st[,6]
  grupo06_bigkmeans_kmn0024_grp06_var08_cluster[, 7] <- grupo06st[,7]
  grupo06_bigkmeans_kmn0024_grp06_var08_cluster[, 8] <- grupo06st[,8]
  grupo06_bigkmeans_kmn0024_grp06_var08_cluster[, 9] <- grupo06bm[,1]
  grupo06_bigkmeans_kmn0024_grp06_var08_cluster[,10] <- grupo06bm[,2]
  grupo06_bigkmeans_kmn0024_grp06_var08_cluster[,11] <- grupo06bm[,3]
  grupo06_bigkmeans_kmn0024_grp06_var08_cluster[,12] <- grupo06bm[,4]
  grupo06_bigkmeans_kmn0024_grp06_var08_cluster[,13] <- grupo06bm[,5]
  grupo06_bigkmeans_kmn0024_grp06_var08_cluster[,14] <- grupo06bm[,6]
  grupo06_bigkmeans_kmn0024_grp06_var08_cluster[,15] <- bigkmeans_kmn0024_grp06_var08_cluster[,1]
  setwd( srcdir )
