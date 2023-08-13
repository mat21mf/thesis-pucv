  ### Verificar ruta
  if [[ $OSTYPE == "linux-gnu" ]] ; then
    declare -gx rasdir="/home/matbox/Documents/TrabajosExtra/DriveBiotopos/Matias_Rebolledo/Raster/CapasFAU23_5"
  fi
  if [[ $OSTYPE == "cygwin" ]] ; then
    declare -gx rasdir="/cygdrive/d/Matias_Rebolledo/Raster/CapasFAU23_5"
  fi
  echo
  echo ===================
  echo "La ruta actual es"
  echo ${rasdir}
 #echo "  declare -gx rasdir=\"${rasdir}\"" > BatchConcatenacionXYZ.sh
  echo ===================
  echo

  find ${rasdir} -mindepth 1 -type d |
    sed -r 's/(.*)/find \1 -type f -name '\''\*.csv'\'' | sort | grep -v '\''Sample\/grupo'\'' | grep -v '\''Aspect\\|raw'\''/' |
    bash | xargs -n6 -d'\n'   > BatchConcatenacionXYZ.sh
  sed -r -i 's/(.*) (.*)(grupo[0-9]{2}MaskSample)(.*)/time paste -d'\'' '\'' \1 \2\3\4 > \2\3\/\3\.csv/' BatchConcatenacionXYZ.sh
  sed -r -i 's/(.*) > (.*)/\1 | gawk '\''{print \$1,\$2,\$3,\$6,\$9,\$12,\$15,\$18}'\'' > \2/'  BatchConcatenacionXYZ.sh


