  ### ahora se ejecuta con cygwin gdal 2.4.0 en lucy y no en docker
  ### configuracion de docker avanzada estara pendiente
  if [[ $OSTYPE == "linux-gnu" ]] ; then
    declare -gx rasdir="/home/matbox/Documents/TrabajosExtra/DriveBiotopos/Matias_Rebolledo/Raster/CapasFAU23_5"
  fi
  if [[ $OSTYPE == "cygwin" ]] ; then
    declare -gx rasdir="/cygdrive/d/Matias_Rebolledo/Raster/CapasFAU23_5"
  fi

  ### actualizar grupo00 y grupo04
  gdal_translate -b 1 -of XYZ -co ADD_HEADER_LINE=YES  ${rasdir}/grupo00MaskSample/Asp__x_remuestreado_grupo00_mask.tif  ${rasdir}/grupo00MaskSample/Asp__x_remuestreado_grupo00_mask.csv
  gdal_translate -b 1 -of XYZ -co ADD_HEADER_LINE=YES  ${rasdir}/grupo00MaskSample/Asp__y_remuestreado_grupo00_mask.tif  ${rasdir}/grupo00MaskSample/Asp__y_remuestreado_grupo00_mask.csv
  gdal_translate -b 1 -of XYZ -co ADD_HEADER_LINE=YES  ${rasdir}/grupo00MaskSample/DEM_remuestreado_grupo00_mask.tif     ${rasdir}/grupo00MaskSample/DEM_remuestreado_grupo00_mask.csv
  gdal_translate -b 1 -of XYZ -co ADD_HEADER_LINE=YES  ${rasdir}/grupo00MaskSample/NDMI_remuestreado_grupo00_mask.tif    ${rasdir}/grupo00MaskSample/NDMI_remuestreado_grupo00_mask.csv
  gdal_translate -b 1 -of XYZ -co ADD_HEADER_LINE=YES  ${rasdir}/grupo00MaskSample/Slope_remuestreado_grupo00_mask.tif   ${rasdir}/grupo00MaskSample/Slope_remuestreado_grupo00_mask.csv
  gdal_translate -b 1 -of XYZ -co ADD_HEADER_LINE=YES  ${rasdir}/grupo00MaskSample/TWI_remuestreado_grupo00_mask.tif     ${rasdir}/grupo00MaskSample/TWI_remuestreado_grupo00_mask.csv
 #gdal_translate -b 1 -of XYZ -co ADD_HEADER_LINE=YES  ${rasdir}/grupo01MaskSample/Asp__x_remuestreado_grupo01_mask.tif  ${rasdir}/grupo01MaskSample/Asp__x_remuestreado_grupo01_mask.csv
 #gdal_translate -b 1 -of XYZ -co ADD_HEADER_LINE=YES  ${rasdir}/grupo01MaskSample/Asp__y_remuestreado_grupo01_mask.tif  ${rasdir}/grupo01MaskSample/Asp__y_remuestreado_grupo01_mask.csv
 #gdal_translate -b 1 -of XYZ -co ADD_HEADER_LINE=YES  ${rasdir}/grupo01MaskSample/DEM_remuestreado_grupo01_mask.tif     ${rasdir}/grupo01MaskSample/DEM_remuestreado_grupo01_mask.csv
 #gdal_translate -b 1 -of XYZ -co ADD_HEADER_LINE=YES  ${rasdir}/grupo01MaskSample/NDMI_remuestreado_grupo01_mask.tif    ${rasdir}/grupo01MaskSample/NDMI_remuestreado_grupo01_mask.csv
 #gdal_translate -b 1 -of XYZ -co ADD_HEADER_LINE=YES  ${rasdir}/grupo01MaskSample/Slope_remuestreado_grupo01_mask.tif   ${rasdir}/grupo01MaskSample/Slope_remuestreado_grupo01_mask.csv
 #gdal_translate -b 1 -of XYZ -co ADD_HEADER_LINE=YES  ${rasdir}/grupo01MaskSample/TWI_remuestreado_grupo01_mask.tif     ${rasdir}/grupo01MaskSample/TWI_remuestreado_grupo01_mask.csv
 #gdal_translate -b 1 -of XYZ -co ADD_HEADER_LINE=YES  ${rasdir}/grupo02MaskSample/Asp__x_remuestreado_grupo02_mask.tif  ${rasdir}/grupo02MaskSample/Asp__x_remuestreado_grupo02_mask.csv
 #gdal_translate -b 1 -of XYZ -co ADD_HEADER_LINE=YES  ${rasdir}/grupo02MaskSample/Asp__y_remuestreado_grupo02_mask.tif  ${rasdir}/grupo02MaskSample/Asp__y_remuestreado_grupo02_mask.csv
 #gdal_translate -b 1 -of XYZ -co ADD_HEADER_LINE=YES  ${rasdir}/grupo02MaskSample/DEM_remuestreado_grupo02_mask.tif     ${rasdir}/grupo02MaskSample/DEM_remuestreado_grupo02_mask.csv
 #gdal_translate -b 1 -of XYZ -co ADD_HEADER_LINE=YES  ${rasdir}/grupo02MaskSample/NDMI_remuestreado_grupo02_mask.tif    ${rasdir}/grupo02MaskSample/NDMI_remuestreado_grupo02_mask.csv
 #gdal_translate -b 1 -of XYZ -co ADD_HEADER_LINE=YES  ${rasdir}/grupo02MaskSample/Slope_remuestreado_grupo02_mask.tif   ${rasdir}/grupo02MaskSample/Slope_remuestreado_grupo02_mask.csv
 #gdal_translate -b 1 -of XYZ -co ADD_HEADER_LINE=YES  ${rasdir}/grupo02MaskSample/TWI_remuestreado_grupo02_mask.tif     ${rasdir}/grupo02MaskSample/TWI_remuestreado_grupo02_mask.csv
 #gdal_translate -b 1 -of XYZ -co ADD_HEADER_LINE=YES  ${rasdir}/grupo03MaskSample/Asp__x_remuestreado_grupo03_mask.tif  ${rasdir}/grupo03MaskSample/Asp__x_remuestreado_grupo03_mask.csv
 #gdal_translate -b 1 -of XYZ -co ADD_HEADER_LINE=YES  ${rasdir}/grupo03MaskSample/Asp__y_remuestreado_grupo03_mask.tif  ${rasdir}/grupo03MaskSample/Asp__y_remuestreado_grupo03_mask.csv
 #gdal_translate -b 1 -of XYZ -co ADD_HEADER_LINE=YES  ${rasdir}/grupo03MaskSample/DEM_remuestreado_grupo03_mask.tif     ${rasdir}/grupo03MaskSample/DEM_remuestreado_grupo03_mask.csv
 #gdal_translate -b 1 -of XYZ -co ADD_HEADER_LINE=YES  ${rasdir}/grupo03MaskSample/NDMI_remuestreado_grupo03_mask.tif    ${rasdir}/grupo03MaskSample/NDMI_remuestreado_grupo03_mask.csv
 #gdal_translate -b 1 -of XYZ -co ADD_HEADER_LINE=YES  ${rasdir}/grupo03MaskSample/Slope_remuestreado_grupo03_mask.tif   ${rasdir}/grupo03MaskSample/Slope_remuestreado_grupo03_mask.csv
 #gdal_translate -b 1 -of XYZ -co ADD_HEADER_LINE=YES  ${rasdir}/grupo03MaskSample/TWI_remuestreado_grupo03_mask.tif     ${rasdir}/grupo03MaskSample/TWI_remuestreado_grupo03_mask.csv
  gdal_translate -b 1 -of XYZ -co ADD_HEADER_LINE=YES  ${rasdir}/grupo04MaskSample/Asp__x_remuestreado_grupo04_mask.tif  ${rasdir}/grupo04MaskSample/Asp__x_remuestreado_grupo04_mask.csv
  gdal_translate -b 1 -of XYZ -co ADD_HEADER_LINE=YES  ${rasdir}/grupo04MaskSample/Asp__y_remuestreado_grupo04_mask.tif  ${rasdir}/grupo04MaskSample/Asp__y_remuestreado_grupo04_mask.csv
  gdal_translate -b 1 -of XYZ -co ADD_HEADER_LINE=YES  ${rasdir}/grupo04MaskSample/DEM_remuestreado_grupo04_mask.tif     ${rasdir}/grupo04MaskSample/DEM_remuestreado_grupo04_mask.csv
  gdal_translate -b 1 -of XYZ -co ADD_HEADER_LINE=YES  ${rasdir}/grupo04MaskSample/NDMI_remuestreado_grupo04_mask.tif    ${rasdir}/grupo04MaskSample/NDMI_remuestreado_grupo04_mask.csv
  gdal_translate -b 1 -of XYZ -co ADD_HEADER_LINE=YES  ${rasdir}/grupo04MaskSample/Slope_remuestreado_grupo04_mask.tif   ${rasdir}/grupo04MaskSample/Slope_remuestreado_grupo04_mask.csv
  gdal_translate -b 1 -of XYZ -co ADD_HEADER_LINE=YES  ${rasdir}/grupo04MaskSample/TWI_remuestreado_grupo04_mask.tif     ${rasdir}/grupo04MaskSample/TWI_remuestreado_grupo04_mask.csv
 #gdal_translate -b 1 -of XYZ -co ADD_HEADER_LINE=YES  ${rasdir}/grupo05MaskSample/Asp__x_remuestreado_grupo05_mask.tif  ${rasdir}/grupo05MaskSample/Asp__x_remuestreado_grupo05_mask.csv
 #gdal_translate -b 1 -of XYZ -co ADD_HEADER_LINE=YES  ${rasdir}/grupo05MaskSample/Asp__y_remuestreado_grupo05_mask.tif  ${rasdir}/grupo05MaskSample/Asp__y_remuestreado_grupo05_mask.csv
 #gdal_translate -b 1 -of XYZ -co ADD_HEADER_LINE=YES  ${rasdir}/grupo05MaskSample/DEM_remuestreado_grupo05_mask.tif     ${rasdir}/grupo05MaskSample/DEM_remuestreado_grupo05_mask.csv
 #gdal_translate -b 1 -of XYZ -co ADD_HEADER_LINE=YES  ${rasdir}/grupo05MaskSample/NDMI_remuestreado_grupo05_mask.tif    ${rasdir}/grupo05MaskSample/NDMI_remuestreado_grupo05_mask.csv
 #gdal_translate -b 1 -of XYZ -co ADD_HEADER_LINE=YES  ${rasdir}/grupo05MaskSample/Slope_remuestreado_grupo05_mask.tif   ${rasdir}/grupo05MaskSample/Slope_remuestreado_grupo05_mask.csv
 #gdal_translate -b 1 -of XYZ -co ADD_HEADER_LINE=YES  ${rasdir}/grupo05MaskSample/TWI_remuestreado_grupo05_mask.tif     ${rasdir}/grupo05MaskSample/TWI_remuestreado_grupo05_mask.csv
 #gdal_translate -b 1 -of XYZ -co ADD_HEADER_LINE=YES  ${rasdir}/grupo06MaskSample/Asp__x_remuestreado_grupo06_mask.tif  ${rasdir}/grupo06MaskSample/Asp__x_remuestreado_grupo06_mask.csv
 #gdal_translate -b 1 -of XYZ -co ADD_HEADER_LINE=YES  ${rasdir}/grupo06MaskSample/Asp__y_remuestreado_grupo06_mask.tif  ${rasdir}/grupo06MaskSample/Asp__y_remuestreado_grupo06_mask.csv
 #gdal_translate -b 1 -of XYZ -co ADD_HEADER_LINE=YES  ${rasdir}/grupo06MaskSample/DEM_remuestreado_grupo06_mask.tif     ${rasdir}/grupo06MaskSample/DEM_remuestreado_grupo06_mask.csv
 #gdal_translate -b 1 -of XYZ -co ADD_HEADER_LINE=YES  ${rasdir}/grupo06MaskSample/NDMI_remuestreado_grupo06_mask.tif    ${rasdir}/grupo06MaskSample/NDMI_remuestreado_grupo06_mask.csv
 #gdal_translate -b 1 -of XYZ -co ADD_HEADER_LINE=YES  ${rasdir}/grupo06MaskSample/Slope_remuestreado_grupo06_mask.tif   ${rasdir}/grupo06MaskSample/Slope_remuestreado_grupo06_mask.csv
 #gdal_translate -b 1 -of XYZ -co ADD_HEADER_LINE=YES  ${rasdir}/grupo06MaskSample/TWI_remuestreado_grupo06_mask.tif     ${rasdir}/grupo06MaskSample/TWI_remuestreado_grupo06_mask.csv
