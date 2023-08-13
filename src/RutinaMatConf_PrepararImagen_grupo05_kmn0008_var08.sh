
  convert +append "./png/grupo05_caracterizar_cluster_kmn0008_var08_Asp__x.png" "./png/grupo05_caracterizar_cluster_kmn0008_var08_Asp__y.png" "./png/grupo05_caracterizar_cluster_kmn0008_var08_h0001.png"
  convert +append "./png/grupo05_caracterizar_cluster_kmn0008_var08_DEM.png"    "./png/grupo05_caracterizar_cluster_kmn0008_var08_NDMI.png"   "./png/grupo05_caracterizar_cluster_kmn0008_var08_h0002.png"
  convert +append "./png/grupo05_caracterizar_cluster_kmn0008_var08_Slope.png"  "./png/grupo05_caracterizar_cluster_kmn0008_var08_TWI.png"    "./png/grupo05_caracterizar_cluster_kmn0008_var08_h0003.png"

  convert -append "./png/grupo05_caracterizar_cluster_kmn0008_var08_h0001.png"  "./png/grupo05_caracterizar_cluster_kmn0008_var08_h0002.png"  "./png/grupo05_caracterizar_cluster_kmn0008_var08_h0003.png" "./png/grupo05_caracterizar_cluster_kmn0008_var08.png"

  rm -rf "./png/grupo05_caracterizar_cluster_kmn0008_var08_h0001.png"
  rm -rf "./png/grupo05_caracterizar_cluster_kmn0008_var08_h0002.png"
  rm -rf "./png/grupo05_caracterizar_cluster_kmn0008_var08_h0003.png"
