  ### librerias
  library(bigmemory)
  library(biganalytics)

  ### crear big.matrix
  options(bigmemory.allow.dimnames=TRUE)
  setwd("~/Documents/TrabajosExtra/petra_biotopos/bigmatrices")
  if( file.exists( "bigkmn_grp01_var08_cluster.desc" ) ) file.remove( c( "bigkmn_grp01_var08_cluster.desc" , "bigkmn_grp01_var08_cluster.bin" ) )
  bigkmn_grp01_var08_cluster <- bigmemory::big.matrix( nrow=length( grupo01st.kmn0001$cluster ) , ncol=20 , init=0 , type="short" , shared=T , backingfile="bigkmn_grp01_var08_cluster.bin" , descriptorfile="bigkmn_grp01_var08_cluster.desc" )
  colnames( bigkmn_grp01_var08_cluster ) <- c( "km01cl" ,"km02cl" ,"km03cl" ,"km04cl" ,"km05cl" ,"km06cl" ,"km07cl" ,"km08cl" ,"km09cl" ,"km10cl" ,"km11cl" ,"km12cl" ,"km13cl" ,"km14cl" ,"km15cl" ,"km16cl" ,"km17cl" ,"km18cl" ,"km19cl" ,"km20cl" )
  setwd("~/Documents/TrabajosExtra/petra_biotopos/src")
