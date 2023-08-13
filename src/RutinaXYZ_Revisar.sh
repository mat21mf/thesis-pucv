  if [[ $(whoami) == "matbox" ]] ; then
    declare -gx resdir="$HOME/Documents/TrabajosExtra/DriveBiotopos/Rasters/Resultados_Kmeans"
  else
    declare -gx resdir="/cygdrive/d/Matias_Rebolledo/Raster/CapasFAU23_5"
  fi

  ### verificar todos
  python RasterValoresUnicos.py ${resdir}/grupo01MaskSample/grupo01MaskSample_Coord_kmn0006_var08_cluster_gdal.tif
  python RasterValoresUnicos.py ${resdir}/grupo02MaskSample/grupo02MaskSample_Coord_kmn0010_var08_cluster_gdal.tif
  python RasterValoresUnicos.py ${resdir}/grupo03MaskSample/grupo03MaskSample_Coord_kmn0007_var08_cluster_gdal.tif
  python RasterValoresUnicos.py ${resdir}/grupo04MaskSample/grupo04MaskSample_Coord_kmn0008_var08_cluster_gdal.tif
  python RasterValoresUnicos.py ${resdir}/grupo05MaskSample/grupo05MaskSample_Coord_kmn0008_var08_cluster_gdal.tif
  python RasterValoresUnicos.py ${resdir}/grupo06MaskSample/grupo06MaskSample_Coord_kmn0009_var08_cluster_gdal.tif
