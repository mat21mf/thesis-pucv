  ### ##############################
  ### Verificar
  ###   - gdal_calc.py definitivo
  ### ##############################

  declare -gx srcdir="$HOME/Documents/TrabajosExtra/DriveBiotopos/Matias_Rebolledo/Raster/CapasFAU23_5"

  ### gdal_reclassify.py
  ### https://github.com/chiatt/gdal_reclassify
  ### Example
  ### python gdal_reclassify.py source_dataset.tif destination_dataset.tif -c "<30, <50, <80, ==130, <210" -r "1, 2, 3, 4, 5" -d 0 -n true -p "COMPRESS=LZW"

# python gdal_reclassify.py ${srcdir}/grupo03MaskSample/DEM_remuestreado_grupo03_mask.tif ${srcdir}/grupo03MaskSample/DEM_reclass_grupo03.tif \
#   -c "<875, <1050, <1225, <1400, <1575, <1750, <1925, <2100" -r "1, 2, 3, 4, 5, 6, 7, 8" -n true -p "COMPRESS=LZW"

  ### gdal_calc
  ### Orden 1:
  ###   1 8 7 6 4 5 2 3
  gdal_calc.py -A ${srcdir}/grupo03MaskSample/DEM_remuestreado_grupo03_mask.tif \
        --outfile=${srcdir}/grupo03MaskSample/DEM_reclass_grupo03.tif \
        --co="COMPRESS=LZW"                                           \
        --calc="1*(A<875)+8*((A>=875 )*(A<1050))+7*((A>=1050)*(A<1225))+6*((A>=1225)*(A<1400))+4*((A>=1400)*(A<1575))+5*((A>=1575)*(A<1750))+2*((A>=1750)*(A<1925))+3*( A>=1925          )"
  ###   --calc="1*((A>=704)*(A<2094))+2*((A>=730 )*(A<2206))+3*((A>=1004)*(A<2281))+4*((A>=1225)*(A<1400))+5*((A>=1400)*(A<1575))+6*((A>=1575)*(A<1750))+7*((A>=1750)*(A<1925))+8*( A>=1925          )"

  ### ##############################
  ### Correccion definitiva: 2 pasos
  ###   - se incorpora a diagrama 6
  ###   - RutinaXYZ_Corregir.sh
  ###   - RutinaXYZ_Comprimir.sh
  ### ##############################

# ### val_repl.py Paso 1
# python $HOME/bin/val_repl.py -innd 0 -outnd 255 \
#               -of GTiff -ot Byte \
#               $HOME/Documents/TrabajosExtra/DriveBiotopos/Rasters/Resultados_Kmeans/grupo03MaskSample/grupo03MaskSample_Coord_kmn0007_var08_cluster_gdal.tif \
#               $HOME/Documents/TrabajosExtra/DriveBiotopos/Rasters/Resultados_Kmeans/grupo03MaskSample/grupo03MaskSample_Coord_kmn0007_var08_cluster_gdal_calc.tif

# ### agregar compression Paso 2
# gdal_translate -co "COMPRESS=LZW" -ot Byte -of GTiff -a_nodata 255 \
#               $HOME/Documents/TrabajosExtra/DriveBiotopos/Rasters/Resultados_Kmeans/grupo03MaskSample/grupo03MaskSample_Coord_kmn0007_var08_cluster_gdal_calc.tif \
#               $HOME/Documents/TrabajosExtra/DriveBiotopos/Rasters/Resultados_Kmeans/grupo03MaskSample/grupo03MaskSample_Coord_kmn0007_var08_cluster_gdal_byte.tif

  ### ##############################
  ### Verificar
  ### ##############################

  ### verificar gdalinfo
# gdalinfo -stats ${srcdir}/grupo03MaskSample/DEM_reclass_grupo03.tif

# ### verificar python
# python ValoresUnicos.py $HOME/Documents/TrabajosExtra/DriveBiotopos/Rasters/Resultados_Kmeans/grupo03MaskSample/grupo03MaskSample_Coord_kmn0007_var08_cluster_gdal_byte.tif

# ### verificar todos
# python RasterValoresUnicos.py $HOME/Documents/TrabajosExtra/DriveBiotopos/Rasters/Resultados_Kmeans/grupo01MaskSample/grupo01MaskSample_Coord_kmn0006_var08_cluster_gdal.tif
# python RasterValoresUnicos.py $HOME/Documents/TrabajosExtra/DriveBiotopos/Rasters/Resultados_Kmeans/grupo02MaskSample/grupo02MaskSample_Coord_kmn0010_var08_cluster_gdal.tif
# python RasterValoresUnicos.py $HOME/Documents/TrabajosExtra/DriveBiotopos/Rasters/Resultados_Kmeans/grupo03MaskSample/grupo03MaskSample_Coord_kmn0007_var08_cluster_gdal.tif
# python RasterValoresUnicos.py $HOME/Documents/TrabajosExtra/DriveBiotopos/Rasters/Resultados_Kmeans/grupo04MaskSample/grupo04MaskSample_Coord_kmn0008_var08_cluster_gdal.tif
# python RasterValoresUnicos.py $HOME/Documents/TrabajosExtra/DriveBiotopos/Rasters/Resultados_Kmeans/grupo05MaskSample/grupo05MaskSample_Coord_kmn0008_var08_cluster_gdal.tif
# python RasterValoresUnicos.py $HOME/Documents/TrabajosExtra/DriveBiotopos/Rasters/Resultados_Kmeans/grupo06MaskSample/grupo06MaskSample_Coord_kmn0009_var08_cluster_gdal.tif
