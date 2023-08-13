  load( "grupo05_caracterizar_cluster_kmn0018_var08.RData" )
  source( "FuncionGraficarMetricas.R" )

  FuncionGraficarPromedioCluster( "./png/grupo05_caracterizar_cluster_kmn0018_var08_Asp__x.png" , grupo05_bigkmeans_kmn0018_grp05_var08_cluster_mean , "Asp__x" , grupo05_bigkmeans_kmn0018_grp05_var08_cluster_ci , "Asp__x" , "Valor medio e intervalo de confianza\npor cluster para variable Asp__x" , straxt=19 )
  FuncionGraficarPromedioCluster( "./png/grupo05_caracterizar_cluster_kmn0018_var08_Asp__y.png" , grupo05_bigkmeans_kmn0018_grp05_var08_cluster_mean , "Asp__y" , grupo05_bigkmeans_kmn0018_grp05_var08_cluster_ci , "Asp__y" , "Valor medio e intervalo de confianza\npor cluster para variable Asp__y" , straxt=19 )
  FuncionGraficarPromedioCluster( "./png/grupo05_caracterizar_cluster_kmn0018_var08_DEM.png"    , grupo05_bigkmeans_kmn0018_grp05_var08_cluster_mean , "DEM"    , grupo05_bigkmeans_kmn0018_grp05_var08_cluster_ci , "DEM"    , "Valor medio e intervalo de confianza\npor cluster para variable DEM"    , straxt=19 )
  FuncionGraficarPromedioCluster( "./png/grupo05_caracterizar_cluster_kmn0018_var08_NDMI.png"   , grupo05_bigkmeans_kmn0018_grp05_var08_cluster_mean , "NDMI"   , grupo05_bigkmeans_kmn0018_grp05_var08_cluster_ci , "NDMI"   , "Valor medio e intervalo de confianza\npor cluster para variable NDMI"   , straxt=19 )
  FuncionGraficarPromedioCluster( "./png/grupo05_caracterizar_cluster_kmn0018_var08_Slope.png"  , grupo05_bigkmeans_kmn0018_grp05_var08_cluster_mean , "Slope"  , grupo05_bigkmeans_kmn0018_grp05_var08_cluster_ci , "Slope"  , "Valor medio e intervalo de confianza\npor cluster para variable Slope"  , straxt=19 )
  FuncionGraficarPromedioCluster( "./png/grupo05_caracterizar_cluster_kmn0018_var08_TWI.png"    , grupo05_bigkmeans_kmn0018_grp05_var08_cluster_mean , "TWI"    , grupo05_bigkmeans_kmn0018_grp05_var08_cluster_ci , "TWI"    , "Valor medio e intervalo de confianza\npor cluster para variable TWI"    , straxt=19 )

  system( "bash RutinaMatConf_PrepararImagen_grupo05_kmn0018_var08.sh" )

  source( "FuncionExportarExcel.R" )

  write.table( grupo05_bigkmeans_kmn0018_grp05_var08_cluster_mean[,c(3:8,15)] , file="./csv/grupo05_caracterizar_cluster_kmn0018_var08_mean.csv" , sep="@" , row.names=F , col.names=T , quote=F )
  write.table( grupo05_bigkmeans_kmn0018_grp05_var08_cluster_sd  [,c(3:8,15)] , file="./csv/grupo05_caracterizar_cluster_kmn0018_var08_sd__.csv" , sep="@" , row.names=F , col.names=T , quote=F )
  write.table( grupo05_bigkmeans_kmn0018_grp05_var08_cluster_se  [,c(3:8,15)] , file="./csv/grupo05_caracterizar_cluster_kmn0018_var08_se__.csv" , sep="@" , row.names=F , col.names=T , quote=F )
  write.table( grupo05_bigkmeans_kmn0018_grp05_var08_cluster_ci  [,c(3:8,15)] , file="./csv/grupo05_caracterizar_cluster_kmn0018_var08_ci__.csv" , sep="@" , row.names=F , col.names=T , quote=F )
  write.table( grupo05_bigkmeans_kmn0018_grp05_var08_cluster_max [,c(3:8,15)] , file="./csv/grupo05_caracterizar_cluster_kmn0018_var08_max_.csv" , sep="@" , row.names=F , col.names=T , quote=F )
  write.table( grupo05_bigkmeans_kmn0018_grp05_var08_cluster_min [,c(3:8,15)] , file="./csv/grupo05_caracterizar_cluster_kmn0018_var08_min_.csv" , sep="@" , row.names=F , col.names=T , quote=F )

  ExportarDataframeVariacionPromedio( grupo05_bigkmeans_kmn0018_grp05_var08_cluster_mean , "./xlsx/grupo05_caracterizar_cluster_kmn0018_var08.xlsx" , "./csv/grupo05_caracterizar_cluster_kmn0018_var08_mean.csv" , "media"     , "./png/grupo05_caracterizar_cluster_kmn0018_var08.png" )
  ExportarDataframeVariacionPromedio( grupo05_bigkmeans_kmn0018_grp05_var08_cluster_sd   , "./xlsx/grupo05_caracterizar_cluster_kmn0018_var08.xlsx" , "./csv/grupo05_caracterizar_cluster_kmn0018_var08_sd__.csv" , "desvest"   , ""                                                 )
  ExportarDataframeVariacionPromedio( grupo05_bigkmeans_kmn0018_grp05_var08_cluster_se   , "./xlsx/grupo05_caracterizar_cluster_kmn0018_var08.xlsx" , "./csv/grupo05_caracterizar_cluster_kmn0018_var08_se__.csv" , "errorest"  , ""                                                 )
  ExportarDataframeVariacionPromedio( grupo05_bigkmeans_kmn0018_grp05_var08_cluster_ci   , "./xlsx/grupo05_caracterizar_cluster_kmn0018_var08.xlsx" , "./csv/grupo05_caracterizar_cluster_kmn0018_var08_ci__.csv" , "interconf" , ""                                                 )
  ExportarDataframeVariacionPromedio( grupo05_bigkmeans_kmn0018_grp05_var08_cluster_max  , "./xlsx/grupo05_caracterizar_cluster_kmn0018_var08.xlsx" , "./csv/grupo05_caracterizar_cluster_kmn0018_var08_max_.csv" , "max"       , ""                                                 )
  ExportarDataframeVariacionPromedio( grupo05_bigkmeans_kmn0018_grp05_var08_cluster_min  , "./xlsx/grupo05_caracterizar_cluster_kmn0018_var08.xlsx" , "./csv/grupo05_caracterizar_cluster_kmn0018_var08_min_.csv" , "min"       , ""                                                 )
