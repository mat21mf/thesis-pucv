  ### corregir paso 2
  gdal_translate -of GTiff -ot Byte -co "COMPRESS=LZW" -a_nodata 255 /cygdrive/d/Matias_Rebolledo/Raster/CapasFAU23_5/grupo01MaskSample/grupo01MaskSample_Coord_kmn0006_var08_cluster_byte.tif /cygdrive/d/Matias_Rebolledo/Raster/CapasFAU23_5/grupo01MaskSample/grupo01MaskSample_Coord_kmn0006_var08_cluster_gdal.tif
  gdal_translate -of GTiff -ot Byte -co "COMPRESS=LZW" -a_nodata 255 /cygdrive/d/Matias_Rebolledo/Raster/CapasFAU23_5/grupo02MaskSample/grupo02MaskSample_Coord_kmn0010_var08_cluster_byte.tif /cygdrive/d/Matias_Rebolledo/Raster/CapasFAU23_5/grupo02MaskSample/grupo02MaskSample_Coord_kmn0010_var08_cluster_gdal.tif
  gdal_translate -of GTiff -ot Byte -co "COMPRESS=LZW" -a_nodata 255 /cygdrive/d/Matias_Rebolledo/Raster/CapasFAU23_5/grupo03MaskSample/grupo03MaskSample_Coord_kmn0007_var08_cluster_byte.tif /cygdrive/d/Matias_Rebolledo/Raster/CapasFAU23_5/grupo03MaskSample/grupo03MaskSample_Coord_kmn0007_var08_cluster_gdal.tif
  gdal_translate -of GTiff -ot Byte -co "COMPRESS=LZW" -a_nodata 255 /cygdrive/d/Matias_Rebolledo/Raster/CapasFAU23_5/grupo04MaskSample/grupo04MaskSample_Coord_kmn0008_var08_cluster_byte.tif /cygdrive/d/Matias_Rebolledo/Raster/CapasFAU23_5/grupo04MaskSample/grupo04MaskSample_Coord_kmn0008_var08_cluster_gdal.tif
  gdal_translate -of GTiff -ot Byte -co "COMPRESS=LZW" -a_nodata 255 /cygdrive/d/Matias_Rebolledo/Raster/CapasFAU23_5/grupo05MaskSample/grupo05MaskSample_Coord_kmn0008_var08_cluster_byte.tif /cygdrive/d/Matias_Rebolledo/Raster/CapasFAU23_5/grupo05MaskSample/grupo05MaskSample_Coord_kmn0008_var08_cluster_gdal.tif
  gdal_translate -of GTiff -ot Byte -co "COMPRESS=LZW" -a_nodata 255 /cygdrive/d/Matias_Rebolledo/Raster/CapasFAU23_5/grupo06MaskSample/grupo06MaskSample_Coord_kmn0009_var08_cluster_byte.tif /cygdrive/d/Matias_Rebolledo/Raster/CapasFAU23_5/grupo06MaskSample/grupo06MaskSample_Coord_kmn0009_var08_cluster_gdal.tif

  ### verificar todos
  python RasterValoresUnicos.py /cygdrive/d/Matias_Rebolledo/Raster/CapasFAU23_5/grupo01MaskSample/grupo01MaskSample_Coord_kmn0006_var08_cluster_gdal.tif
  python RasterValoresUnicos.py /cygdrive/d/Matias_Rebolledo/Raster/CapasFAU23_5/grupo02MaskSample/grupo02MaskSample_Coord_kmn0010_var08_cluster_gdal.tif
  python RasterValoresUnicos.py /cygdrive/d/Matias_Rebolledo/Raster/CapasFAU23_5/grupo03MaskSample/grupo03MaskSample_Coord_kmn0007_var08_cluster_gdal.tif
  python RasterValoresUnicos.py /cygdrive/d/Matias_Rebolledo/Raster/CapasFAU23_5/grupo04MaskSample/grupo04MaskSample_Coord_kmn0008_var08_cluster_gdal.tif
  python RasterValoresUnicos.py /cygdrive/d/Matias_Rebolledo/Raster/CapasFAU23_5/grupo05MaskSample/grupo05MaskSample_Coord_kmn0008_var08_cluster_gdal.tif
  python RasterValoresUnicos.py /cygdrive/d/Matias_Rebolledo/Raster/CapasFAU23_5/grupo06MaskSample/grupo06MaskSample_Coord_kmn0009_var08_cluster_gdal.tif
