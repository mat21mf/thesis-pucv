  load( "kmn_var08_objetos.RData" )
  source( "DefinirVariables.R" )
  setwd( bakdir )
  library( bigmemory )
  options(bigmemory.allow.dimnames=TRUE)
  grupo03st <- bigmemory::attach.big.matrix( dget( "grupo03st.desc" ) )
  grupo03bm <- bigmemory::attach.big.matrix( dget( "grupo03bm.desc" ) )
  bigkmeans_kmn0018_grp03_var08_cluster <- bigmemory::attach.big.matrix( dget( "bigkmeans_kmn0018_grp03_var08_cluster.desc" ) )
  if( file.exists( "grupo03_bigkmeans_kmn0018_grp03_var08_cluster.desc" ) ) file.remove( c( "grupo03_bigkmeans_kmn0018_grp03_var08_cluster.desc" , "grupo03_bigkmeans_kmn0018_grp03_var08_cluster.bin" ) )
  grupo03_bigkmeans_kmn0018_grp03_var08_cluster <- bigmemory::big.matrix( ncol = 15 , nrow = bigmemory::nrow( grupo03bm ) , init=0 , backingfile = "grupo03_bigkmeans_kmn0018_grp03_var08_cluster.bin" , descriptorfile = "grupo03_bigkmeans_kmn0018_grp03_var08_cluster.desc" , type="double" )
  colnames( grupo03_bigkmeans_kmn0018_grp03_var08_cluster ) <- c( "Eje__x_scaled","Eje__y_scaled","Asp__x_scaled","Asp__y_scaled","DEM_scaled","NDMI_scaled","Slope_scaled","TWI_scaled","Asp__x","Asp__y","DEM","NDMI","Slope","TWI","Cluster" )
  grupo03_bigkmeans_kmn0018_grp03_var08_cluster[, 1] <- grupo03st[,1]
  grupo03_bigkmeans_kmn0018_grp03_var08_cluster[, 2] <- grupo03st[,2]
  grupo03_bigkmeans_kmn0018_grp03_var08_cluster[, 3] <- grupo03st[,3]
  grupo03_bigkmeans_kmn0018_grp03_var08_cluster[, 4] <- grupo03st[,4]
  grupo03_bigkmeans_kmn0018_grp03_var08_cluster[, 5] <- grupo03st[,5]
  grupo03_bigkmeans_kmn0018_grp03_var08_cluster[, 6] <- grupo03st[,6]
  grupo03_bigkmeans_kmn0018_grp03_var08_cluster[, 7] <- grupo03st[,7]
  grupo03_bigkmeans_kmn0018_grp03_var08_cluster[, 8] <- grupo03st[,8]
  grupo03_bigkmeans_kmn0018_grp03_var08_cluster[, 9] <- grupo03bm[,1]
  grupo03_bigkmeans_kmn0018_grp03_var08_cluster[,10] <- grupo03bm[,2]
  grupo03_bigkmeans_kmn0018_grp03_var08_cluster[,11] <- grupo03bm[,3]
  grupo03_bigkmeans_kmn0018_grp03_var08_cluster[,12] <- grupo03bm[,4]
  grupo03_bigkmeans_kmn0018_grp03_var08_cluster[,13] <- grupo03bm[,5]
  grupo03_bigkmeans_kmn0018_grp03_var08_cluster[,14] <- grupo03bm[,6]
  grupo03_bigkmeans_kmn0018_grp03_var08_cluster[,15] <- bigkmeans_kmn0018_grp03_var08_cluster[,1]
  setwd( srcdir )
