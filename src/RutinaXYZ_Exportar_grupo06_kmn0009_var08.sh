R --slave -e "library( bigmemory ) ; if( !file.exists( \"../bigcsv/\" ) ) system( \"mkdir ../bigcsv/\" ) ; source( \"DefinirVariables.R\" ) ; setwd( bakdir );bigkmeans_kmn0009_grp06_var08_cluster <- bigmemory::attach.big.matrix( dget( \"bigkmeans_kmn0009_grp06_var08_cluster.desc\" ) );setwd( srcdir );write.table( bigkmeans_kmn0009_grp06_var08_cluster[,] , file=\"../bigcsv/bigkmeans_kmn0009_grp06_var08_cluster.csv\" , sep=\",\" , col.names=F , row.names=F , quote=F ) ; gc()"
