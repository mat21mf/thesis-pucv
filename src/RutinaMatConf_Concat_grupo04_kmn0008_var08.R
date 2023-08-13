  load( "kmn_var08_objetos.RData" )
  source( "DefinirVariables.R" )
  setwd( bakdir )
  library( bigmemory )
  options(bigmemory.allow.dimnames=TRUE)
  grupo04st <- bigmemory::attach.big.matrix( dget( "grupo04st.desc" ) )
  grupo04bm <- bigmemory::attach.big.matrix( dget( "grupo04bm.desc" ) )
  bigkmeans_kmn0008_grp04_var08_cluster <- bigmemory::attach.big.matrix( dget( "bigkmeans_kmn0008_grp04_var08_cluster.desc" ) )
  if( file.exists( "grupo04_bigkmeans_kmn0008_grp04_var08_cluster.desc" ) ) file.remove( c( "grupo04_bigkmeans_kmn0008_grp04_var08_cluster.desc" , "grupo04_bigkmeans_kmn0008_grp04_var08_cluster.bin" ) )
  grupo04_bigkmeans_kmn0008_grp04_var08_cluster <- bigmemory::big.matrix( ncol = 15 , nrow = bigmemory::nrow( grupo04bm ) , init=0 , backingfile = "grupo04_bigkmeans_kmn0008_grp04_var08_cluster.bin" , descriptorfile = "grupo04_bigkmeans_kmn0008_grp04_var08_cluster.desc" , type="double" )
  colnames( grupo04_bigkmeans_kmn0008_grp04_var08_cluster ) <- c( "Eje__x_scaled","Eje__y_scaled","Asp__x_scaled","Asp__y_scaled","DEM_scaled","NDMI_scaled","Slope_scaled","TWI_scaled","Asp__x","Asp__y","DEM","NDMI","Slope","TWI","Cluster" )
  grupo04_bigkmeans_kmn0008_grp04_var08_cluster[, 1] <- grupo04st[,1]
  grupo04_bigkmeans_kmn0008_grp04_var08_cluster[, 2] <- grupo04st[,2]
  grupo04_bigkmeans_kmn0008_grp04_var08_cluster[, 3] <- grupo04st[,3]
  grupo04_bigkmeans_kmn0008_grp04_var08_cluster[, 4] <- grupo04st[,4]
  grupo04_bigkmeans_kmn0008_grp04_var08_cluster[, 5] <- grupo04st[,5]
  grupo04_bigkmeans_kmn0008_grp04_var08_cluster[, 6] <- grupo04st[,6]
  grupo04_bigkmeans_kmn0008_grp04_var08_cluster[, 7] <- grupo04st[,7]
  grupo04_bigkmeans_kmn0008_grp04_var08_cluster[, 8] <- grupo04st[,8]
  grupo04_bigkmeans_kmn0008_grp04_var08_cluster[, 9] <- grupo04bm[,1]
  grupo04_bigkmeans_kmn0008_grp04_var08_cluster[,10] <- grupo04bm[,2]
  grupo04_bigkmeans_kmn0008_grp04_var08_cluster[,11] <- grupo04bm[,3]
  grupo04_bigkmeans_kmn0008_grp04_var08_cluster[,12] <- grupo04bm[,4]
  grupo04_bigkmeans_kmn0008_grp04_var08_cluster[,13] <- grupo04bm[,5]
  grupo04_bigkmeans_kmn0008_grp04_var08_cluster[,14] <- grupo04bm[,6]
  grupo04_bigkmeans_kmn0008_grp04_var08_cluster[,15] <- bigkmeans_kmn0008_grp04_var08_cluster[,1]
  setwd( srcdir )
