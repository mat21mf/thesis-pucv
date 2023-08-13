  load( "grupo06_caracterizar_cluster_kmn0010_var08.RData" )
  source( "FuncionGraficarMetricas.R" )

  FuncionGraficarPromedioCluster( "./png/grupo06_caracterizar_cluster_kmn0010_var08_Asp__x.png" , grupo06_bigkmeans_kmn0010_grp06_var08_cluster_mean , "Asp__x" , grupo06_bigkmeans_kmn0010_grp06_var08_cluster_ci , "Asp__x" , "Valor medio e intervalo de confianza\npor cluster para variable Asp__x" , straxt=11 )
  FuncionGraficarPromedioCluster( "./png/grupo06_caracterizar_cluster_kmn0010_var08_Asp__y.png" , grupo06_bigkmeans_kmn0010_grp06_var08_cluster_mean , "Asp__y" , grupo06_bigkmeans_kmn0010_grp06_var08_cluster_ci , "Asp__y" , "Valor medio e intervalo de confianza\npor cluster para variable Asp__y" , straxt=11 )
  FuncionGraficarPromedioCluster( "./png/grupo06_caracterizar_cluster_kmn0010_var08_DEM.png"    , grupo06_bigkmeans_kmn0010_grp06_var08_cluster_mean , "DEM"    , grupo06_bigkmeans_kmn0010_grp06_var08_cluster_ci , "DEM"    , "Valor medio e intervalo de confianza\npor cluster para variable DEM"    , straxt=11 )
  FuncionGraficarPromedioCluster( "./png/grupo06_caracterizar_cluster_kmn0010_var08_NDMI.png"   , grupo06_bigkmeans_kmn0010_grp06_var08_cluster_mean , "NDMI"   , grupo06_bigkmeans_kmn0010_grp06_var08_cluster_ci , "NDMI"   , "Valor medio e intervalo de confianza\npor cluster para variable NDMI"   , straxt=11 )
  FuncionGraficarPromedioCluster( "./png/grupo06_caracterizar_cluster_kmn0010_var08_Slope.png"  , grupo06_bigkmeans_kmn0010_grp06_var08_cluster_mean , "Slope"  , grupo06_bigkmeans_kmn0010_grp06_var08_cluster_ci , "Slope"  , "Valor medio e intervalo de confianza\npor cluster para variable Slope"  , straxt=11 )
  FuncionGraficarPromedioCluster( "./png/grupo06_caracterizar_cluster_kmn0010_var08_TWI.png"    , grupo06_bigkmeans_kmn0010_grp06_var08_cluster_mean , "TWI"    , grupo06_bigkmeans_kmn0010_grp06_var08_cluster_ci , "TWI"    , "Valor medio e intervalo de confianza\npor cluster para variable TWI"    , straxt=11 )

  system( "bash RutinaMatConf_PrepararImagen_grupo06_kmn0010_var08.sh" )

  source( "FuncionExportarExcel.R" )

  write.table( grupo06_bigkmeans_kmn0010_grp06_var08_cluster_mean[,c(3:8,15)] , file="./csv/grupo06_caracterizar_cluster_kmn0010_var08_mean.csv" , sep="@" , row.names=F , col.names=T , quote=F )
  write.table( grupo06_bigkmeans_kmn0010_grp06_var08_cluster_sd  [,c(3:8,15)] , file="./csv/grupo06_caracterizar_cluster_kmn0010_var08_sd__.csv" , sep="@" , row.names=F , col.names=T , quote=F )
  write.table( grupo06_bigkmeans_kmn0010_grp06_var08_cluster_se  [,c(3:8,15)] , file="./csv/grupo06_caracterizar_cluster_kmn0010_var08_se__.csv" , sep="@" , row.names=F , col.names=T , quote=F )
  write.table( grupo06_bigkmeans_kmn0010_grp06_var08_cluster_ci  [,c(3:8,15)] , file="./csv/grupo06_caracterizar_cluster_kmn0010_var08_ci__.csv" , sep="@" , row.names=F , col.names=T , quote=F )
  write.table( grupo06_bigkmeans_kmn0010_grp06_var08_cluster_max [,c(3:8,15)] , file="./csv/grupo06_caracterizar_cluster_kmn0010_var08_max_.csv" , sep="@" , row.names=F , col.names=T , quote=F )
  write.table( grupo06_bigkmeans_kmn0010_grp06_var08_cluster_min [,c(3:8,15)] , file="./csv/grupo06_caracterizar_cluster_kmn0010_var08_min_.csv" , sep="@" , row.names=F , col.names=T , quote=F )

  ExportarDataframeVariacionPromedio( grupo06_bigkmeans_kmn0010_grp06_var08_cluster_mean , "./xlsx/grupo06_caracterizar_cluster_kmn0010_var08.xlsx" , "./csv/grupo06_caracterizar_cluster_kmn0010_var08_mean.csv" , "media"     , "./png/grupo06_caracterizar_cluster_kmn0010_var08.png" )
  ExportarDataframeVariacionPromedio( grupo06_bigkmeans_kmn0010_grp06_var08_cluster_sd   , "./xlsx/grupo06_caracterizar_cluster_kmn0010_var08.xlsx" , "./csv/grupo06_caracterizar_cluster_kmn0010_var08_sd__.csv" , "desvest"   , ""                                                 )
  ExportarDataframeVariacionPromedio( grupo06_bigkmeans_kmn0010_grp06_var08_cluster_se   , "./xlsx/grupo06_caracterizar_cluster_kmn0010_var08.xlsx" , "./csv/grupo06_caracterizar_cluster_kmn0010_var08_se__.csv" , "errorest"  , ""                                                 )
  ExportarDataframeVariacionPromedio( grupo06_bigkmeans_kmn0010_grp06_var08_cluster_ci   , "./xlsx/grupo06_caracterizar_cluster_kmn0010_var08.xlsx" , "./csv/grupo06_caracterizar_cluster_kmn0010_var08_ci__.csv" , "interconf" , ""                                                 )
  ExportarDataframeVariacionPromedio( grupo06_bigkmeans_kmn0010_grp06_var08_cluster_max  , "./xlsx/grupo06_caracterizar_cluster_kmn0010_var08.xlsx" , "./csv/grupo06_caracterizar_cluster_kmn0010_var08_max_.csv" , "max"       , ""                                                 )
  ExportarDataframeVariacionPromedio( grupo06_bigkmeans_kmn0010_grp06_var08_cluster_min  , "./xlsx/grupo06_caracterizar_cluster_kmn0010_var08.xlsx" , "./csv/grupo06_caracterizar_cluster_kmn0010_var08_min_.csv" , "min"       , ""                                                 )
