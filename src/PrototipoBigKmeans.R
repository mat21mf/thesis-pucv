  ### librerias
  library(bigmemory)
  library(biganalytics)

  ### biganalytics::bigkmeans
  set.seed(123456789)

# ### llamar procesos deseable en parallelo (pendiente, ejecutar en bash usando Rscript)
# source( "CrearBigMatrix_grp01var08.R" ) ; source( "EjecutarBigKmeans_grp01var08.R" ) ; source( "GrabarBigKmeans_clusters_grp01var08.R" ) ; source( "GrabarBigKmeans_objetosR_grp01var08.R" )
# source( "CrearBigMatrix_grp02var08.R" ) ; source( "EjecutarBigKmeans_grp02var08.R" ) ; source( "GrabarBigKmeans_clusters_grp02var08.R" ) ; source( "GrabarBigKmeans_objetosR_grp02var08.R" )
# source( "CrearBigMatrix_grp03var08.R" ) ; source( "EjecutarBigKmeans_grp03var08.R" ) ; source( "GrabarBigKmeans_clusters_grp03var08.R" ) ; source( "GrabarBigKmeans_objetosR_grp03var08.R" )
# source( "CrearBigMatrix_grp04var08.R" ) ; source( "EjecutarBigKmeans_grp04var08.R" ) ; source( "GrabarBigKmeans_clusters_grp04var08.R" ) ; source( "GrabarBigKmeans_objetosR_grp04var08.R" )
# source( "CrearBigMatrix_grp05var08.R" ) ; source( "EjecutarBigKmeans_grp05var08.R" ) ; source( "GrabarBigKmeans_clusters_grp05var08.R" ) ; source( "GrabarBigKmeans_objetosR_grp05var08.R" )
# source( "CrearBigMatrix_grp06var08.R" ) ; source( "EjecutarBigKmeans_grp06var08.R" ) ; source( "GrabarBigKmeans_clusters_grp06var08.R" ) ; source( "GrabarBigKmeans_objetosR_grp06var08.R" )
# source( "CrearBigMatrix_grp00var08.R" ) ; source( "EjecutarBigKmeans_grp00var08.R" ) ; source( "GrabarBigKmeans_clusters_grp00var08.R" ) ; source( "GrabarBigKmeans_objetosR_grp00var08.R" )

  ###
  ### graficas y estadigrafos puede hacerse en forma posterior al termino del proceso kmeans
  ###

  ### imprimir R^2
  curva.r20001 <- c(
    round( ( ( grupo01stXM.totss - sum( bigkmn0001_grp01_var08$withinss ) ) / grupo01stXM.totss ) * 100 , 1 )
  , round( ( ( grupo01stXM.totss - sum( bigkmn0002_grp01_var08$withinss ) ) / grupo01stXM.totss ) * 100 , 1 )
  , round( ( ( grupo01stXM.totss - sum( bigkmn0003_grp01_var08$withinss ) ) / grupo01stXM.totss ) * 100 , 1 )
  , round( ( ( grupo01stXM.totss - sum( bigkmn0004_grp01_var08$withinss ) ) / grupo01stXM.totss ) * 100 , 1 )
  , round( ( ( grupo01stXM.totss - sum( bigkmn0005_grp01_var08$withinss ) ) / grupo01stXM.totss ) * 100 , 1 )
  , round( ( ( grupo01stXM.totss - sum( bigkmn0006_grp01_var08$withinss ) ) / grupo01stXM.totss ) * 100 , 1 )
  , round( ( ( grupo01stXM.totss - sum( bigkmn0007_grp01_var08$withinss ) ) / grupo01stXM.totss ) * 100 , 1 )
  , round( ( ( grupo01stXM.totss - sum( bigkmn0008_grp01_var08$withinss ) ) / grupo01stXM.totss ) * 100 , 1 )
  , round( ( ( grupo01stXM.totss - sum( bigkmn0009_grp01_var08$withinss ) ) / grupo01stXM.totss ) * 100 , 1 )
  , round( ( ( grupo01stXM.totss - sum( bigkmn0010_grp01_var08$withinss ) ) / grupo01stXM.totss ) * 100 , 1 )
  , round( ( ( grupo01stXM.totss - sum( bigkmn0011_grp01_var08$withinss ) ) / grupo01stXM.totss ) * 100 , 1 )
  , round( ( ( grupo01stXM.totss - sum( bigkmn0012_grp01_var08$withinss ) ) / grupo01stXM.totss ) * 100 , 1 )
  , round( ( ( grupo01stXM.totss - sum( bigkmn0013_grp01_var08$withinss ) ) / grupo01stXM.totss ) * 100 , 1 )
  , round( ( ( grupo01stXM.totss - sum( bigkmn0014_grp01_var08$withinss ) ) / grupo01stXM.totss ) * 100 , 1 )
  , round( ( ( grupo01stXM.totss - sum( bigkmn0015_grp01_var08$withinss ) ) / grupo01stXM.totss ) * 100 , 1 )
  , round( ( ( grupo01stXM.totss - sum( bigkmn0016_grp01_var08$withinss ) ) / grupo01stXM.totss ) * 100 , 1 )
  , round( ( ( grupo01stXM.totss - sum( bigkmn0017_grp01_var08$withinss ) ) / grupo01stXM.totss ) * 100 , 1 )
  , round( ( ( grupo01stXM.totss - sum( bigkmn0018_grp01_var08$withinss ) ) / grupo01stXM.totss ) * 100 , 1 )
  , round( ( ( grupo01stXM.totss - sum( bigkmn0019_grp01_var08$withinss ) ) / grupo01stXM.totss ) * 100 , 1 )
  , round( ( ( grupo01stXM.totss - sum( bigkmn0020_grp01_var08$withinss ) ) / grupo01stXM.totss ) * 100 , 1 )
  )

  ### eje de agrupamientos
  eje.grp <- 2:21

  ### graficar curva R2
  plot( curva.r20001 ~ eje.grp , type="l" , lty=2 , ylab="Porcentaje R2" , xlab="Número de agrupamientos" , main="Curva R2-cluster para\ncoordenadas espaciales" )
  abline( v = 10 , col="red" )
  axis( 1 , seq( 2 , 21 , 1 ) )

# ###
# ### Ahora graficar elbow
# ###

# aggregate( latitud + longitud ~ cl0009 , coodfm.std , var )

# curva.el0001 <- c(
#   coodfm.kmn0001$tot.withinss
# , coodfm.kmn0002$tot.withinss
# , coodfm.kmn0003$tot.withinss
# , coodfm.kmn0004$tot.withinss
# , coodfm.kmn0005$tot.withinss
# , coodfm.kmn0006$tot.withinss
# , coodfm.kmn0007$tot.withinss
# , coodfm.kmn0008$tot.withinss
# , coodfm.kmn0009$tot.withinss
# , coodfm.kmn0010$tot.withinss
# , coodfm.kmn0011$tot.withinss
# , coodfm.kmn0012$tot.withinss
# , coodfm.kmn0013$tot.withinss
# , coodfm.kmn0014$tot.withinss
# , coodfm.kmn0015$tot.withinss
# , coodfm.kmn0016$tot.withinss
# , coodfm.kmn0017$tot.withinss
# , coodfm.kmn0018$tot.withinss
# , coodfm.kmn0019$tot.withinss
# , coodfm.kmn0020$tot.withinss
# )

# ### graficar curva elbow
# plot( curva.el0001 ~ eje.grp , type="l" , lty=2 , ylab="Porcentaje R2" , xlab="Número de agrupamientos" , main="Curva Elbow para\ncoordenadas espaciales" )
# abline( v = 10 , col="red" )
# axis( 1 , seq( 2 , 21 , 1 ) )

