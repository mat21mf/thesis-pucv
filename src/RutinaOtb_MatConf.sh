otbcli_ComputeConfusionMatrix \
  -in            ../../DriveBiotopos/Rasters/Resultados_Kmeans/grupo03MaskSample/grupo03MaskSample_Coord_kmn0007_var08_cluster_gdal.tif \
  -out csv/DEM_grupo03_cluster_kmn0007_var08.csv \
  -ref raster \
  -ref.raster.in ../../DriveBiotopos/Matias_Rebolledo/Raster/CapasFAU23_5/grupo03MaskSample/DEM_reclass_grupo03.tif \
  -nodatalabel 255
