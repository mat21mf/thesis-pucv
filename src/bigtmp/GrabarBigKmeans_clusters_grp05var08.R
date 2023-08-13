  ### librerias
  library(bigmemory)
  library(biganalytics)

  ### cargar big.matrix, concatenar y grabar clusters
  ### pendiente:
  ### - verificar que el contenido se grabe efectivamente
  ###   o si hace falta usar "dput"
  ### - separar cada una de las 20 ejecuciones
  setwd("~/Documents/TrabajosExtra/petra_biotopos/bigmatrices")
  bigkmn_grp01_var08_cluster <- bigmemory::attach.big.matrix( dget( "bigkmn_grp01_var08_cluster.desc" ) )
  bigkmn_grp01_var08_cluster[,1]  <- km0001_grp01_var08$cluster
  bigkmn_grp01_var08_cluster[,2]  <- km0002_grp01_var08$cluster
  bigkmn_grp01_var08_cluster[,3]  <- km0003_grp01_var08$cluster
  bigkmn_grp01_var08_cluster[,4]  <- km0004_grp01_var08$cluster
  bigkmn_grp01_var08_cluster[,5]  <- km0005_grp01_var08$cluster
  bigkmn_grp01_var08_cluster[,6]  <- km0006_grp01_var08$cluster
  bigkmn_grp01_var08_cluster[,7]  <- km0007_grp01_var08$cluster
  bigkmn_grp01_var08_cluster[,8]  <- km0008_grp01_var08$cluster
  bigkmn_grp01_var08_cluster[,9]  <- km0009_grp01_var08$cluster
  bigkmn_grp01_var08_cluster[,10] <- km0010_grp01_var08$cluster
  bigkmn_grp01_var08_cluster[,11] <- km0011_grp01_var08$cluster
  bigkmn_grp01_var08_cluster[,12] <- km0012_grp01_var08$cluster
  bigkmn_grp01_var08_cluster[,13] <- km0013_grp01_var08$cluster
  bigkmn_grp01_var08_cluster[,14] <- km0014_grp01_var08$cluster
  bigkmn_grp01_var08_cluster[,15] <- km0015_grp01_var08$cluster
  bigkmn_grp01_var08_cluster[,16] <- km0016_grp01_var08$cluster
  bigkmn_grp01_var08_cluster[,17] <- km0017_grp01_var08$cluster
  bigkmn_grp01_var08_cluster[,18] <- km0018_grp01_var08$cluster
  bigkmn_grp01_var08_cluster[,19] <- km0019_grp01_var08$cluster
  bigkmn_grp01_var08_cluster[,20] <- km0020_grp01_var08$cluster
  setwd("~/Documents/TrabajosExtra/petra_biotopos/src")
