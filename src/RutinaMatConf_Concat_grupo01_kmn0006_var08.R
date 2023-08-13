  load( "kmn_var08_objetos.RData" )
  source( "DefinirVariables.R" )
  setwd( bakdir )
  library( bigmemory )
  options(bigmemory.allow.dimnames=TRUE)
  grupo01st <- bigmemory::attach.big.matrix( dget( "grupo01st.desc" ) )
  grupo01bm <- bigmemory::attach.big.matrix( dget( "grupo01bm.desc" ) )
  bigkmeans_kmn0006_grp01_var08_cluster <- bigmemory::attach.big.matrix( dget( "bigkmeans_kmn0006_grp01_var08_cluster.desc" ) )
  if( file.exists( "grupo01_bigkmeans_kmn0006_grp01_var08_cluster.desc" ) ) file.remove( c( "grupo01_bigkmeans_kmn0006_grp01_var08_cluster.desc" , "grupo01_bigkmeans_kmn0006_grp01_var08_cluster.bin" ) )
  grupo01_bigkmeans_kmn0006_grp01_var08_cluster <- bigmemory::big.matrix( ncol = 15 , nrow = bigmemory::nrow( grupo01bm ) , init=0 , backingfile = "grupo01_bigkmeans_kmn0006_grp01_var08_cluster.bin" , descriptorfile = "grupo01_bigkmeans_kmn0006_grp01_var08_cluster.desc" , type="double" )
  colnames( grupo01_bigkmeans_kmn0006_grp01_var08_cluster ) <- c( "Eje__x_scaled","Eje__y_scaled","Asp__x_scaled","Asp__y_scaled","DEM_scaled","NDMI_scaled","Slope_scaled","TWI_scaled","Asp__x","Asp__y","DEM","NDMI","Slope","TWI","Cluster" )
  grupo01_bigkmeans_kmn0006_grp01_var08_cluster[, 1] <- grupo01st[,1]
  grupo01_bigkmeans_kmn0006_grp01_var08_cluster[, 2] <- grupo01st[,2]
  grupo01_bigkmeans_kmn0006_grp01_var08_cluster[, 3] <- grupo01st[,3]
  grupo01_bigkmeans_kmn0006_grp01_var08_cluster[, 4] <- grupo01st[,4]
  grupo01_bigkmeans_kmn0006_grp01_var08_cluster[, 5] <- grupo01st[,5]
  grupo01_bigkmeans_kmn0006_grp01_var08_cluster[, 6] <- grupo01st[,6]
  grupo01_bigkmeans_kmn0006_grp01_var08_cluster[, 7] <- grupo01st[,7]
  grupo01_bigkmeans_kmn0006_grp01_var08_cluster[, 8] <- grupo01st[,8]
  grupo01_bigkmeans_kmn0006_grp01_var08_cluster[, 9] <- grupo01bm[,1]
  grupo01_bigkmeans_kmn0006_grp01_var08_cluster[,10] <- grupo01bm[,2]
  grupo01_bigkmeans_kmn0006_grp01_var08_cluster[,11] <- grupo01bm[,3]
  grupo01_bigkmeans_kmn0006_grp01_var08_cluster[,12] <- grupo01bm[,4]
  grupo01_bigkmeans_kmn0006_grp01_var08_cluster[,13] <- grupo01bm[,5]
  grupo01_bigkmeans_kmn0006_grp01_var08_cluster[,14] <- grupo01bm[,6]
  grupo01_bigkmeans_kmn0006_grp01_var08_cluster[,15] <- bigkmeans_kmn0006_grp01_var08_cluster[,1]
  setwd( srcdir )
