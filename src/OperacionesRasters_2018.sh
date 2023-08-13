### Rutina dedicada a la conversion de rasters de consultores 2018
### Usa lo diseñado en la consultoria actual 2019 para remuestrear
### Probar con gdal:
###   1) rasterizar
###   2) recortar
###   3) remuestrear

# ### rasterizar
# gdal_rasterize -tr 28 28 -tap -a ID -co NUM_THREADS=ALL_CPUS -co COMPRESS=LZW ../../DriveBiotopos/Matias_Rebolledo/Raster/Capas2018/Mascara_cuadricula/Mascara_cuadricula.shp ../../DriveBiotopos/Matias_Rebolledo/Raster/Capas2018/Mascara_cuadricula/Mascara_cuadricula.tif

# ### recortar lento
# gdalwarp -cutline ../../DriveBiotopos/Matias_Rebolledo/Raster/Capas2018/Mascara_cuadricula/Mascara_cuadricula.shp -crop_to_cutline -dstalpha -wm 2048 -multi -wo NUM_THREADS=ALL_CPUS -co NUM_THREADS=ALL_CPUS -co COMPRESS=LZW -overwrite  ../../DriveBiotopos/Daniel_Zamorano/Pixel25Norm/Transf_asp_x_px25.tif ../../DriveBiotopos/Matias_Rebolledo/Raster/Capas2018/Pixel25Mask/Transf_asp_x_px25_mask.tif

# ### remuestrear capas consultores usando gdalwarp 2.1.2 incluye modificacion
# gdalwarp -r average -ts 6575 5896 -te 237577.3 6206070 403924.8 6355836 -wm 2048 -multi -wo NUM_THREADS=ALL_CPUS -co NUM_THREADS=ALL_CPUS -co COMPRESS=LZW -overwrite ../../DriveBiotopos/Daniel_Zamorano/Pixel25Norm/Transf_TRI_px25.tif          ../../DriveBiotopos/Daniel_Zamorano/Pixel25Alte/Transf_TRI_px25_remuestreado.tif
# gdalwarp -r average -ts 6575 5896 -te 237577.3 6206070 403924.8 6355836 -wm 2048 -multi -wo NUM_THREADS=ALL_CPUS -co NUM_THREADS=ALL_CPUS -co COMPRESS=LZW -overwrite ../../DriveBiotopos/Daniel_Zamorano/Pixel25Norm/Transf_slope_px25.tif        ../../DriveBiotopos/Daniel_Zamorano/Pixel25Alte/Transf_slope_px25_remuestreado.tif
# gdalwarp -r average -ts 6575 5896 -te 237577.3 6206070 403924.8 6355836 -wm 2048 -multi -wo NUM_THREADS=ALL_CPUS -co NUM_THREADS=ALL_CPUS -co COMPRESS=LZW -overwrite ../../DriveBiotopos/Daniel_Zamorano/Pixel25Norm/Transf_carbono_2013_px25.tif ../../DriveBiotopos/Daniel_Zamorano/Pixel25Alte/Transf_carbono_2013_px25_remuestreado.tif
# gdalwarp -r average -ts 6575 5896 -te 237577.3 6206070 403924.8 6355836 -wm 2048 -multi -wo NUM_THREADS=ALL_CPUS -co NUM_THREADS=ALL_CPUS -co COMPRESS=LZW -overwrite ../../DriveBiotopos/Daniel_Zamorano/Pixel25Norm/Transf_asp_x_px25.tif        ../../DriveBiotopos/Daniel_Zamorano/Pixel25Alte/Transf_asp_x_px25_remuestreado.tif
# gdalwarp -r average -ts 6575 5896 -te 237577.3 6206070 403924.8 6355836 -wm 2048 -multi -wo NUM_THREADS=ALL_CPUS -co NUM_THREADS=ALL_CPUS -co COMPRESS=LZW -overwrite ../../DriveBiotopos/Daniel_Zamorano/Pixel25Norm/Transf_asp_y_px25.tif        ../../DriveBiotopos/Daniel_Zamorano/Pixel25Alte/Transf_asp_y_px25_remuestreado.tif
# gdalwarp -r average -ts 6575 5896 -te 237577.3 6206070 403924.8 6355836 -wm 2048 -multi -wo NUM_THREADS=ALL_CPUS -co NUM_THREADS=ALL_CPUS -co COMPRESS=LZW -overwrite ../../DriveBiotopos/Daniel_Zamorano/Pixel25Norm/Transf_DEM_px25.tif          ../../DriveBiotopos/Daniel_Zamorano/Pixel25Alte/Transf_DEM_px25_remuestreado.tif
# gdalwarp -r average -ts 6575 5896 -te 237577.3 6206070 403924.8 6355836 -wm 2048 -multi -wo NUM_THREADS=ALL_CPUS -co NUM_THREADS=ALL_CPUS -co COMPRESS=LZW -overwrite ../previos/Clas_geo_clip.tif                                                 ../../DriveBiotopos/Daniel_Zamorano/Pixel25Alte/Transf_Clas_geo_clip_remuestreado.tif

# ### revisar propiedades de archivos creados consultores
# echo
# find ../../DriveBiotopos/Daniel_Zamorano/Pixel25Alte/ -type f -name '*.tif' | sed -r 's/(.*)/(echo -n "\1: "; gdalinfo \"\1\" | grep -i --color '\''size is'\'')/' | bash
# echo
# find ../../DriveBiotopos/Daniel_Zamorano/Pixel25Alte/ -type f -name '*.tif' | sed -r 's/(.*)/(echo -n "\1: "; gdalinfo \"\1\" | grep -i --color '\''pixel size'\'')/' | bash
# echo
# find ../../DriveBiotopos/Daniel_Zamorano/Pixel25Alte/ -type f -name '*.tif' | sed -r 's/(.*)/(echo -n "\1: "; gdalinfo \"\1\" | grep -i --color '\''upper\\|lower'\'')/' | bash

