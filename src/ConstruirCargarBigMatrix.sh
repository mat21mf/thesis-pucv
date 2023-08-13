  ### Verificar ruta
  if [[ $OSTYPE == "linux-gnu" ]] ; then
    declare -gx rasdir="/home/matbox/Documents/TrabajosExtra/DriveBiotopos/Matias_Rebolledo/Raster/CapasFAU23_5"
    declare -gx srcdir="/home/matbox/Documents/TrabajosExtra/petra_biotopos/src"
    declare -gx bakdir="../bigmatrices"
  fi
  if [[ $OSTYPE == "cygwin" ]] ; then
    declare -gx rasdir="/cygdrive/d/Matias_Rebolledo/Raster/CapasFAU23_5"
    declare -gx srcdir="/cygdrive/d/Matias_Rebolledo/Biotopos/src"
    declare -gx bakdir="../../Raster/bigmatrices"
  fi
  echo
  echo ===================
  echo "La ruta actual es"
  echo ${rasdir}
 #echo "  declare -gx rasdir=\"${rasdir}\"" > CargarBigMatrix.R
  echo ===================
  echo

  echo "  setwd(\"${bakdir}\")"  > CargarBigMatrix.R
  find ${bakdir}             -type f -name 'grupo*.desc' | sort | grep -i 'grupo[0-9][0-9]bm.desc' |
    sed -r 's/(.*)\/(.*)\.(.*)/  if( file.exists( \"\2\.\3\" ) ) file.remove( \"\2\.\3\" )/'    >> CargarBigMatrix.R
  find ${bakdir}             -type f -name 'grupo*.bin' | sort | grep -i 'grupo[0-9][0-9]bm.bin' |
    sed -r 's/(.*)\/(.*)\.(.*)/  if( file.exists( \"\2\.\3\" ) ) file.remove( \"\2\.\3\" )/'    >> CargarBigMatrix.R
  find ${rasdir} -mindepth 2 -type f -name 'grupo*.csv' | sort | grep -i 'grupo[0-9][0-9]bm.csv' |
    sed -r 's/(.*)\/(.*)\.(.*)/  print( system.time( \2 <- bigmemory::read.big.matrix( \"\1\/\2\.\3\" , type = \"double\" , header = TRUE , backingpath = \"\.\" , backingfile = \"\2\.bin\" , descriptorfile = \"\2\.desc\" , shared = TRUE ) ) )/'     >> CargarBigMatrix.R
  echo "  setwd(\"${srcdir}\")" >> CargarBigMatrix.R

