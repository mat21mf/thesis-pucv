  load( "grupo01_caracterizar_cluster_kmn0006_var08.RData" )
  source( "FuncionGraficarMetricas.R" )

  FuncionGraficarPromedioCluster( "./png/grupo01_caracterizar_cluster_kmn0006_var08_Asp__x.png" , grupo01_bigkmeans_kmn0006_grp01_var08_cluster_mean , "Asp__x" , grupo01_bigkmeans_kmn0006_grp01_var08_cluster_ci , "Asp__x" , "Valor medio e intervalo de confianza\npor cluster para variable Asp__x" , straxt=7 )
  FuncionGraficarPromedioCluster( "./png/grupo01_caracterizar_cluster_kmn0006_var08_Asp__y.png" , grupo01_bigkmeans_kmn0006_grp01_var08_cluster_mean , "Asp__y" , grupo01_bigkmeans_kmn0006_grp01_var08_cluster_ci , "Asp__y" , "Valor medio e intervalo de confianza\npor cluster para variable Asp__y" , straxt=7 )
  FuncionGraficarPromedioCluster( "./png/grupo01_caracterizar_cluster_kmn0006_var08_DEM.png"    , grupo01_bigkmeans_kmn0006_grp01_var08_cluster_mean , "DEM"    , grupo01_bigkmeans_kmn0006_grp01_var08_cluster_ci , "DEM"    , "Valor medio e intervalo de confianza\npor cluster para variable DEM"    , straxt=7 )
  FuncionGraficarPromedioCluster( "./png/grupo01_caracterizar_cluster_kmn0006_var08_NDMI.png"   , grupo01_bigkmeans_kmn0006_grp01_var08_cluster_mean , "NDMI"   , grupo01_bigkmeans_kmn0006_grp01_var08_cluster_ci , "NDMI"   , "Valor medio e intervalo de confianza\npor cluster para variable NDMI"   , straxt=7 )
  FuncionGraficarPromedioCluster( "./png/grupo01_caracterizar_cluster_kmn0006_var08_Slope.png"  , grupo01_bigkmeans_kmn0006_grp01_var08_cluster_mean , "Slope"  , grupo01_bigkmeans_kmn0006_grp01_var08_cluster_ci , "Slope"  , "Valor medio e intervalo de confianza\npor cluster para variable Slope"  , straxt=7 )
  FuncionGraficarPromedioCluster( "./png/grupo01_caracterizar_cluster_kmn0006_var08_TWI.png"    , grupo01_bigkmeans_kmn0006_grp01_var08_cluster_mean , "TWI"    , grupo01_bigkmeans_kmn0006_grp01_var08_cluster_ci , "TWI"    , "Valor medio e intervalo de confianza\npor cluster para variable TWI"    , straxt=7 )

  system( "bash RutinaMatConf_PrepararImagen_grupo01_kmn0006_var08.sh" )

  source( "FuncionExportarExcel.R" )

  write.table( grupo01_bigkmeans_kmn0006_grp01_var08_cluster_mean[,c(9:15)] , file="./csv/grupo01_caracterizar_cluster_kmn0006_var08_mean.csv" , sep="@" , row.names=F , col.names=T , quote=F )
  write.table( grupo01_bigkmeans_kmn0006_grp01_var08_cluster_sd  [,c(9:15)] , file="./csv/grupo01_caracterizar_cluster_kmn0006_var08_sd__.csv" , sep="@" , row.names=F , col.names=T , quote=F )
  write.table( grupo01_bigkmeans_kmn0006_grp01_var08_cluster_se  [,c(9:15)] , file="./csv/grupo01_caracterizar_cluster_kmn0006_var08_se__.csv" , sep="@" , row.names=F , col.names=T , quote=F )
  write.table( grupo01_bigkmeans_kmn0006_grp01_var08_cluster_ci  [,c(9:15)] , file="./csv/grupo01_caracterizar_cluster_kmn0006_var08_ci__.csv" , sep="@" , row.names=F , col.names=T , quote=F )
  write.table( grupo01_bigkmeans_kmn0006_grp01_var08_cluster_max [,c(9:15)] , file="./csv/grupo01_caracterizar_cluster_kmn0006_var08_max_.csv" , sep="@" , row.names=F , col.names=T , quote=F )
  write.table( grupo01_bigkmeans_kmn0006_grp01_var08_cluster_min [,c(9:15)] , file="./csv/grupo01_caracterizar_cluster_kmn0006_var08_min_.csv" , sep="@" , row.names=F , col.names=T , quote=F )

  ExportarDataframeVariacionPromedio( grupo01_bigkmeans_kmn0006_grp01_var08_cluster_mean , "./xlsx/grupo01_caracterizar_cluster_kmn0006_var08.xlsx" , "./csv/grupo01_caracterizar_cluster_kmn0006_var08_mean.csv" , "media"     , "./png/grupo01_caracterizar_cluster_kmn0006_var08.png" )
  ExportarDataframeVariacionPromedio( grupo01_bigkmeans_kmn0006_grp01_var08_cluster_sd   , "./xlsx/grupo01_caracterizar_cluster_kmn0006_var08.xlsx" , "./csv/grupo01_caracterizar_cluster_kmn0006_var08_sd__.csv" , "desvest"   , ""                                                 )
  ExportarDataframeVariacionPromedio( grupo01_bigkmeans_kmn0006_grp01_var08_cluster_se   , "./xlsx/grupo01_caracterizar_cluster_kmn0006_var08.xlsx" , "./csv/grupo01_caracterizar_cluster_kmn0006_var08_se__.csv" , "errorest"  , ""                                                 )
  ExportarDataframeVariacionPromedio( grupo01_bigkmeans_kmn0006_grp01_var08_cluster_ci   , "./xlsx/grupo01_caracterizar_cluster_kmn0006_var08.xlsx" , "./csv/grupo01_caracterizar_cluster_kmn0006_var08_ci__.csv" , "interconf" , ""                                                 )
  ExportarDataframeVariacionPromedio( grupo01_bigkmeans_kmn0006_grp01_var08_cluster_max  , "./xlsx/grupo01_caracterizar_cluster_kmn0006_var08.xlsx" , "./csv/grupo01_caracterizar_cluster_kmn0006_var08_max_.csv" , "max"       , ""                                                 )
  ExportarDataframeVariacionPromedio( grupo01_bigkmeans_kmn0006_grp01_var08_cluster_min  , "./xlsx/grupo01_caracterizar_cluster_kmn0006_var08.xlsx" , "./csv/grupo01_caracterizar_cluster_kmn0006_var08_min_.csv" , "min"       , ""                                                 )
