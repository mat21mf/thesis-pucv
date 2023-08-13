  ### Verificar ruta
  if [[ -d "/home/matbox/Documents/TrabajosExtra/DriveBiotopos/Matias_Rebolledo/Raster/CapasFAU23_5" ]] ; then
     ### Linux
     declare -gx rasdir="/home/matbox/Documents/TrabajosExtra/DriveBiotopos/Matias_Rebolledo/Raster/CapasFAU23_5"
  else
     ### Docker en windows
     declare -gx rasdir="/home/rstudio/Documents/Biotopos/CapasFAU23_5"
  fi
  echo ===================
  echo "La ruta actual es"
  echo ${rasdir}
 #echo "  declare -gx rasdir=\"${rasdir}\"" > BatchConversionXYZ.sh
  echo ===================

  find ${rasdir} -mindepth 2 -type f -name '*.tif' | sort | grep 'MaskSample' | grep -v 'Aspect' |
    sed -r 's/(.*)\/(.*)\/(.*)\.(.*)/  gdal_translate -b 1 -of XYZ -co ADD_HEADER_LINE=YES \1\/\2\/\3\.\4 \1\/\2\/\3\.csv/' > BatchConversionXYZ.sh
