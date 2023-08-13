### rutas
source( "DefinirVariables.R" )

### librerias
library( bigmemory )
library( bigtabulate )
options(bigmemory.typecast.warning=FALSE)
options(bigmemory.allow.dimnames=TRUE)

setwd( bakdir )

bigkmeans_kmn0006_grp01_var08_cluster <- bigmemory::attach.big.matrix( dget( "bigkmeans_kmn0006_grp01_var08_cluster.desc" ) )
bigkmeans_kmn0010_grp02_var08_cluster <- bigmemory::attach.big.matrix( dget( "bigkmeans_kmn0010_grp02_var08_cluster.desc" ) )
bigkmeans_kmn0007_grp03_var08_cluster <- bigmemory::attach.big.matrix( dget( "bigkmeans_kmn0007_grp03_var08_cluster.desc" ) )
bigkmeans_kmn0008_grp04_var08_cluster <- bigmemory::attach.big.matrix( dget( "bigkmeans_kmn0008_grp04_var08_cluster.desc" ) )
bigkmeans_kmn0008_grp05_var08_cluster <- bigmemory::attach.big.matrix( dget( "bigkmeans_kmn0008_grp05_var08_cluster.desc" ) )
bigkmeans_kmn0009_grp06_var08_cluster <- bigmemory::attach.big.matrix( dget( "bigkmeans_kmn0009_grp06_var08_cluster.desc" ) )

colnames( bigkmeans_kmn0006_grp01_var08_cluster ) <- "Cluster"
colnames( bigkmeans_kmn0010_grp02_var08_cluster ) <- "Cluster"
colnames( bigkmeans_kmn0007_grp03_var08_cluster ) <- "Cluster"
colnames( bigkmeans_kmn0008_grp04_var08_cluster ) <- "Cluster"
colnames( bigkmeans_kmn0008_grp05_var08_cluster ) <- "Cluster"
colnames( bigkmeans_kmn0009_grp06_var08_cluster ) <- "Cluster"

setwd( srcdir )

bigkmeans_kmn0006_grp01_var08_cluster.nrows  <- bigtabulate::bigtable( bigkmeans_kmn0006_grp01_var08_cluster , "Cluster" )
bigkmeans_kmn0010_grp02_var08_cluster.nrows  <- bigtabulate::bigtable( bigkmeans_kmn0010_grp02_var08_cluster , "Cluster" )
bigkmeans_kmn0007_grp03_var08_cluster.nrows  <- bigtabulate::bigtable( bigkmeans_kmn0007_grp03_var08_cluster , "Cluster" )
bigkmeans_kmn0008_grp04_var08_cluster.nrows  <- bigtabulate::bigtable( bigkmeans_kmn0008_grp04_var08_cluster , "Cluster" )
bigkmeans_kmn0008_grp05_var08_cluster.nrows  <- bigtabulate::bigtable( bigkmeans_kmn0008_grp05_var08_cluster , "Cluster" )
bigkmeans_kmn0009_grp06_var08_cluster.nrows  <- bigtabulate::bigtable( bigkmeans_kmn0009_grp06_var08_cluster , "Cluster" )

save( list = ls( pattern = ".nrows" ) , file = "nrows_var08.RData" )
