  ### rutas
  if [[ $OSTYPE == "linux-gnu" ]] ; then
    declare -gx rasdir="/home/matbox/Documents/TrabajosExtra/DriveBiotopos/Matias_Rebolledo/Raster/CapasFAU23_5"
  fi
  if [[ $OSTYPE == "cygwin" ]] ; then
    declare -gx rasdir="/cygdrive/d/Matias_Rebolledo/Raster/CapasFAU23_5"
  fi

# ### version obsoleta
# time gawk 'BEGIN{FS=" ";OFS=","} NR==1 {print "Asp__x","Asp__y","DEM","NDMI","Slope","TWI"} NR>1 {gsub( /1.17549435082228751e-38/ , "NA" ); gsub( /-3.4028234663852886e\+38/ , "NA" ); print $3,$4,$5,$6,$7,$8}' ${rasdir}/grupo01MaskSample/grupo01MaskSample.csv > ${rasdir}/grupo01MaskSample/grupo01BigMat.csv
# time gawk 'BEGIN{FS=" ";OFS=","} NR==1 {print "Asp__x","Asp__y","DEM","NDMI","Slope","TWI"} NR>1 {gsub( /1.17549435082228751e-38/ , "NA" ); gsub( /-3.4028234663852886e\+38/ , "NA" ); print $3,$4,$5,$6,$7,$8}' ${rasdir}/grupo02MaskSample/grupo02MaskSample.csv > ${rasdir}/grupo02MaskSample/grupo02BigMat.csv
# time gawk 'BEGIN{FS=" ";OFS=","} NR==1 {print "Asp__x","Asp__y","DEM","NDMI","Slope","TWI"} NR>1 {gsub( /1.17549435082228751e-38/ , "NA" ); gsub( /-3.4028234663852886e\+38/ , "NA" ); print $3,$4,$5,$6,$7,$8}' ${rasdir}/grupo03MaskSample/grupo03MaskSample.csv > ${rasdir}/grupo03MaskSample/grupo03BigMat.csv
# time gawk 'BEGIN{FS=" ";OFS=","} NR==1 {print "Asp__x","Asp__y","DEM","NDMI","Slope","TWI"} NR>1 {gsub( /1.17549435082228751e-38/ , "NA" ); gsub( /-3.4028234663852886e\+38/ , "NA" ); print $3,$4,$5,$6,$7,$8}' ${rasdir}/grupo04MaskSample/grupo04MaskSample.csv > ${rasdir}/grupo04MaskSample/grupo04BigMat.csv
# time gawk 'BEGIN{FS=" ";OFS=","} NR==1 {print "Asp__x","Asp__y","DEM","NDMI","Slope","TWI"} NR>1 {gsub( /1.17549435082228751e-38/ , "NA" ); gsub( /-3.4028234663852886e\+38/ , "NA" ); print $3,$4,$5,$6,$7,$8}' ${rasdir}/grupo05MaskSample/grupo05MaskSample.csv > ${rasdir}/grupo05MaskSample/grupo05BigMat.csv
# time gawk 'BEGIN{FS=" ";OFS=","} NR==1 {print "Asp__x","Asp__y","DEM","NDMI","Slope","TWI"} NR>1 {gsub( /1.17549435082228751e-38/ , "NA" ); gsub( /-3.4028234663852886e\+38/ , "NA" ); print $3,$4,$5,$6,$7,$8}' ${rasdir}/grupo06MaskSample/grupo06MaskSample.csv > ${rasdir}/grupo06MaskSample/grupo06BigMat.csv
# time gawk 'BEGIN{FS=" ";OFS=","} NR==1 {print "Asp__x","Asp__y","DEM","NDMI","Slope","TWI"} NR>1 {gsub( /1.17549435082228751e-38/ , "NA" ); gsub( /-3.4028234663852886e\+38/ , "NA" ); print $3,$4,$5,$6,$7,$8}' ${rasdir}/grupo00MaskSample/grupo00MaskSample.csv > ${rasdir}/grupo00MaskSample/grupo00BigMat.csv

  ### version nueva elimina los NA. Editar en CargarBigMatrix.R
 #time gawk 'BEGIN{FS=" ";OFS=","} NR==1 {print "Asp__x","Asp__y","DEM","NDMI","Slope","TWI"} NR>1 && !/1.17549435082228751e-38/ && !/-3.4028234663852886e\+38/ {print $3,$4,$5,$6,$7,$8}' ${rasdir}/grupo01MaskSample/grupo01MaskSample.csv > ${rasdir}/grupo01MaskSample/grupo01bm.csv
 #time gawk 'BEGIN{FS=" ";OFS=","} NR==1 {print "Asp__x","Asp__y","DEM","NDMI","Slope","TWI"} NR>1 && !/1.17549435082228751e-38/ && !/-3.4028234663852886e\+38/ {print $3,$4,$5,$6,$7,$8}' ${rasdir}/grupo02MaskSample/grupo02MaskSample.csv > ${rasdir}/grupo02MaskSample/grupo02bm.csv
 #time gawk 'BEGIN{FS=" ";OFS=","} NR==1 {print "Asp__x","Asp__y","DEM","NDMI","Slope","TWI"} NR>1 && !/1.17549435082228751e-38/ && !/-3.4028234663852886e\+38/ {print $3,$4,$5,$6,$7,$8}' ${rasdir}/grupo03MaskSample/grupo03MaskSample.csv > ${rasdir}/grupo03MaskSample/grupo03bm.csv
  time gawk 'BEGIN{FS=" ";OFS=","} NR==1 {print "Asp__x","Asp__y","DEM","NDMI","Slope","TWI"} NR>1 && !/1.17549435082228751e-38/ && !/-3.4028234663852886e\+38/ {print $3,$4,$5,$6,$7,$8}' ${rasdir}/grupo04MaskSample/grupo04MaskSample.csv > ${rasdir}/grupo04MaskSample/grupo04bm.csv
 #time gawk 'BEGIN{FS=" ";OFS=","} NR==1 {print "Asp__x","Asp__y","DEM","NDMI","Slope","TWI"} NR>1 && !/1.17549435082228751e-38/ && !/-3.4028234663852886e\+38/ {print $3,$4,$5,$6,$7,$8}' ${rasdir}/grupo05MaskSample/grupo05MaskSample.csv > ${rasdir}/grupo05MaskSample/grupo05bm.csv
 #time gawk 'BEGIN{FS=" ";OFS=","} NR==1 {print "Asp__x","Asp__y","DEM","NDMI","Slope","TWI"} NR>1 && !/1.17549435082228751e-38/ && !/-3.4028234663852886e\+38/ {print $3,$4,$5,$6,$7,$8}' ${rasdir}/grupo06MaskSample/grupo06MaskSample.csv > ${rasdir}/grupo06MaskSample/grupo06bm.csv
  time gawk 'BEGIN{FS=" ";OFS=","} NR==1 {print "Asp__x","Asp__y","DEM","NDMI","Slope","TWI"} NR>1 && !/1.17549435082228751e-38/ && !/-3.4028234663852886e\+38/ {print $3,$4,$5,$6,$7,$8}' ${rasdir}/grupo00MaskSample/grupo00MaskSample.csv > ${rasdir}/grupo00MaskSample/grupo00bm.csv
