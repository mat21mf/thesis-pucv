gdaldem TRI \
         -co NUM_THREADS=ALL_CPUS -co COMPRESS=LZW \
         -co BLOCKXSIZE=256 -co BLOCKYSIZE=256 -co TILED=YES \
  ../../DriveBiotopos/Daniel_Zamorano/Pixel25/Transf_DEM_px25.tif \
  ../../DriveBiotopos/Daniel_Zamorano/Pixel25dem/Transf_TRI_px25.tif
