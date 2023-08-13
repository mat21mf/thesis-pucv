  ### rutas
  if [[ $OSTYPE == "linux-gnu" ]] ; then
    declare -gx rasdir="/home/matbox/Documents/TrabajosExtra/DriveBiotopos/Matias_Rebolledo/Raster/CapasFAU23_5"
  fi
  if [[ $OSTYPE == "cygwin" ]] ; then
    declare -gx rasdir="/cygdrive/d/Matias_Rebolledo/Raster/CapasFAU23_5"
  fi

  ### generar vectores columna con valor cluster sin coordenadas (49 archivos)
  declare -gx strr07="
  gawk 'BEGIN{FS=\",\"} /\.csv/ {print \$3}' RutinaXYZ_Exportar.sh \
    | grep 'var07' \
    | gawk '{sub( / file=\\\\\"/ , \"\" , \$0 ) ; sub( /\\\\\"/ , \"\" , \$0 ) ; print}'
  "

# ### testear lado derecho
# bash -c "${strr07}"

  ### reutilizar para var08
  declare -gx strr08="
  gawk 'BEGIN{FS=\",\"} /\.csv/ {print \$3}' RutinaXYZ_Exportar.sh \
    | grep 'var08' \
    | gawk '{sub( / file=\\\\\"/ , \"\" , \$0 ) ; sub( /\\\\\"/ , \"\" , \$0 ) ; print}'
  "

# ### testear lado derecho
# bash -c "${strr08}"

# ### generar vectores columna con correlativo para intersectar (7 archivos)
# declare -gx strcor="
# time gawk 'NR>1 && !/1.17549435082228751e-38/ && !/-3.4028234663852886e\+38/ {print NR-1}' \${rasdir}/grupo00MaskSample/grupo00MaskSample.csv > \${rasdir}/grupo00MaskSample/grupo00MaskSample_Join.csv
# time gawk 'NR>1 && !/1.17549435082228751e-38/ && !/-3.4028234663852886e\+38/ {print NR-1}' \${rasdir}/grupo01MaskSample/grupo01MaskSample.csv > \${rasdir}/grupo01MaskSample/grupo01MaskSample_Join.csv
# time gawk 'NR>1 && !/1.17549435082228751e-38/ && !/-3.4028234663852886e\+38/ {print NR-1}' \${rasdir}/grupo02MaskSample/grupo02MaskSample.csv > \${rasdir}/grupo02MaskSample/grupo02MaskSample_Join.csv
# time gawk 'NR>1 && !/1.17549435082228751e-38/ && !/-3.4028234663852886e\+38/ {print NR-1}' \${rasdir}/grupo03MaskSample/grupo03MaskSample.csv > \${rasdir}/grupo03MaskSample/grupo03MaskSample_Join.csv
# time gawk 'NR>1 && !/1.17549435082228751e-38/ && !/-3.4028234663852886e\+38/ {print NR-1}' \${rasdir}/grupo04MaskSample/grupo04MaskSample.csv > \${rasdir}/grupo04MaskSample/grupo04MaskSample_Join.csv
# time gawk 'NR>1 && !/1.17549435082228751e-38/ && !/-3.4028234663852886e\+38/ {print NR-1}' \${rasdir}/grupo05MaskSample/grupo05MaskSample.csv > \${rasdir}/grupo05MaskSample/grupo05MaskSample_Join.csv
# time gawk 'NR>1 && !/1.17549435082228751e-38/ && !/-3.4028234663852886e\+38/ {print NR-1}' \${rasdir}/grupo06MaskSample/grupo06MaskSample.csv > \${rasdir}/grupo06MaskSample/grupo06MaskSample_Join.csv
# "

# ### ejecutar escritura de correlativo
# bash -c "${strcor}"

  ### grupo de vectores columna con coordenadas listar correlativo y pegar (7 archivos)
  declare -gx strle0="
  find \${rasdir}/grupo00MaskSample/ -type f -name 'grupo00MaskSample_Join.csv'
  find \${rasdir}/grupo01MaskSample/ -type f -name 'grupo01MaskSample_Join.csv'
  find \${rasdir}/grupo02MaskSample/ -type f -name 'grupo02MaskSample_Join.csv'
  find \${rasdir}/grupo03MaskSample/ -type f -name 'grupo03MaskSample_Join.csv'
  find \${rasdir}/grupo04MaskSample/ -type f -name 'grupo04MaskSample_Join.csv'
  find \${rasdir}/grupo05MaskSample/ -type f -name 'grupo05MaskSample_Join.csv'
  find \${rasdir}/grupo06MaskSample/ -type f -name 'grupo06MaskSample_Join.csv'
  "

  ### repetir vectores con coordenadas (7 veces)
  declare -gx strlef="
  seq 7 | xargs -I -- bash -c \"\${strle0}\"
  "

# ### testear lado izquierdo
# bash -c "${strlef}"

  ### generar pegar ambos lados
  declare -gx strp07="
  paste -d' ' \
    <( bash -c \"\${strlef}\" ) \
    <( bash -c \"\${strr07}\" ) \
    | sed -r 's/(.*) (.*)\.(.*)/time paste -d'\'','\'' \1 \2\.\3 > \2_nr\.\3/' \
  "

# ### testear strp07
# bash -c "${strp07}"

  ### generar pegar ambos lados
  declare -gx strp08="
  paste -d' ' \
    <( bash -c \"\${strlef}\" ) \
    <( bash -c \"\${strr08}\" ) \
    | sed -r 's/(.*) (.*)\.(.*)/time paste -d'\'','\'' \1 \2\.\3 > \2_nr\.\3/' \
  "

# ### testear strp08
# bash -c "${strp08}"

# ### ejecutar pegar ambos lados pendiente paralelizar
# bash -c "${strp07}" >  RutinaXYZ_Paste.sh
# ### ejecutar pegar ambos lados pendiente paralelizar
# bash -c "${strp08}" >> RutinaXYZ_Paste.sh

  ### generar vectores columna con correlativo para intersectar (7 archivos)
  declare -gx str_xy="
  time gawk 'BEGIN{FS=\" \";OFS=\",\"} NR>1 {print NR-1,\$1,\$2}' \${rasdir}/grupo00MaskSample/grupo00MaskSample.csv > \${rasdir}/grupo00MaskSample/grupo00MaskSample_Coord.csv
  time gawk 'BEGIN{FS=\" \";OFS=\",\"} NR>1 {print NR-1,\$1,\$2}' \${rasdir}/grupo01MaskSample/grupo01MaskSample.csv > \${rasdir}/grupo01MaskSample/grupo01MaskSample_Coord.csv
  time gawk 'BEGIN{FS=\" \";OFS=\",\"} NR>1 {print NR-1,\$1,\$2}' \${rasdir}/grupo02MaskSample/grupo02MaskSample.csv > \${rasdir}/grupo02MaskSample/grupo02MaskSample_Coord.csv
  time gawk 'BEGIN{FS=\" \";OFS=\",\"} NR>1 {print NR-1,\$1,\$2}' \${rasdir}/grupo03MaskSample/grupo03MaskSample.csv > \${rasdir}/grupo03MaskSample/grupo03MaskSample_Coord.csv
  time gawk 'BEGIN{FS=\" \";OFS=\",\"} NR>1 {print NR-1,\$1,\$2}' \${rasdir}/grupo04MaskSample/grupo04MaskSample.csv > \${rasdir}/grupo04MaskSample/grupo04MaskSample_Coord.csv
  time gawk 'BEGIN{FS=\" \";OFS=\",\"} NR>1 {print NR-1,\$1,\$2}' \${rasdir}/grupo05MaskSample/grupo05MaskSample.csv > \${rasdir}/grupo05MaskSample/grupo05MaskSample_Coord.csv
  time gawk 'BEGIN{FS=\" \";OFS=\",\"} NR>1 {print NR-1,\$1,\$2}' \${rasdir}/grupo06MaskSample/grupo06MaskSample.csv > \${rasdir}/grupo06MaskSample/grupo06MaskSample_Coord.csv
  "

# ### ejecutar escritura de coordenadas
# bash -c "${str_xy}"

  ### grupo de vectores columna con coordenadas listar correlativo y pegar (7 archivos)
  declare -gx strlxy="
  find \${rasdir}/grupo00MaskSample/ -type f -name 'grupo00MaskSample_Coord.csv'
  find \${rasdir}/grupo01MaskSample/ -type f -name 'grupo01MaskSample_Coord.csv'
  find \${rasdir}/grupo02MaskSample/ -type f -name 'grupo02MaskSample_Coord.csv'
  find \${rasdir}/grupo03MaskSample/ -type f -name 'grupo03MaskSample_Coord.csv'
  find \${rasdir}/grupo04MaskSample/ -type f -name 'grupo04MaskSample_Coord.csv'
  find \${rasdir}/grupo05MaskSample/ -type f -name 'grupo05MaskSample_Coord.csv'
  find \${rasdir}/grupo06MaskSample/ -type f -name 'grupo06MaskSample_Coord.csv'
  "

# ### testear
# bash -c "${strlxy}"

  ### repetir vectores con coordenadas (7 veces)
  declare -gx strrxy="
  seq 7 | xargs -I -- bash -c \"\${strlxy}\"
  "

  ### generar join var07
  declare -gx strj07="
  paste -d' ' \
  <( bash -c \"\${strrxy}\" ) \
  <( bash -c \"\${strr07}\" \
      | sed -r 's/(.*)\.(.*)/\1_nr\.\2/' ) \
      | sed -r 's/(.*)\.(.*) (.*)_(.*)_(.*)_(.*)_(.*)_(.*)/time join -a1 -a2 -11 -21 -t'\'','\'' --nocheck-order -e- -o 0 1.2 1.3 2.2 \1\.\2 \3_\4_\5_\6_\7_\8 > \1_\4_\6_\7\.\2/' \
  "

  ### generar join var08
  declare -gx strj08="
  paste -d' ' \
  <( bash -c \"\${strrxy}\" ) \
  <( bash -c \"\${strr08}\" \
      | sed -r 's/(.*)\.(.*)/\1_nr\.\2/' ) \
      | sed -r 's/(.*)\.(.*) (.*)_(.*)_(.*)_(.*)_(.*)_(.*)/time join -a1 -a2 -11 -21 -t'\'','\'' --nocheck-order -e- -o 0 1.2 1.3 2.2 \1\.\2 \3_\4_\5_\6_\7_\8 > \1_\4_\6_\7\.\2/' \
  "

# ### ejecutar join pendiente paralelizar
# bash -c "${strj07}" ## >  RutinaXYZ_Join.sh
# ### ejecutar join pendiente paralelizar
# bash -c "${strj08}" ## >> RutinaXYZ_Join.sh

  ### =================================
  ###
  ### =================================

  ### test join 01 join
# time join -t, -a1 -a2 -e0 -o0,2.2 --nocheck-order /home/matbox/Documents/TrabajosExtra/DriveBiotopos/Matias_Rebolledo/Raster/CapasFAU23_5/grupo03MaskSample/grupo03MaskSample_Coord.csv ../bigcsv/bigkmeans_kmn0004_var07_cluster_nr.csv | sort -n > /home/matbox/Documents/TrabajosExtra/DriveBiotopos/Matias_Rebolledo/Raster/CapasFAU23_5/grupo03MaskSample/grupo03MaskSample_Coord_kmn0004_var07_cluster.csv

  ### =================================
  ###
  ### =================================

# ### test join 02 gawk Definitivo
# time gawk 'BEGIN{FS=OFS=","} NR==FNR {a[$1]=$0;next} {print $0,a[$1],a[$2]}' ../bigcsv/bigkmeans_kmn0004_var07_cluster_nr.csv /home/matbox/Documents/TrabajosExtra/DriveBiotopos/Matias_Rebolledo/Raster/CapasFAU23_5/grupo03MaskSample/grupo03MaskSample_Coord.csv > /home/matbox/Documents/TrabajosExtra/DriveBiotopos/Matias_Rebolledo/Raster/CapasFAU23_5/grupo03MaskSample/grupo03MaskSample_Coord_kmn0004_var07_cluster_awk.csv

  ### cargar funcion unir tablas
  source FuncionUnirArchivosAWK.sh

# ### probar funcion test join 02
# UnirArchivosAWK ../bigcsv/bigkmeans_kmn0004_var07_cluster_nr.csv /home/matbox/Documents/TrabajosExtra/DriveBiotopos/Matias_Rebolledo/Raster/CapasFAU23_5/grupo03MaskSample/grupo03MaskSample_Coord.csv /home/matbox/Documents/TrabajosExtra/DriveBiotopos/Matias_Rebolledo/Raster/CapasFAU23_5/grupo03MaskSample/grupo03MaskSample_Coord_kmn0004_var07_cluster_awk.csv

  ### generar unir var07
  declare -gx stru07="
  paste -d' ' \
  <( bash -c \"\${strrxy}\" ) \
  <( bash -c \"\${strr07}\" \
      | sed -r 's/(.*)\.(.*)/\1_nr\.\2/' ) \
      | sed -r 's/(.*)\.(.*) (.*)_(.*)_(.*)_(.*)_(.*)_(.*)/source FuncionUnirArchivosAWK.sh ; UnirArchivosAWK \3_\4_\5_\6_\7_\8 \1\.\2 \1_\4_\6_\7\.\2/'
  "

  ### generar unir var08
  declare -gx stru08="
  paste -d' ' \
  <( bash -c \"\${strrxy}\" ) \
  <( bash -c \"\${strr08}\" \
      | sed -r 's/(.*)\.(.*)/\1_nr\.\2/' ) \
      | sed -r 's/(.*)\.(.*) (.*)_(.*)_(.*)_(.*)_(.*)_(.*)/source FuncionUnirArchivosAWK.sh ; UnirArchivosAWK \3_\4_\5_\6_\7_\8 \1\.\2 \1_\4_\6_\7\.\2/'
  "

# ### ejecutar join definitivo
# bash -c "${stru07}" >  RutinaXYZ_Join.sh
# bash -c "${stru08}" >> RutinaXYZ_Join.sh

  ### =================================
  ### Quitar Id a Coordenadas
  ### =================================

  declare -gx strq07="
  bash -c \"\${stru07}\" \
    | gawk '{print \$7}' \
    | sed -r '/^$/d' \
    | sed -r 's/(.*)\.(.*)/source FuncionUnirArchivosAWK.sh ; QuitarIdCoordenadas \1\.\2 \1_gdal\.\2/'
  "
  declare -gx strq08="
  bash -c \"\${stru08}\" \
    | gawk '{print \$7}' \
    | sed -r '/^$/d' \
    | sed -r 's/(.*)\.(.*)/source FuncionUnirArchivosAWK.sh ; QuitarIdCoordenadas \1\.\2 \1_gdal\.\2/'
  "

# bash -c "${strq07}" >  RutinaXYZ_QuitCoord.sh
# bash -c "${strq08}" >> RutinaXYZ_QuitCoord.sh

  ### =================================
  ### Convertir ascii grid a raster tif
  ### =================================

  declare -gx strs07="
  bash -c \"\${stru07}\" \
    | gawk '{print \$7}' \
    | sed -r '/^$/d' \
    | sed -r 's/(.*)\.(.*)/gdal_translate -a_srs EPSG:32719 -a_nodata 3.4028234663852886e+38 -co \"COMPRESS=LZW\" -of GTiff \1_gdal\.\2 \1_gdal\.tif/'
  "
  declare -gx strs08="
  bash -c \"\${stru08}\" \
    | gawk '{print \$7}' \
    | sed -r '/^$/d' \
    | sed -r 's/(.*)\.(.*)/gdal_translate -a_srs EPSG:32719 -a_nodata 3.4028234663852886e+38 -co \"COMPRESS=LZW\" -of GTiff \1_gdal\.\2 \1_gdal\.tif/'
  "

# bash -c "${strs07}" >  RutinaXYZ_Rasterizar.sh
# bash -c "${strs08}" >> RutinaXYZ_Rasterizar.sh

  ### =================================
  ###
  ### =================================

  ### test join 03 mlr
# time mlr join -j id -f /home/matbox/Documents/TrabajosExtra/DriveBiotopos/Matias_Rebolledo/Raster/CapasFAU23_5/grupo03MaskSample/grupo03MaskSample_Coord.csv ../bigcsv/bigkmeans_kmn0004_var07_cluster_nr.csv           > /home/matbox/Documents/TrabajosExtra/DriveBiotopos/Matias_Rebolledo/Raster/CapasFAU23_5/grupo03MaskSample/grupo03MaskSample_Coord_kmn0004_var07_cluster_mlr.csv

  ### =================================
  ###
  ### =================================

# ### cargar funciones postgresql
# source FuncionTablasPostgreSql.sh

# ### crear database
# CrearDBBioSql

# ### crear tablas coordenada
# CrearTablaCoordSql grupo03MaskSample_Coord ; ImportarDatosSql grupo03MaskSample_Coord ../../DriveBiotopos/Matias_Rebolledo/Raster/CapasFAU23_5/grupo03MaskSample/grupo03MaskSample_Coord.csv

# ### crear tablas valor cluster
# CrearTablaClusterSql kmn0004_var07_cluster ; ImportarDatosSql kmn0004_var07_cluster ../bigcsv/bigkmeans_kmn0004_var07_cluster_nr.csv

# ### intersectar tablas
# CrearTablaClustSql grupo03MaskSample_Coord_kmn0004_var07_cluster
# IntersectarTablasSql grupo03MaskSample_Coord kmn0004_var07_cluster grupo03MaskSample_Coord_kmn0004_var07_cluster
# ExportarDatosSql grupo03MaskSample_Coord_kmn0004_var07_cluster ../../DriveBiotopos/Matias_Rebolledo/Raster/CapasFAU23_5/grupo03MaskSample/grupo03MaskSample_Coord_kmn0004_var07_cluster.csv

# ### generalizar proceso psql generar
# declare -gx strsqc="
# bash -c \"\${strlxy}\" \
#   | sed -r 's/(.*)\/(.*)\.(.*)/source FuncionTablasPostgreSql.sh ; CrearTablaCoordSql \2 ; ImportarDatosSql \2 \1\/\2\.\3/'
# "

# ### generalizar proceso psql ejecutar
# bash -c "${strsqc}"

# ### pendiente usar coordenadas originales sin pasar por psql
