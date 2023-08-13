  if [[ $(whoami) == "matbox" ]] ; then
    declare -gx resdir="$HOME/Documents/TrabajosExtra/DriveBiotopos/Rasters/Resultados_Kmeans"
  else
    declare -gx resdir="/cygdrive/d/Matias_Rebolledo/Raster/CapasFAU23_5"
  fi

  ### sieve temp area0025
  gdal_sieve.py -st 26 -8 ${resdir}/grupo01MaskSample/grupo01MaskSample_Coord_kmn0006_var08_cluster_gdal.tif -of "GTiff" ${resdir}/grupo01MaskSample/grupo01MaskSample_Coord_kmn0006_var08_cluster_sieve_area0025_temp.tif
  gdal_sieve.py -st 26 -8 ${resdir}/grupo02MaskSample/grupo02MaskSample_Coord_kmn0010_var08_cluster_gdal.tif -of "GTiff" ${resdir}/grupo02MaskSample/grupo02MaskSample_Coord_kmn0010_var08_cluster_sieve_area0025_temp.tif
  gdal_sieve.py -st 26 -8 ${resdir}/grupo03MaskSample/grupo03MaskSample_Coord_kmn0007_var08_cluster_gdal.tif -of "GTiff" ${resdir}/grupo03MaskSample/grupo03MaskSample_Coord_kmn0007_var08_cluster_sieve_area0025_temp.tif
  gdal_sieve.py -st 26 -8 ${resdir}/grupo04MaskSample/grupo04MaskSample_Coord_kmn0008_var08_cluster_gdal.tif -of "GTiff" ${resdir}/grupo04MaskSample/grupo04MaskSample_Coord_kmn0008_var08_cluster_sieve_area0025_temp.tif
  gdal_sieve.py -st 26 -8 ${resdir}/grupo05MaskSample/grupo05MaskSample_Coord_kmn0008_var08_cluster_gdal.tif -of "GTiff" ${resdir}/grupo05MaskSample/grupo05MaskSample_Coord_kmn0008_var08_cluster_sieve_area0025_temp.tif
  gdal_sieve.py -st 26 -8 ${resdir}/grupo06MaskSample/grupo06MaskSample_Coord_kmn0009_var08_cluster_gdal.tif -of "GTiff" ${resdir}/grupo06MaskSample/grupo06MaskSample_Coord_kmn0009_var08_cluster_sieve_area0025_temp.tif

  ### translate temp area0025
  gdal_translate -of GTiff -ot Byte -co "COMPRESS=LZW" -a_nodata 255 ${resdir}/grupo01MaskSample/grupo01MaskSample_Coord_kmn0006_var08_cluster_sieve_area0025_temp.tif ${resdir}/grupo01MaskSample/grupo01MaskSample_Coord_kmn0006_var08_cluster_sieve_area0025.tif
  gdal_translate -of GTiff -ot Byte -co "COMPRESS=LZW" -a_nodata 255 ${resdir}/grupo02MaskSample/grupo02MaskSample_Coord_kmn0010_var08_cluster_sieve_area0025_temp.tif ${resdir}/grupo02MaskSample/grupo02MaskSample_Coord_kmn0010_var08_cluster_sieve_area0025.tif
  gdal_translate -of GTiff -ot Byte -co "COMPRESS=LZW" -a_nodata 255 ${resdir}/grupo03MaskSample/grupo03MaskSample_Coord_kmn0007_var08_cluster_sieve_area0025_temp.tif ${resdir}/grupo03MaskSample/grupo03MaskSample_Coord_kmn0007_var08_cluster_sieve_area0025.tif
  gdal_translate -of GTiff -ot Byte -co "COMPRESS=LZW" -a_nodata 255 ${resdir}/grupo04MaskSample/grupo04MaskSample_Coord_kmn0008_var08_cluster_sieve_area0025_temp.tif ${resdir}/grupo04MaskSample/grupo04MaskSample_Coord_kmn0008_var08_cluster_sieve_area0025.tif
  gdal_translate -of GTiff -ot Byte -co "COMPRESS=LZW" -a_nodata 255 ${resdir}/grupo05MaskSample/grupo05MaskSample_Coord_kmn0008_var08_cluster_sieve_area0025_temp.tif ${resdir}/grupo05MaskSample/grupo05MaskSample_Coord_kmn0008_var08_cluster_sieve_area0025.tif
  gdal_translate -of GTiff -ot Byte -co "COMPRESS=LZW" -a_nodata 255 ${resdir}/grupo06MaskSample/grupo06MaskSample_Coord_kmn0009_var08_cluster_sieve_area0025_temp.tif ${resdir}/grupo06MaskSample/grupo06MaskSample_Coord_kmn0009_var08_cluster_sieve_area0025.tif

  ### remover temp area0025
  rm -rf ${resdir}/grupo01MaskSample/grupo01MaskSample_Coord_kmn0006_var08_cluster_sieve_area0025_temp.tif
  rm -rf ${resdir}/grupo02MaskSample/grupo02MaskSample_Coord_kmn0010_var08_cluster_sieve_area0025_temp.tif
  rm -rf ${resdir}/grupo03MaskSample/grupo03MaskSample_Coord_kmn0007_var08_cluster_sieve_area0025_temp.tif
  rm -rf ${resdir}/grupo04MaskSample/grupo04MaskSample_Coord_kmn0008_var08_cluster_sieve_area0025_temp.tif
  rm -rf ${resdir}/grupo05MaskSample/grupo05MaskSample_Coord_kmn0008_var08_cluster_sieve_area0025_temp.tif
  rm -rf ${resdir}/grupo06MaskSample/grupo06MaskSample_Coord_kmn0009_var08_cluster_sieve_area0025_temp.tif

  ### sieve temp area0050
  gdal_sieve.py -st 51 -8 ${resdir}/grupo01MaskSample/grupo01MaskSample_Coord_kmn0006_var08_cluster_gdal.tif -of "GTiff" ${resdir}/grupo01MaskSample/grupo01MaskSample_Coord_kmn0006_var08_cluster_sieve_area0050_temp.tif
  gdal_sieve.py -st 51 -8 ${resdir}/grupo02MaskSample/grupo02MaskSample_Coord_kmn0010_var08_cluster_gdal.tif -of "GTiff" ${resdir}/grupo02MaskSample/grupo02MaskSample_Coord_kmn0010_var08_cluster_sieve_area0050_temp.tif
  gdal_sieve.py -st 51 -8 ${resdir}/grupo03MaskSample/grupo03MaskSample_Coord_kmn0007_var08_cluster_gdal.tif -of "GTiff" ${resdir}/grupo03MaskSample/grupo03MaskSample_Coord_kmn0007_var08_cluster_sieve_area0050_temp.tif
  gdal_sieve.py -st 51 -8 ${resdir}/grupo04MaskSample/grupo04MaskSample_Coord_kmn0008_var08_cluster_gdal.tif -of "GTiff" ${resdir}/grupo04MaskSample/grupo04MaskSample_Coord_kmn0008_var08_cluster_sieve_area0050_temp.tif
  gdal_sieve.py -st 51 -8 ${resdir}/grupo05MaskSample/grupo05MaskSample_Coord_kmn0008_var08_cluster_gdal.tif -of "GTiff" ${resdir}/grupo05MaskSample/grupo05MaskSample_Coord_kmn0008_var08_cluster_sieve_area0050_temp.tif
  gdal_sieve.py -st 51 -8 ${resdir}/grupo06MaskSample/grupo06MaskSample_Coord_kmn0009_var08_cluster_gdal.tif -of "GTiff" ${resdir}/grupo06MaskSample/grupo06MaskSample_Coord_kmn0009_var08_cluster_sieve_area0050_temp.tif

  ### translate temp area0050
  gdal_translate -of GTiff -ot Byte -co "COMPRESS=LZW" -a_nodata 255 ${resdir}/grupo01MaskSample/grupo01MaskSample_Coord_kmn0006_var08_cluster_sieve_area0050_temp.tif ${resdir}/grupo01MaskSample/grupo01MaskSample_Coord_kmn0006_var08_cluster_sieve_area0050.tif
  gdal_translate -of GTiff -ot Byte -co "COMPRESS=LZW" -a_nodata 255 ${resdir}/grupo02MaskSample/grupo02MaskSample_Coord_kmn0010_var08_cluster_sieve_area0050_temp.tif ${resdir}/grupo02MaskSample/grupo02MaskSample_Coord_kmn0010_var08_cluster_sieve_area0050.tif
  gdal_translate -of GTiff -ot Byte -co "COMPRESS=LZW" -a_nodata 255 ${resdir}/grupo03MaskSample/grupo03MaskSample_Coord_kmn0007_var08_cluster_sieve_area0050_temp.tif ${resdir}/grupo03MaskSample/grupo03MaskSample_Coord_kmn0007_var08_cluster_sieve_area0050.tif
  gdal_translate -of GTiff -ot Byte -co "COMPRESS=LZW" -a_nodata 255 ${resdir}/grupo04MaskSample/grupo04MaskSample_Coord_kmn0008_var08_cluster_sieve_area0050_temp.tif ${resdir}/grupo04MaskSample/grupo04MaskSample_Coord_kmn0008_var08_cluster_sieve_area0050.tif
  gdal_translate -of GTiff -ot Byte -co "COMPRESS=LZW" -a_nodata 255 ${resdir}/grupo05MaskSample/grupo05MaskSample_Coord_kmn0008_var08_cluster_sieve_area0050_temp.tif ${resdir}/grupo05MaskSample/grupo05MaskSample_Coord_kmn0008_var08_cluster_sieve_area0050.tif
  gdal_translate -of GTiff -ot Byte -co "COMPRESS=LZW" -a_nodata 255 ${resdir}/grupo06MaskSample/grupo06MaskSample_Coord_kmn0009_var08_cluster_sieve_area0050_temp.tif ${resdir}/grupo06MaskSample/grupo06MaskSample_Coord_kmn0009_var08_cluster_sieve_area0050.tif

  ### remover temp area0050
  rm -rf ${resdir}/grupo01MaskSample/grupo01MaskSample_Coord_kmn0006_var08_cluster_sieve_area0050_temp.tif
  rm -rf ${resdir}/grupo02MaskSample/grupo02MaskSample_Coord_kmn0010_var08_cluster_sieve_area0050_temp.tif
  rm -rf ${resdir}/grupo03MaskSample/grupo03MaskSample_Coord_kmn0007_var08_cluster_sieve_area0050_temp.tif
  rm -rf ${resdir}/grupo04MaskSample/grupo04MaskSample_Coord_kmn0008_var08_cluster_sieve_area0050_temp.tif
  rm -rf ${resdir}/grupo05MaskSample/grupo05MaskSample_Coord_kmn0008_var08_cluster_sieve_area0050_temp.tif
  rm -rf ${resdir}/grupo06MaskSample/grupo06MaskSample_Coord_kmn0009_var08_cluster_sieve_area0050_temp.tif

  ### sieve temp area0075
  gdal_sieve.py -st 76 -8 ${resdir}/grupo01MaskSample/grupo01MaskSample_Coord_kmn0006_var08_cluster_gdal.tif -of "GTiff" ${resdir}/grupo01MaskSample/grupo01MaskSample_Coord_kmn0006_var08_cluster_sieve_area0075_temp.tif
  gdal_sieve.py -st 76 -8 ${resdir}/grupo02MaskSample/grupo02MaskSample_Coord_kmn0010_var08_cluster_gdal.tif -of "GTiff" ${resdir}/grupo02MaskSample/grupo02MaskSample_Coord_kmn0010_var08_cluster_sieve_area0075_temp.tif
  gdal_sieve.py -st 76 -8 ${resdir}/grupo03MaskSample/grupo03MaskSample_Coord_kmn0007_var08_cluster_gdal.tif -of "GTiff" ${resdir}/grupo03MaskSample/grupo03MaskSample_Coord_kmn0007_var08_cluster_sieve_area0075_temp.tif
  gdal_sieve.py -st 76 -8 ${resdir}/grupo04MaskSample/grupo04MaskSample_Coord_kmn0008_var08_cluster_gdal.tif -of "GTiff" ${resdir}/grupo04MaskSample/grupo04MaskSample_Coord_kmn0008_var08_cluster_sieve_area0075_temp.tif
  gdal_sieve.py -st 76 -8 ${resdir}/grupo05MaskSample/grupo05MaskSample_Coord_kmn0008_var08_cluster_gdal.tif -of "GTiff" ${resdir}/grupo05MaskSample/grupo05MaskSample_Coord_kmn0008_var08_cluster_sieve_area0075_temp.tif
  gdal_sieve.py -st 76 -8 ${resdir}/grupo06MaskSample/grupo06MaskSample_Coord_kmn0009_var08_cluster_gdal.tif -of "GTiff" ${resdir}/grupo06MaskSample/grupo06MaskSample_Coord_kmn0009_var08_cluster_sieve_area0075_temp.tif

  ### translate temp area0075
  gdal_translate -of GTiff -ot Byte -co "COMPRESS=LZW" -a_nodata 255 ${resdir}/grupo01MaskSample/grupo01MaskSample_Coord_kmn0006_var08_cluster_sieve_area0075_temp.tif ${resdir}/grupo01MaskSample/grupo01MaskSample_Coord_kmn0006_var08_cluster_sieve_area0075.tif
  gdal_translate -of GTiff -ot Byte -co "COMPRESS=LZW" -a_nodata 255 ${resdir}/grupo02MaskSample/grupo02MaskSample_Coord_kmn0010_var08_cluster_sieve_area0075_temp.tif ${resdir}/grupo02MaskSample/grupo02MaskSample_Coord_kmn0010_var08_cluster_sieve_area0075.tif
  gdal_translate -of GTiff -ot Byte -co "COMPRESS=LZW" -a_nodata 255 ${resdir}/grupo03MaskSample/grupo03MaskSample_Coord_kmn0007_var08_cluster_sieve_area0075_temp.tif ${resdir}/grupo03MaskSample/grupo03MaskSample_Coord_kmn0007_var08_cluster_sieve_area0075.tif
  gdal_translate -of GTiff -ot Byte -co "COMPRESS=LZW" -a_nodata 255 ${resdir}/grupo04MaskSample/grupo04MaskSample_Coord_kmn0008_var08_cluster_sieve_area0075_temp.tif ${resdir}/grupo04MaskSample/grupo04MaskSample_Coord_kmn0008_var08_cluster_sieve_area0075.tif
  gdal_translate -of GTiff -ot Byte -co "COMPRESS=LZW" -a_nodata 255 ${resdir}/grupo05MaskSample/grupo05MaskSample_Coord_kmn0008_var08_cluster_sieve_area0075_temp.tif ${resdir}/grupo05MaskSample/grupo05MaskSample_Coord_kmn0008_var08_cluster_sieve_area0075.tif
  gdal_translate -of GTiff -ot Byte -co "COMPRESS=LZW" -a_nodata 255 ${resdir}/grupo06MaskSample/grupo06MaskSample_Coord_kmn0009_var08_cluster_sieve_area0075_temp.tif ${resdir}/grupo06MaskSample/grupo06MaskSample_Coord_kmn0009_var08_cluster_sieve_area0075.tif

  ### remover temp area0075
  rm -rf ${resdir}/grupo01MaskSample/grupo01MaskSample_Coord_kmn0006_var08_cluster_sieve_area0075_temp.tif
  rm -rf ${resdir}/grupo02MaskSample/grupo02MaskSample_Coord_kmn0010_var08_cluster_sieve_area0075_temp.tif
  rm -rf ${resdir}/grupo03MaskSample/grupo03MaskSample_Coord_kmn0007_var08_cluster_sieve_area0075_temp.tif
  rm -rf ${resdir}/grupo04MaskSample/grupo04MaskSample_Coord_kmn0008_var08_cluster_sieve_area0075_temp.tif
  rm -rf ${resdir}/grupo05MaskSample/grupo05MaskSample_Coord_kmn0008_var08_cluster_sieve_area0075_temp.tif
  rm -rf ${resdir}/grupo06MaskSample/grupo06MaskSample_Coord_kmn0009_var08_cluster_sieve_area0075_temp.tif

  ### sieve temp area0100
  gdal_sieve.py -st 101 -8 ${resdir}/grupo01MaskSample/grupo01MaskSample_Coord_kmn0006_var08_cluster_gdal.tif -of "GTiff" ${resdir}/grupo01MaskSample/grupo01MaskSample_Coord_kmn0006_var08_cluster_sieve_area0100_temp.tif
  gdal_sieve.py -st 101 -8 ${resdir}/grupo02MaskSample/grupo02MaskSample_Coord_kmn0010_var08_cluster_gdal.tif -of "GTiff" ${resdir}/grupo02MaskSample/grupo02MaskSample_Coord_kmn0010_var08_cluster_sieve_area0100_temp.tif
  gdal_sieve.py -st 101 -8 ${resdir}/grupo03MaskSample/grupo03MaskSample_Coord_kmn0007_var08_cluster_gdal.tif -of "GTiff" ${resdir}/grupo03MaskSample/grupo03MaskSample_Coord_kmn0007_var08_cluster_sieve_area0100_temp.tif
  gdal_sieve.py -st 101 -8 ${resdir}/grupo04MaskSample/grupo04MaskSample_Coord_kmn0008_var08_cluster_gdal.tif -of "GTiff" ${resdir}/grupo04MaskSample/grupo04MaskSample_Coord_kmn0008_var08_cluster_sieve_area0100_temp.tif
  gdal_sieve.py -st 101 -8 ${resdir}/grupo05MaskSample/grupo05MaskSample_Coord_kmn0008_var08_cluster_gdal.tif -of "GTiff" ${resdir}/grupo05MaskSample/grupo05MaskSample_Coord_kmn0008_var08_cluster_sieve_area0100_temp.tif
  gdal_sieve.py -st 101 -8 ${resdir}/grupo06MaskSample/grupo06MaskSample_Coord_kmn0009_var08_cluster_gdal.tif -of "GTiff" ${resdir}/grupo06MaskSample/grupo06MaskSample_Coord_kmn0009_var08_cluster_sieve_area0100_temp.tif

  ### translate temp area0100
  gdal_translate -of GTiff -ot Byte -co "COMPRESS=LZW" -a_nodata 255 ${resdir}/grupo01MaskSample/grupo01MaskSample_Coord_kmn0006_var08_cluster_sieve_area0100_temp.tif ${resdir}/grupo01MaskSample/grupo01MaskSample_Coord_kmn0006_var08_cluster_sieve_area0100.tif
  gdal_translate -of GTiff -ot Byte -co "COMPRESS=LZW" -a_nodata 255 ${resdir}/grupo02MaskSample/grupo02MaskSample_Coord_kmn0010_var08_cluster_sieve_area0100_temp.tif ${resdir}/grupo02MaskSample/grupo02MaskSample_Coord_kmn0010_var08_cluster_sieve_area0100.tif
  gdal_translate -of GTiff -ot Byte -co "COMPRESS=LZW" -a_nodata 255 ${resdir}/grupo03MaskSample/grupo03MaskSample_Coord_kmn0007_var08_cluster_sieve_area0100_temp.tif ${resdir}/grupo03MaskSample/grupo03MaskSample_Coord_kmn0007_var08_cluster_sieve_area0100.tif
  gdal_translate -of GTiff -ot Byte -co "COMPRESS=LZW" -a_nodata 255 ${resdir}/grupo04MaskSample/grupo04MaskSample_Coord_kmn0008_var08_cluster_sieve_area0100_temp.tif ${resdir}/grupo04MaskSample/grupo04MaskSample_Coord_kmn0008_var08_cluster_sieve_area0100.tif
  gdal_translate -of GTiff -ot Byte -co "COMPRESS=LZW" -a_nodata 255 ${resdir}/grupo05MaskSample/grupo05MaskSample_Coord_kmn0008_var08_cluster_sieve_area0100_temp.tif ${resdir}/grupo05MaskSample/grupo05MaskSample_Coord_kmn0008_var08_cluster_sieve_area0100.tif
  gdal_translate -of GTiff -ot Byte -co "COMPRESS=LZW" -a_nodata 255 ${resdir}/grupo06MaskSample/grupo06MaskSample_Coord_kmn0009_var08_cluster_sieve_area0100_temp.tif ${resdir}/grupo06MaskSample/grupo06MaskSample_Coord_kmn0009_var08_cluster_sieve_area0100.tif

  ### remover temp area0100
  rm -rf ${resdir}/grupo01MaskSample/grupo01MaskSample_Coord_kmn0006_var08_cluster_sieve_area0100_temp.tif
  rm -rf ${resdir}/grupo02MaskSample/grupo02MaskSample_Coord_kmn0010_var08_cluster_sieve_area0100_temp.tif
  rm -rf ${resdir}/grupo03MaskSample/grupo03MaskSample_Coord_kmn0007_var08_cluster_sieve_area0100_temp.tif
  rm -rf ${resdir}/grupo04MaskSample/grupo04MaskSample_Coord_kmn0008_var08_cluster_sieve_area0100_temp.tif
  rm -rf ${resdir}/grupo05MaskSample/grupo05MaskSample_Coord_kmn0008_var08_cluster_sieve_area0100_temp.tif
  rm -rf ${resdir}/grupo06MaskSample/grupo06MaskSample_Coord_kmn0009_var08_cluster_sieve_area0100_temp.tif

  ### comprimir distintos tamaños sieve
  cd ${resdir}
  ### 7za a -t7z -aoa -mx=9 \
  ### ${resdir}/Rasters_resultado_kmeans_geoproceso_sieve_ejemplo.7z \
  tar -czvf \
  Rasters_resultado_kmeans_geoproceso_sieve_ejemplo.tar.gz \
  grupo01MaskSample/grupo01MaskSample_Coord_kmn0006_var08_cluster_sieve_area0025.tif \
  grupo01MaskSample/grupo01MaskSample_Coord_kmn0006_var08_cluster_sieve_area0050.tif \
  grupo01MaskSample/grupo01MaskSample_Coord_kmn0006_var08_cluster_sieve_area0075.tif \
  grupo01MaskSample/grupo01MaskSample_Coord_kmn0006_var08_cluster_sieve_area0100.tif \
  grupo02MaskSample/grupo02MaskSample_Coord_kmn0010_var08_cluster_sieve_area0025.tif \
  grupo02MaskSample/grupo02MaskSample_Coord_kmn0010_var08_cluster_sieve_area0050.tif \
  grupo02MaskSample/grupo02MaskSample_Coord_kmn0010_var08_cluster_sieve_area0075.tif \
  grupo02MaskSample/grupo02MaskSample_Coord_kmn0010_var08_cluster_sieve_area0100.tif \
  grupo03MaskSample/grupo03MaskSample_Coord_kmn0007_var08_cluster_sieve_area0025.tif \
  grupo03MaskSample/grupo03MaskSample_Coord_kmn0007_var08_cluster_sieve_area0050.tif \
  grupo03MaskSample/grupo03MaskSample_Coord_kmn0007_var08_cluster_sieve_area0075.tif \
  grupo03MaskSample/grupo03MaskSample_Coord_kmn0007_var08_cluster_sieve_area0100.tif \
  grupo04MaskSample/grupo04MaskSample_Coord_kmn0008_var08_cluster_sieve_area0025.tif \
  grupo04MaskSample/grupo04MaskSample_Coord_kmn0008_var08_cluster_sieve_area0050.tif \
  grupo04MaskSample/grupo04MaskSample_Coord_kmn0008_var08_cluster_sieve_area0075.tif \
  grupo04MaskSample/grupo04MaskSample_Coord_kmn0008_var08_cluster_sieve_area0100.tif \
  grupo05MaskSample/grupo05MaskSample_Coord_kmn0008_var08_cluster_sieve_area0025.tif \
  grupo05MaskSample/grupo05MaskSample_Coord_kmn0008_var08_cluster_sieve_area0050.tif \
  grupo05MaskSample/grupo05MaskSample_Coord_kmn0008_var08_cluster_sieve_area0075.tif \
  grupo05MaskSample/grupo05MaskSample_Coord_kmn0008_var08_cluster_sieve_area0100.tif \
  grupo06MaskSample/grupo06MaskSample_Coord_kmn0009_var08_cluster_sieve_area0025.tif \
  grupo06MaskSample/grupo06MaskSample_Coord_kmn0009_var08_cluster_sieve_area0050.tif \
  grupo06MaskSample/grupo06MaskSample_Coord_kmn0009_var08_cluster_sieve_area0075.tif \
  grupo06MaskSample/grupo06MaskSample_Coord_kmn0009_var08_cluster_sieve_area0100.tif
  cd -
