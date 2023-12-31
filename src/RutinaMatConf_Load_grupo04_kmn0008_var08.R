  source( "DefinirVariables.R" )
  setwd( bakdir )
  library( bigmemory )
  options(bigmemory.allow.dimnames=TRUE)
  grupo04_bigkmeans_kmn0008_grp04_var08_cluster <- bigmemory::attach.big.matrix( dget( "grupo04_bigkmeans_kmn0008_grp04_var08_cluster.desc" ) )
  colnames( grupo04_bigkmeans_kmn0008_grp04_var08_cluster ) <- c( "Eje__x_scaled","Eje__y_scaled","Asp__x_scaled","Asp__y_scaled","DEM_scaled","NDMI_scaled","Slope_scaled","TWI_scaled","Asp__x","Asp__y","DEM","NDMI","Slope","TWI","Cluster" )
  setwd( srcdir )
