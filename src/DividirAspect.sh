  ### Verificar ruta
  if [[ $OSTYPE == "linux-gnu" ]] ; then
     ### Linux
     declare -gx rasdir="/home/matbox/Documents/TrabajosExtra/DriveBiotopos/Matias_Rebolledo/Raster/CapasFAU23_5"
  fi
  if [[ $OSTYPE == "cygwin" ]] ; then
     ### Docker en windows
     declare -gx rasdir="/cygdrive/d/Matias_Rebolledo/Raster/CapasFAU23_5"
  fi
  echo ===================
  echo "El sistema operativo es"
  echo $OSTYPE
  echo "La ruta actual es"
  echo ${rasdir}
  echo ===================

# # ### Ejemplo
# # gdal_calc.py -A aspect.tif --calc "cos(radians(A))" --format "GTiff" --outfile cos_aspect.tif
# # gdal_calc.py -A aspect.tif --calc "sin(radians(A))" --format "GTiff" --outfile sin_aspect.tif

 #### Eje x este oeste easterness: sin(aspect)
  gdal_calc.py -A ${rasdir}/grupo00MaskSample/Aspect_remuestreado_grupo00_mask.tif --calc "sin(radians(A))" --format "GTiff" --outfile ${rasdir}/grupo00MaskSample/Asp__x_remuestreado_grupo00_mask.tif
 #gdal_calc.py -A ${rasdir}/grupo01MaskSample/Aspect_remuestreado_grupo01_mask.tif --calc "sin(radians(A))" --format "GTiff" --outfile ${rasdir}/grupo01MaskSample/Asp__x_remuestreado_grupo01_mask.tif
 #gdal_calc.py -A ${rasdir}/grupo02MaskSample/Aspect_remuestreado_grupo02_mask.tif --calc "sin(radians(A))" --format "GTiff" --outfile ${rasdir}/grupo02MaskSample/Asp__x_remuestreado_grupo02_mask.tif
 #gdal_calc.py -A ${rasdir}/grupo03MaskSample/Aspect_remuestreado_grupo03_mask.tif --calc "sin(radians(A))" --format "GTiff" --outfile ${rasdir}/grupo03MaskSample/Asp__x_remuestreado_grupo03_mask.tif
  gdal_calc.py -A ${rasdir}/grupo04MaskSample/Aspect_remuestreado_grupo04_mask.tif --calc "sin(radians(A))" --format "GTiff" --outfile ${rasdir}/grupo04MaskSample/Asp__x_remuestreado_grupo04_mask.tif
 #gdal_calc.py -A ${rasdir}/grupo05MaskSample/Aspect_remuestreado_grupo05_mask.tif --calc "sin(radians(A))" --format "GTiff" --outfile ${rasdir}/grupo05MaskSample/Asp__x_remuestreado_grupo05_mask.tif
 #gdal_calc.py -A ${rasdir}/grupo06MaskSample/Aspect_remuestreado_grupo06_mask.tif --calc "sin(radians(A))" --format "GTiff" --outfile ${rasdir}/grupo06MaskSample/Asp__x_remuestreado_grupo06_mask.tif

 #### Eje y norte sur northerness: cos(aspect)
  gdal_calc.py -A ${rasdir}/grupo00MaskSample/Aspect_remuestreado_grupo00_mask.tif --calc "cos(radians(A))" --format "GTiff" --outfile ${rasdir}/grupo00MaskSample/Asp__y_remuestreado_grupo00_mask.tif
 #gdal_calc.py -A ${rasdir}/grupo01MaskSample/Aspect_remuestreado_grupo01_mask.tif --calc "cos(radians(A))" --format "GTiff" --outfile ${rasdir}/grupo01MaskSample/Asp__y_remuestreado_grupo01_mask.tif
 #gdal_calc.py -A ${rasdir}/grupo02MaskSample/Aspect_remuestreado_grupo02_mask.tif --calc "cos(radians(A))" --format "GTiff" --outfile ${rasdir}/grupo02MaskSample/Asp__y_remuestreado_grupo02_mask.tif
 #gdal_calc.py -A ${rasdir}/grupo03MaskSample/Aspect_remuestreado_grupo03_mask.tif --calc "cos(radians(A))" --format "GTiff" --outfile ${rasdir}/grupo03MaskSample/Asp__y_remuestreado_grupo03_mask.tif
  gdal_calc.py -A ${rasdir}/grupo04MaskSample/Aspect_remuestreado_grupo04_mask.tif --calc "cos(radians(A))" --format "GTiff" --outfile ${rasdir}/grupo04MaskSample/Asp__y_remuestreado_grupo04_mask.tif
 #gdal_calc.py -A ${rasdir}/grupo05MaskSample/Aspect_remuestreado_grupo05_mask.tif --calc "cos(radians(A))" --format "GTiff" --outfile ${rasdir}/grupo05MaskSample/Asp__y_remuestreado_grupo05_mask.tif
 #gdal_calc.py -A ${rasdir}/grupo06MaskSample/Aspect_remuestreado_grupo06_mask.tif --calc "cos(radians(A))" --format "GTiff" --outfile ${rasdir}/grupo06MaskSample/Asp__y_remuestreado_grupo06_mask.tif

# ### Convertir a netcdf Eje x este oeste easterness: sin(aspect)
# gdal_translate -a_srs "EPSG:32719" -of "netCDF" ${rasdir}/grupo00MaskSample/Asp__x_remuestreado_grupo00_mask.tif ${rasdir}/grupo00MaskSample/Asp__x_remuestreado_grupo00_mask.nc
# gdal_translate -a_srs "EPSG:32719" -of "netCDF" ${rasdir}/grupo01MaskSample/Asp__x_remuestreado_grupo01_mask.tif ${rasdir}/grupo01MaskSample/Asp__x_remuestreado_grupo01_mask.nc
# gdal_translate -a_srs "EPSG:32719" -of "netCDF" ${rasdir}/grupo02MaskSample/Asp__x_remuestreado_grupo02_mask.tif ${rasdir}/grupo02MaskSample/Asp__x_remuestreado_grupo02_mask.nc
# gdal_translate -a_srs "EPSG:32719" -of "netCDF" ${rasdir}/grupo03MaskSample/Asp__x_remuestreado_grupo03_mask.tif ${rasdir}/grupo03MaskSample/Asp__x_remuestreado_grupo03_mask.nc
# gdal_translate -a_srs "EPSG:32719" -of "netCDF" ${rasdir}/grupo04MaskSample/Asp__x_remuestreado_grupo04_mask.tif ${rasdir}/grupo04MaskSample/Asp__x_remuestreado_grupo04_mask.nc
# gdal_translate -a_srs "EPSG:32719" -of "netCDF" ${rasdir}/grupo05MaskSample/Asp__x_remuestreado_grupo05_mask.tif ${rasdir}/grupo05MaskSample/Asp__x_remuestreado_grupo05_mask.nc
# gdal_translate -a_srs "EPSG:32719" -of "netCDF" ${rasdir}/grupo06MaskSample/Asp__x_remuestreado_grupo06_mask.tif ${rasdir}/grupo06MaskSample/Asp__x_remuestreado_grupo06_mask.nc

# ### Convertir a netcdf Eje y norte sur northerness: cos(aspect)
# gdal_translate -a_srs "EPSG:32719" -of "netCDF" ${rasdir}/grupo00MaskSample/Asp__y_remuestreado_grupo00_mask.tif ${rasdir}/grupo00MaskSample/Asp__y_remuestreado_grupo00_mask.nc
# gdal_translate -a_srs "EPSG:32719" -of "netCDF" ${rasdir}/grupo01MaskSample/Asp__y_remuestreado_grupo01_mask.tif ${rasdir}/grupo01MaskSample/Asp__y_remuestreado_grupo01_mask.nc
# gdal_translate -a_srs "EPSG:32719" -of "netCDF" ${rasdir}/grupo02MaskSample/Asp__y_remuestreado_grupo02_mask.tif ${rasdir}/grupo02MaskSample/Asp__y_remuestreado_grupo02_mask.nc
# gdal_translate -a_srs "EPSG:32719" -of "netCDF" ${rasdir}/grupo03MaskSample/Asp__y_remuestreado_grupo03_mask.tif ${rasdir}/grupo03MaskSample/Asp__y_remuestreado_grupo03_mask.nc
# gdal_translate -a_srs "EPSG:32719" -of "netCDF" ${rasdir}/grupo04MaskSample/Asp__y_remuestreado_grupo04_mask.tif ${rasdir}/grupo04MaskSample/Asp__y_remuestreado_grupo04_mask.nc
# gdal_translate -a_srs "EPSG:32719" -of "netCDF" ${rasdir}/grupo05MaskSample/Asp__y_remuestreado_grupo05_mask.tif ${rasdir}/grupo05MaskSample/Asp__y_remuestreado_grupo05_mask.nc
# gdal_translate -a_srs "EPSG:32719" -of "netCDF" ${rasdir}/grupo06MaskSample/Asp__y_remuestreado_grupo06_mask.tif ${rasdir}/grupo06MaskSample/Asp__y_remuestreado_grupo06_mask.nc

 #### Convertir a csv Eje x este oeste easterness: sin(aspect)
# gdal_translate -b 1 -of XYZ -co ADD_HEADER_LINE=YES -a_nodata 1.17549435082228751e-38 ${rasdir}/grupo00MaskSample/Asp__x_remuestreado_grupo00_mask.tif ${rasdir}/grupo00MaskSample/Asp__x_remuestreado_grupo00_mask.csv
 #gdal_translate -b 1 -of XYZ -co ADD_HEADER_LINE=YES -a_nodata 1.17549435082228751e-38 ${rasdir}/grupo01MaskSample/Asp__x_remuestreado_grupo01_mask.tif ${rasdir}/grupo01MaskSample/Asp__x_remuestreado_grupo01_mask.csv
 #gdal_translate -b 1 -of XYZ -co ADD_HEADER_LINE=YES -a_nodata 1.17549435082228751e-38 ${rasdir}/grupo02MaskSample/Asp__x_remuestreado_grupo02_mask.tif ${rasdir}/grupo02MaskSample/Asp__x_remuestreado_grupo02_mask.csv
 #gdal_translate -b 1 -of XYZ -co ADD_HEADER_LINE=YES -a_nodata 1.17549435082228751e-38 ${rasdir}/grupo03MaskSample/Asp__x_remuestreado_grupo03_mask.tif ${rasdir}/grupo03MaskSample/Asp__x_remuestreado_grupo03_mask.csv
# gdal_translate -b 1 -of XYZ -co ADD_HEADER_LINE=YES -a_nodata 1.17549435082228751e-38 ${rasdir}/grupo04MaskSample/Asp__x_remuestreado_grupo04_mask.tif ${rasdir}/grupo04MaskSample/Asp__x_remuestreado_grupo04_mask.csv
 #gdal_translate -b 1 -of XYZ -co ADD_HEADER_LINE=YES -a_nodata 1.17549435082228751e-38 ${rasdir}/grupo05MaskSample/Asp__x_remuestreado_grupo05_mask.tif ${rasdir}/grupo05MaskSample/Asp__x_remuestreado_grupo05_mask.csv
 #gdal_translate -b 1 -of XYZ -co ADD_HEADER_LINE=YES -a_nodata 1.17549435082228751e-38 ${rasdir}/grupo06MaskSample/Asp__x_remuestreado_grupo06_mask.tif ${rasdir}/grupo06MaskSample/Asp__x_remuestreado_grupo06_mask.csv

 #### Convertir a csv Eje y norte sur northerness: cos(aspect)
# gdal_translate -b 1 -of XYZ -co ADD_HEADER_LINE=YES -a_nodata 1.17549435082228751e-38 ${rasdir}/grupo00MaskSample/Asp__y_remuestreado_grupo00_mask.tif ${rasdir}/grupo00MaskSample/Asp__y_remuestreado_grupo00_mask.csv
 #gdal_translate -b 1 -of XYZ -co ADD_HEADER_LINE=YES -a_nodata 1.17549435082228751e-38 ${rasdir}/grupo01MaskSample/Asp__y_remuestreado_grupo01_mask.tif ${rasdir}/grupo01MaskSample/Asp__y_remuestreado_grupo01_mask.csv
 #gdal_translate -b 1 -of XYZ -co ADD_HEADER_LINE=YES -a_nodata 1.17549435082228751e-38 ${rasdir}/grupo02MaskSample/Asp__y_remuestreado_grupo02_mask.tif ${rasdir}/grupo02MaskSample/Asp__y_remuestreado_grupo02_mask.csv
 #gdal_translate -b 1 -of XYZ -co ADD_HEADER_LINE=YES -a_nodata 1.17549435082228751e-38 ${rasdir}/grupo03MaskSample/Asp__y_remuestreado_grupo03_mask.tif ${rasdir}/grupo03MaskSample/Asp__y_remuestreado_grupo03_mask.csv
# gdal_translate -b 1 -of XYZ -co ADD_HEADER_LINE=YES -a_nodata 1.17549435082228751e-38 ${rasdir}/grupo04MaskSample/Asp__y_remuestreado_grupo04_mask.tif ${rasdir}/grupo04MaskSample/Asp__y_remuestreado_grupo04_mask.csv
 #gdal_translate -b 1 -of XYZ -co ADD_HEADER_LINE=YES -a_nodata 1.17549435082228751e-38 ${rasdir}/grupo05MaskSample/Asp__y_remuestreado_grupo05_mask.tif ${rasdir}/grupo05MaskSample/Asp__y_remuestreado_grupo05_mask.csv
 #gdal_translate -b 1 -of XYZ -co ADD_HEADER_LINE=YES -a_nodata 1.17549435082228751e-38 ${rasdir}/grupo06MaskSample/Asp__y_remuestreado_grupo06_mask.tif ${rasdir}/grupo06MaskSample/Asp__y_remuestreado_grupo06_mask.csv

# ### Exportar csv grupo03
# gdal_translate -b 1 -of XYZ -co ADD_HEADER_LINE=YES -a_nodata 1.17549435082228751e-38 ${rasdir}/grupo03MaskSample/DEM_remuestreado_grupo03_mask.tif   ${rasdir}/grupo03MaskSample/DEM_remuestreado_grupo03_mask.csv
# gdal_translate -b 1 -of XYZ -co ADD_HEADER_LINE=YES -a_nodata 1.17549435082228751e-38 ${rasdir}/grupo03MaskSample/NDMI_remuestreado_grupo03_mask.tif  ${rasdir}/grupo03MaskSample/NDMI_remuestreado_grupo03_mask.csv
# gdal_translate -b 1 -of XYZ -co ADD_HEADER_LINE=YES -a_nodata 1.17549435082228751e-38 ${rasdir}/grupo03MaskSample/Slope_remuestreado_grupo03_mask.tif ${rasdir}/grupo03MaskSample/Slope_remuestreado_grupo03_mask.csv
# gdal_translate -b 1 -of XYZ -co ADD_HEADER_LINE=YES -a_nodata 1.17549435082228751e-38 ${rasdir}/grupo03MaskSample/TWI_remuestreado_grupo03_mask.tif   ${rasdir}/grupo03MaskSample/TWI_remuestreado_grupo03_mask.csv

# ### Combinar archivos
# paste -d' '                \
#   ${rasdir}/grupo03MaskSample/Asp__x_remuestreado_grupo03_mask.csv \
#   ${rasdir}/grupo03MaskSample/Asp__y_remuestreado_grupo03_mask.csv \
#   ${rasdir}/grupo03MaskSample/DEM_remuestreado_grupo03_mask.csv \
#   ${rasdir}/grupo03MaskSample/NDMI_remuestreado_grupo03_mask.csv \
#   ${rasdir}/grupo03MaskSample/Slope_remuestreado_grupo03_mask.csv \
#   ${rasdir}/grupo03MaskSample/TWI_remuestreado_grupo03_mask.csv |
# gawk '{print $1,$2,$3,$6,$9,$12,$15,$18}' \
# > ${rasdir}/grupo03MaskSample/var_raw_grupo03.csv
