# ###
# ### Se mantiene como archivo de ejemplo
# ###

# ### Intersectar capas raster con mascara shp para crear raster faltante TRI
# gdalwarp -r average \
#          -ts 6848 6242 \
#          -wm 2048 -multi -wo NUM_THREADS=ALL_CPUS \
#          -co NUM_THREADS=ALL_CPUS -co COMPRESS=LZW \
#          -co BLOCKXSIZE=256 -co BLOCKYSIZE=256 -co TILED=YES \
#          -overwrite \
#          ../previos/dem30_final.tif ../previos/dem30_resample.tif

  gdalwarp -cutline "../../DriveBiotopos/Daniel_Zamorano/Rasters/Mascara cuadricula.shp" \
           -crop_to_cutline -of GTiff \
           -dstnodata -3.39999999999999996e+38 \
           -co NUM_THREADS=ALL_CPUS -co COMPRESS=LZW \
           -co BLOCKXSIZE=256 -co BLOCKYSIZE=256 -co TILED=YES \
           -overwrite \
           "../../DriveBiotopos/Daniel_Zamorano/ClimaGeo_com/Transf_ TRI .tif" \
           "../../DriveBiotopos/Daniel_Zamorano/Rasters/Transf__TRI__faltante.tif"
