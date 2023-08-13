  ### generar codigo para invertir proceso XYZ
  ### desde bigmemory hacia raster
  ### seleccionadas solo 7 valores de k por cada grupo

  ### variables
  declare -gx tmpvar="var07"
  declare -gx tmpsel="kmn0004\|kmn0005\|kmn0006\|kmn0007\|kmn0008\|kmn0009\|kmn0010"

  ### listar big.matrix desc
  declare -gx strlis="
  find -type f -name 'ProcesoBig*' -exec gawk '/'\"\${tmpvar}\"'_cluster\.desc/' {} \; \
    | sort -t'_' -k3,3 -n \
    | grep -i \"\${tmpsel}\" \
    | grep -i 'bigmemory::big.matrix' \
    | gawk -F',' '{print \$7}' \
    | gawk '{sub(/ descriptorfile=\"/ , \"\" , \$0 ) ; sub(/\" \)/ , \"\" , \$0) ; print}'
  "

  ### longitud lista
  declare -gx strwcl="
  bash -c \"\${strlis}\" | wc -l
  "

  ### cargar libreria y ruta
  declare -gx strlod="
  seq \$(bash -c \"\${strwcl}\") | xargs -I -- echo \"library( bigmemory ) ; if( !file.exists( \\\"../bigcsv/\\\" ) ) system( \\\"mkdir ../bigcsv/\\\" ) ; source( \\\"DefinirVariables.R\\\" ) ; setwd( bakdir )\"
  "

  ### regresar ruta
  declare -gx strbdr="
  seq \$(bash -c \"\${strwcl}\") | xargs -I -- echo \"setwd( srcdir )\"
  "

  ### generar dget
  declare -gx strdgt="
  bash -c \"\${strlis}\" \
    | gawk '{print \$0\" <- bigmemory::attach.big.matrix( dget( \\\"\"\$0\"\\\" ) )\"}' \
    | gawk '{sub( /\.desc/ , \"\" , \$0 ) ; print}'
  "

  ### generar write.table
  declare -gx strwrt="
  bash -c \"\${strlis}\" \
    | gawk '{print \"write.table( \"\$0\"[,] , file=\\\"../bigcsv/\"\$0\"\\\" , sep=\\\",\\\" , col.names=F , row.names=F , quote=F ) ; gc()\"}' \
    | gawk '{sub( /\.desc/ , \"\" , \$0 ) ; sub( /\.desc/ , \".csv\" , \$0 ) ; print}'
  "

# ### testear lista
# bash -c "${strlis}"

# ### testear flujo
# bash -c "${strlod}"
# echo ;
# bash -c "${strdgt}"
# echo ;
# bash -c "${strbdr}"
# echo ;
# bash -c "${strwrt}"

# ### declarar escribir flujo serial
# declare -gx strser="
# ( bash -c \"\${strlod}\" ;
#   echo ;
#   bash -c \"\${strdgt}\" ;
#   echo ;
#   bash -c \"\${strbdr}\" ;
#   echo ;
#   bash -c \"\${strwrt}\" ) \
# "

  ### declarar escribir flujo paralelo pendiente
  declare -gx strpar="
  paste -d';' \
    <( bash -c \"\${strlod}\" ) \
    <( bash -c \"\${strdgt}\" ) \
    <( bash -c \"\${strbdr}\" ) \
    <( bash -c \"\${strwrt}\" )
  "

  ### generar var08
  declare -gx strv08="
  bash -c \"\${strpar}\" \
    | sed -r 's/var07/var08/g'
  "

  ### ejecutar escribir flujo
  bash -c "${strpar}" >  RutinaXYZ_Exportar.sh
  ### ejecutar escribir flujo
  bash -c "${strv08}" >> RutinaXYZ_Exportar.sh
  ### pendiente post edicion
  sed -r -i 's/"/\\"/g'            RutinaXYZ_Exportar.sh
  sed -r -i 's/^/R --slave -e "/'  RutinaXYZ_Exportar.sh
  sed -r -i 's/$/"/'               RutinaXYZ_Exportar.sh
