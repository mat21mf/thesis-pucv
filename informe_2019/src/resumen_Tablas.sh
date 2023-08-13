  declare -gx strrasdir="$HOME/Documents/TrabajosExtra/DriveBiotopos/Matias_Rebolledo/Raster/CapasFAU23_5"
  declare -gx strinfdir="$HOME/Documents/TrabajosExtra/petra_biotopos/informe_2019"
  declare -gx strsrcdir="$HOME/Documents/TrabajosExtra/petra_biotopos/src"

  ### especies
  csv2latex --nohead ${strinfdir}/tabs/tabespp.csv > ${strinfdir}/tabs/tabespp.tex
  TexTabHead "Comparación del número de especies amenazadas."     "reftabespp" "tabespp" > ${strinfdir}/tabs/headtabespp.tex
  sed -r -i 's/\|l\|l\|l\|l\|/ l r r r /' ./tabs/tabespp.tex
  sed -r -i '$i\\\multicolumn{4}{l}{\\footnotesize Fuente: Informe país, estado del medio ambiente en Chile,}\\\\' ./tabs/tabespp.tex
  sed -r -i '$i\\\multicolumn{4}{l}{\\footnotesize comparación 1999-2015.}\\\\' ./tabs/tabespp.tex

  ### valoracion economica
  cat ./tabs/tabvalo.txt > ./tabs/tabvalo.csv
  csv2latex --nohead --noescape ${strinfdir}/tabs/tabvalo.csv > ${strinfdir}/tabs/tabvalo.tex
  TexTabHead "Valoración económica del impacto sobre la biodiversidad."     "reftabvalo" "tabvalo" > ${strinfdir}/tabs/headtabvalo.tex
  sed -r -i 's/\|l\|l\|l\|l\|l\|/ l r r r r /' ./tabs/tabvalo.tex
  gawk -i inplace 'BEGIN{FS=OFS="&"} !/CHAQUETA AMARILLA/ {print $0} /CHAQUETA AMARILLA/ {{sub( /.*/ , "\\multirow{2}{*}{"$2"}" , $2) ; print $0}}' ./tabs/tabvalo.tex
  gawk -i inplace 'BEGIN{FS=OFS="&"} !/CHAQUETA AMARILLA/ {print $0} /CHAQUETA AMARILLA/ {{sub( /.*/ , "\\multirow{2}{*}{"$3"}" , $3) ; print $0}}' ./tabs/tabvalo.tex
  gawk -i inplace 'BEGIN{FS=OFS="&"} !/CHAQUETA AMARILLA/ {print $0} /CHAQUETA AMARILLA/ {{sub( /.*/ , "\\multirow{2}{*}{"$4"}" , $4) ; print $0}}' ./tabs/tabvalo.tex
  gawk -i inplace 'BEGIN{FS=OFS="&"} !/CHAQUETA AMARILLA/ {print $0} /CHAQUETA AMARILLA/ {{sub( /.*/ , "\\multirow{2}{*}{"$5"}" , $5) ; print $0}}' ./tabs/tabvalo.tex
  sed -r -i 's/(\\\\)(})/\2\1/' ./tabs/tabvalo.tex
  sed -r -i 's/(CHAQUETA) (AMARILLA)/\\multirow{2}{*}{\\shortstack[1]{\1\\\\\2}}/' ./tabs/tabvalo.tex
  sed -r -i '18i\&&&&\\\\' ./tabs/tabvalo.tex
  sed -r -i '$i\\\multicolumn{4}{l}{\\footnotesize Fuente: Valoración económica del impacto de siete especies exóticas}\\\\' ./tabs/tabvalo.tex
  sed -r -i '$i\\\multicolumn{4}{l}{\\footnotesize invasoras sobre los sectores productivos y la biodiversidad en Chile.}\\\\' ./tabs/tabvalo.tex

  ### variables
  csv2latex --nohead ${strinfdir}/tabs/tabtvar.csv > ${strinfdir}/tabs/tabtvar.tex
  TexTabHead "Descripción de las variables del estudio."     "reftabtvar" "tabtvar" > ${strinfdir}/tabs/headtabtvar.tex

  ### tamaño rasters
  ### capas tif fueron retiradas, estan solamente en el servidor (no usar este filtro)
  declare -gx strtabsmp="
  echo \"Grupo , Número y tamaño de imágenes en píxeles , Total en píxeles\"
  find \${strrasdir}/grupo0*MaskSample/ -type f -name '*.tif' | grep -v 'Aspect' | xargs file | gawk -F'[:,]' '{print \$1,\$5,\$9}' | sed -r 's/(.*)\/(.*)  (.*)  (.*)/\1 \3 \4/' | sed -r 's/(.*)\/(.*) (.*) (.*)/\2 \3 \4/' | sort | uniq -c | sed -r 's/MaskSample//;s/height/alto/;s/width/ancho/' | gawk '{sub( /alto=/ , \"\" , \$3) ; sub( /ancho=/ , \"\" , \$4 ) ; printf(\"%s , %'\''.f , %'\''.f , %'\''.f , %'\''.f\n\", \$2,\$1,\$3,\$4,\$3*\$4)}' | gawk 'BEGIN{FS=\",\"} {printf(\"%s , %s imágenes de %s alto x %s ancho , %s\n\" , \$1,\$2,\$3,\$4,\$5)}'
 #print \$2\" , \"\$1\" imágenes de \"\$3\" píxeles alto x \"\$4\" píxeles ancho , total \"\$3*\$4\" píxeles\"}'
  "
  ### bash -c "${strtabsmp}"
  ### bash -c "${strtabsmp}" > ${strinfdir}/tabs/tabsmpl.csv
  csv2latex --nohead -p r ${strinfdir}/tabs/tabsmpl.csv > ${strinfdir}/tabs/tabsmpl.tex
  TexTabHead "Tamaños de imágenes satelitales según grupo."  "reftabsmpl" "tabsmpl" > ${strinfdir}/tabs/headtabsmpl.tex

  ### zonas del estudio
  ### R --slave -f ${strsrcdir}/DiccionarioGrupos.R
  csv2latex --nohead ${strinfdir}/tabs/tabdesc.csv > ${strinfdir}/tabs/tabdesc.tex
  TexTabHead "Descripción de zonas del estudio."             "reftabdesc" "tabdesc" > ${strinfdir}/tabs/headtabdesc.tex

  ### modificar cuadros
  sed -r -i 's/\|l\|l\|/ l l /' ${strinfdir}/tabs/tabdesc.tex
  sed -r -i 's/\|l\|l\|/ l l /' ${strinfdir}/tabs/tabtvar.tex
  sed -r -i 's/\|r\|r\|r\|/ l c r /' ${strinfdir}/tabs/tabsmpl.tex

  ### corridas kmedias puntuales (copiar desde origen solo si se editan)
  rsync -rltz -O --update ${strsrcdir}/csv/kmn_grp00_var08_objetos.csv ./tabs/kmn_grp00_var08_objetos.csv
  rsync -rltz -O --update ${strsrcdir}/csv/kmn_grp01_var08_objetos.csv ./tabs/kmn_grp01_var08_objetos.csv
  rsync -rltz -O --update ${strsrcdir}/csv/kmn_grp02_var08_objetos.csv ./tabs/kmn_grp02_var08_objetos.csv
  rsync -rltz -O --update ${strsrcdir}/csv/kmn_grp03_var08_objetos.csv ./tabs/kmn_grp03_var08_objetos.csv
  rsync -rltz -O --update ${strsrcdir}/csv/kmn_grp04_var08_objetos.csv ./tabs/kmn_grp04_var08_objetos.csv
  rsync -rltz -O --update ${strsrcdir}/csv/kmn_grp05_var08_objetos.csv ./tabs/kmn_grp05_var08_objetos.csv
  rsync -rltz -O --update ${strsrcdir}/csv/kmn_grp06_var08_objetos.csv ./tabs/kmn_grp06_var08_objetos.csv

  ### edicion csv
  sed -r    's/@/,/g' ./tabs/kmn_grp00_var08_objetos.csv > ./tabs/kmn_grp00_var08_objetos_print.csv
  sed -r    's/@/,/g' ./tabs/kmn_grp01_var08_objetos.csv > ./tabs/kmn_grp01_var08_objetos_print.csv
  sed -r    's/@/,/g' ./tabs/kmn_grp02_var08_objetos.csv > ./tabs/kmn_grp02_var08_objetos_print.csv
  sed -r    's/@/,/g' ./tabs/kmn_grp03_var08_objetos.csv > ./tabs/kmn_grp03_var08_objetos_print.csv
  sed -r    's/@/,/g' ./tabs/kmn_grp04_var08_objetos.csv > ./tabs/kmn_grp04_var08_objetos_print.csv
  sed -r    's/@/,/g' ./tabs/kmn_grp05_var08_objetos.csv > ./tabs/kmn_grp05_var08_objetos_print.csv
  sed -r    's/@/,/g' ./tabs/kmn_grp06_var08_objetos.csv > ./tabs/kmn_grp06_var08_objetos_print.csv

  ### seleccionar columnas y formatear
  gawk -i inplace 'BEGIN{FS=OFS=","} NR==1 {print $1,$2,$3,$4,$5,$6,$7,$8,$9,$10,$11,$12,$13,$14,$15,$16,$17} NR>1 {printf "%s,%.2f,%.2f,%'"'"'d,%'"'"'d,%'"'"'d,%.2f,%.2f,%.2f,%.2f,%.2f,%.2f,%.2f,%s,%s,%s,%s\n", $1,$2,$3,$4,$5,$6,$7,$8,$9,$10,$11,$12,$13,$14,$15,$16,$17}' ./tabs/kmn_grp00_var08_objetos_print.csv
  gawk -i inplace 'BEGIN{FS=OFS=","} NR==1 {print $1,$2,$3,$4,$5,$6,$7,$8,$9,$10,$11,$12,$13,$14,$15,$16,$17} NR>1 {printf "%s,%.2f,%.2f,%'"'"'d,%'"'"'d,%'"'"'d,%.2f,%.2f,%.2f,%.2f,%.2f,%.2f,%.2f,%s,%s,%s,%s\n", $1,$2,$3,$4,$5,$6,$7,$8,$9,$10,$11,$12,$13,$14,$15,$16,$17}' ./tabs/kmn_grp01_var08_objetos_print.csv
  gawk -i inplace 'BEGIN{FS=OFS=","} NR==1 {print $1,$2,$3,$4,$5,$6,$7,$8,$9,$10,$11,$12,$13,$14,$15,$16,$17} NR>1 {printf "%s,%.2f,%.2f,%'"'"'d,%'"'"'d,%'"'"'d,%.2f,%.2f,%.2f,%.2f,%.2f,%.2f,%.2f,%s,%s,%s,%s\n", $1,$2,$3,$4,$5,$6,$7,$8,$9,$10,$11,$12,$13,$14,$15,$16,$17}' ./tabs/kmn_grp02_var08_objetos_print.csv
  gawk -i inplace 'BEGIN{FS=OFS=","} NR==1 {print $1,$2,$3,$4,$5,$6,$7,$8,$9,$10,$11,$12,$13,$14,$15,$16,$17} NR>1 {printf "%s,%.2f,%.2f,%'"'"'d,%'"'"'d,%'"'"'d,%.2f,%.2f,%.2f,%.2f,%.2f,%.2f,%.2f,%s,%s,%s,%s\n", $1,$2,$3,$4,$5,$6,$7,$8,$9,$10,$11,$12,$13,$14,$15,$16,$17}' ./tabs/kmn_grp03_var08_objetos_print.csv
  gawk -i inplace 'BEGIN{FS=OFS=","} NR==1 {print $1,$2,$3,$4,$5,$6,$7,$8,$9,$10,$11,$12,$13,$14,$15,$16,$17} NR>1 {printf "%s,%.2f,%.2f,%'"'"'d,%'"'"'d,%'"'"'d,%.2f,%.2f,%.2f,%.2f,%.2f,%.2f,%.2f,%s,%s,%s,%s\n", $1,$2,$3,$4,$5,$6,$7,$8,$9,$10,$11,$12,$13,$14,$15,$16,$17}' ./tabs/kmn_grp04_var08_objetos_print.csv
  gawk -i inplace 'BEGIN{FS=OFS=","} NR==1 {print $1,$2,$3,$4,$5,$6,$7,$8,$9,$10,$11,$12,$13,$14,$15,$16,$17} NR>1 {printf "%s,%.2f,%.2f,%'"'"'d,%'"'"'d,%'"'"'d,%.2f,%.2f,%.2f,%.2f,%.2f,%.2f,%.2f,%s,%s,%s,%s\n", $1,$2,$3,$4,$5,$6,$7,$8,$9,$10,$11,$12,$13,$14,$15,$16,$17}' ./tabs/kmn_grp05_var08_objetos_print.csv
  gawk -i inplace 'BEGIN{FS=OFS=","} NR==1 {print $1,$2,$3,$4,$5,$6,$7,$8,$9,$10,$11,$12,$13,$14,$15,$16,$17} NR>1 {printf "%s,%.2f,%.2f,%'"'"'d,%'"'"'d,%'"'"'d,%.2f,%.2f,%.2f,%.2f,%.2f,%.2f,%.2f,%s,%s,%s,%s\n", $1,$2,$3,$4,$5,$6,$7,$8,$9,$10,$11,$12,$13,$14,$15,$16,$17}' ./tabs/kmn_grp06_var08_objetos_print.csv

  ### aplicar formato condicional y seleccionar columnas
  gawk -i inplace 'BEGIN{FS=OFS=","} NR==1 {print $1,$2,$3,$4,$5,$6,$7,$8,$9,$10,$11,$12,$13} NR>1 {if($14=="TRUE") {print $1,$2,$3,$4,$5,$6,$7,$8,$9,"\\cellcolor{red!35}"$10,$11,$12,$13} else if($15=="TRUE") {print $1,$2,$3,$4,$5,$6,$7,$8,$9,$10,"\\cellcolor{red!35}"$11,$12,$13} else if($16=="TRUE") {print $1,$2,$3,$4,$5,$6,$7,$8,$9,$10,$11,"\\cellcolor{red!35}"$12,$13} else if($17=="TRUE") {print $1,$2,$3,$4,$5,$6,$7,$8,$9,$10,$11,$12,"\\cellcolor{red!35}"$13} else {print $1,$2,$3,$4,$5,$6,$7,$8,$9,$10,$11,$12,$13}}' ./tabs/kmn_grp00_var08_objetos_print.csv
  gawk -i inplace 'BEGIN{FS=OFS=","} NR==1 {print $1,$2,$3,$4,$5,$6,$7,$8,$9,$10,$11,$12,$13} NR>1 {if($14=="TRUE") {print $1,$2,$3,$4,$5,$6,$7,$8,$9,"\\cellcolor{red!35}"$10,$11,$12,$13} else if($15=="TRUE") {print $1,$2,$3,$4,$5,$6,$7,$8,$9,$10,"\\cellcolor{red!35}"$11,$12,$13} else if($16=="TRUE") {print $1,$2,$3,$4,$5,$6,$7,$8,$9,$10,$11,"\\cellcolor{red!35}"$12,$13} else if($17=="TRUE") {print $1,$2,$3,$4,$5,$6,$7,$8,$9,$10,$11,$12,"\\cellcolor{red!35}"$13} else {print $1,$2,$3,$4,$5,$6,$7,$8,$9,$10,$11,$12,$13}}' ./tabs/kmn_grp01_var08_objetos_print.csv
  gawk -i inplace 'BEGIN{FS=OFS=","} NR==1 {print $1,$2,$3,$4,$5,$6,$7,$8,$9,$10,$11,$12,$13} NR>1 {if($14=="TRUE") {print $1,$2,$3,$4,$5,$6,$7,$8,$9,"\\cellcolor{red!35}"$10,$11,$12,$13} else if($15=="TRUE") {print $1,$2,$3,$4,$5,$6,$7,$8,$9,$10,"\\cellcolor{red!35}"$11,$12,$13} else if($16=="TRUE") {print $1,$2,$3,$4,$5,$6,$7,$8,$9,$10,$11,"\\cellcolor{red!35}"$12,$13} else if($17=="TRUE") {print $1,$2,$3,$4,$5,$6,$7,$8,$9,$10,$11,$12,"\\cellcolor{red!35}"$13} else {print $1,$2,$3,$4,$5,$6,$7,$8,$9,$10,$11,$12,$13}}' ./tabs/kmn_grp02_var08_objetos_print.csv
  gawk -i inplace 'BEGIN{FS=OFS=","} NR==1 {print $1,$2,$3,$4,$5,$6,$7,$8,$9,$10,$11,$12,$13} NR>1 {if($14=="TRUE") {print $1,$2,$3,$4,$5,$6,$7,$8,$9,"\\cellcolor{red!35}"$10,$11,$12,$13} else if($15=="TRUE") {print $1,$2,$3,$4,$5,$6,$7,$8,$9,$10,"\\cellcolor{red!35}"$11,$12,$13} else if($16=="TRUE") {print $1,$2,$3,$4,$5,$6,$7,$8,$9,$10,$11,"\\cellcolor{red!35}"$12,$13} else if($17=="TRUE") {print $1,$2,$3,$4,$5,$6,$7,$8,$9,$10,$11,$12,"\\cellcolor{red!35}"$13} else {print $1,$2,$3,$4,$5,$6,$7,$8,$9,$10,$11,$12,$13}}' ./tabs/kmn_grp03_var08_objetos_print.csv
  gawk -i inplace 'BEGIN{FS=OFS=","} NR==1 {print $1,$2,$3,$4,$5,$6,$7,$8,$9,$10,$11,$12,$13} NR>1 {if($14=="TRUE") {print $1,$2,$3,$4,$5,$6,$7,$8,$9,"\\cellcolor{red!35}"$10,$11,$12,$13} else if($15=="TRUE") {print $1,$2,$3,$4,$5,$6,$7,$8,$9,$10,"\\cellcolor{red!35}"$11,$12,$13} else if($16=="TRUE") {print $1,$2,$3,$4,$5,$6,$7,$8,$9,$10,$11,"\\cellcolor{red!35}"$12,$13} else if($17=="TRUE") {print $1,$2,$3,$4,$5,$6,$7,$8,$9,$10,$11,$12,"\\cellcolor{red!35}"$13} else {print $1,$2,$3,$4,$5,$6,$7,$8,$9,$10,$11,$12,$13}}' ./tabs/kmn_grp04_var08_objetos_print.csv
  gawk -i inplace 'BEGIN{FS=OFS=","} NR==1 {print $1,$2,$3,$4,$5,$6,$7,$8,$9,$10,$11,$12,$13} NR>1 {if($14=="TRUE") {print $1,$2,$3,$4,$5,$6,$7,$8,$9,"\\cellcolor{red!35}"$10,$11,$12,$13} else if($15=="TRUE") {print $1,$2,$3,$4,$5,$6,$7,$8,$9,$10,"\\cellcolor{red!35}"$11,$12,$13} else if($16=="TRUE") {print $1,$2,$3,$4,$5,$6,$7,$8,$9,$10,$11,"\\cellcolor{red!35}"$12,$13} else if($17=="TRUE") {print $1,$2,$3,$4,$5,$6,$7,$8,$9,$10,$11,$12,"\\cellcolor{red!35}"$13} else {print $1,$2,$3,$4,$5,$6,$7,$8,$9,$10,$11,$12,$13}}' ./tabs/kmn_grp05_var08_objetos_print.csv
  gawk -i inplace 'BEGIN{FS=OFS=","} NR==1 {print $1,$2,$3,$4,$5,$6,$7,$8,$9,$10,$11,$12,$13} NR>1 {if($14=="TRUE") {print $1,$2,$3,$4,$5,$6,$7,$8,$9,"\\cellcolor{red!35}"$10,$11,$12,$13} else if($15=="TRUE") {print $1,$2,$3,$4,$5,$6,$7,$8,$9,$10,"\\cellcolor{red!35}"$11,$12,$13} else if($16=="TRUE") {print $1,$2,$3,$4,$5,$6,$7,$8,$9,$10,$11,"\\cellcolor{red!35}"$12,$13} else if($17=="TRUE") {print $1,$2,$3,$4,$5,$6,$7,$8,$9,$10,$11,$12,"\\cellcolor{red!35}"$13} else {print $1,$2,$3,$4,$5,$6,$7,$8,$9,$10,$11,$12,$13}}' ./tabs/kmn_grp06_var08_objetos_print.csv

  ### csv2latex
  csv2latex --nohead --noescape ./tabs/kmn_grp00_var08_objetos_print.csv > ./tabs/kmn_grp00_var08_objetos_print.tex
  csv2latex --nohead --noescape ./tabs/kmn_grp01_var08_objetos_print.csv > ./tabs/kmn_grp01_var08_objetos_print.tex
  csv2latex --nohead --noescape ./tabs/kmn_grp02_var08_objetos_print.csv > ./tabs/kmn_grp02_var08_objetos_print.tex
  csv2latex --nohead --noescape ./tabs/kmn_grp03_var08_objetos_print.csv > ./tabs/kmn_grp03_var08_objetos_print.tex
  csv2latex --nohead --noescape ./tabs/kmn_grp04_var08_objetos_print.csv > ./tabs/kmn_grp04_var08_objetos_print.tex
  csv2latex --nohead --noescape ./tabs/kmn_grp05_var08_objetos_print.csv > ./tabs/kmn_grp05_var08_objetos_print.tex
  csv2latex --nohead --noescape ./tabs/kmn_grp06_var08_objetos_print.csv > ./tabs/kmn_grp06_var08_objetos_print.tex

  ### editar posicion columnas
  sed -r -i 's/\|l\|l\|l\|l\|l\|l\|l\|l\|l\|l\|l\|l\|l\|/|l|r|r|r|r|r|r|r|r|r|r|r|r|/' ./tabs/kmn_grp00_var08_objetos_print.tex
  sed -r -i 's/\|l\|l\|l\|l\|l\|l\|l\|l\|l\|l\|l\|l\|l\|/|l|r|r|r|r|r|r|r|r|r|r|r|r|/' ./tabs/kmn_grp01_var08_objetos_print.tex
  sed -r -i 's/\|l\|l\|l\|l\|l\|l\|l\|l\|l\|l\|l\|l\|l\|/|l|r|r|r|r|r|r|r|r|r|r|r|r|/' ./tabs/kmn_grp02_var08_objetos_print.tex
  sed -r -i 's/\|l\|l\|l\|l\|l\|l\|l\|l\|l\|l\|l\|l\|l\|/|l|r|r|r|r|r|r|r|r|r|r|r|r|/' ./tabs/kmn_grp03_var08_objetos_print.tex
  sed -r -i 's/\|l\|l\|l\|l\|l\|l\|l\|l\|l\|l\|l\|l\|l\|/|l|r|r|r|r|r|r|r|r|r|r|r|r|/' ./tabs/kmn_grp04_var08_objetos_print.tex
  sed -r -i 's/\|l\|l\|l\|l\|l\|l\|l\|l\|l\|l\|l\|l\|l\|/|l|r|r|r|r|r|r|r|r|r|r|r|r|/' ./tabs/kmn_grp05_var08_objetos_print.tex
  sed -r -i 's/\|l\|l\|l\|l\|l\|l\|l\|l\|l\|l\|l\|l\|l\|/|l|r|r|r|r|r|r|r|r|r|r|r|r|/' ./tabs/kmn_grp06_var08_objetos_print.tex

  ### cambiar decimal en tabla latex dos decimales (revisar formato arriba)
  sed -r -i 's/\.([0-9]{2}\&)/,\1/g;s/\.([0-9]{2}\\\\)/,\1/g;s/([0-9])([0-9]{3})\./\1\.\2\./g;s/([0-9])([0-9]{3}),/\1\.\2,/g' ./tabs/kmn_grp00_var08_objetos_print.tex
  sed -r -i 's/\.([0-9]{2}\&)/,\1/g;s/\.([0-9]{2}\\\\)/,\1/g;s/([0-9])([0-9]{3})\./\1\.\2\./g;s/([0-9])([0-9]{3}),/\1\.\2,/g' ./tabs/kmn_grp01_var08_objetos_print.tex
  sed -r -i 's/\.([0-9]{2}\&)/,\1/g;s/\.([0-9]{2}\\\\)/,\1/g;s/([0-9])([0-9]{3})\./\1\.\2\./g;s/([0-9])([0-9]{3}),/\1\.\2,/g' ./tabs/kmn_grp02_var08_objetos_print.tex
  sed -r -i 's/\.([0-9]{2}\&)/,\1/g;s/\.([0-9]{2}\\\\)/,\1/g;s/([0-9])([0-9]{3})\./\1\.\2\./g;s/([0-9])([0-9]{3}),/\1\.\2,/g' ./tabs/kmn_grp03_var08_objetos_print.tex
  sed -r -i 's/\.([0-9]{2}\&)/,\1/g;s/\.([0-9]{2}\\\\)/,\1/g;s/([0-9])([0-9]{3})\./\1\.\2\./g;s/([0-9])([0-9]{3}),/\1\.\2,/g' ./tabs/kmn_grp04_var08_objetos_print.tex
  sed -r -i 's/\.([0-9]{2}\&)/,\1/g;s/\.([0-9]{2}\\\\)/,\1/g;s/([0-9])([0-9]{3})\./\1\.\2\./g;s/([0-9])([0-9]{3}),/\1\.\2,/g' ./tabs/kmn_grp05_var08_objetos_print.tex
  sed -r -i 's/\.([0-9]{2}\&)/,\1/g;s/\.([0-9]{2}\\\\)/,\1/g;s/([0-9])([0-9]{3})\./\1\.\2\./g;s/([0-9])([0-9]{3}),/\1\.\2,/g' ./tabs/kmn_grp06_var08_objetos_print.tex

  ### agregar etiqueta y referencia
  TexTabHead "Resumen ejecuciones kmedias puntuales para grupo00." "refkmn_grp00_var08_objetos_print" "kmn_grp00_var08_objetos_print" > ./tabs/headkmn_grp00_var08_objetos_print.tex
  TexTabHead "Resumen ejecuciones kmedias puntuales para grupo01." "refkmn_grp01_var08_objetos_print" "kmn_grp01_var08_objetos_print" > ./tabs/headkmn_grp01_var08_objetos_print.tex
  TexTabHead "Resumen ejecuciones kmedias puntuales para grupo02." "refkmn_grp02_var08_objetos_print" "kmn_grp02_var08_objetos_print" > ./tabs/headkmn_grp02_var08_objetos_print.tex
  TexTabHead "Resumen ejecuciones kmedias puntuales para grupo03." "refkmn_grp03_var08_objetos_print" "kmn_grp03_var08_objetos_print" > ./tabs/headkmn_grp03_var08_objetos_print.tex
  TexTabHead "Resumen ejecuciones kmedias puntuales para grupo04." "refkmn_grp04_var08_objetos_print" "kmn_grp04_var08_objetos_print" > ./tabs/headkmn_grp04_var08_objetos_print.tex
  TexTabHead "Resumen ejecuciones kmedias puntuales para grupo05." "refkmn_grp05_var08_objetos_print" "kmn_grp05_var08_objetos_print" > ./tabs/headkmn_grp05_var08_objetos_print.tex
  TexTabHead "Resumen ejecuciones kmedias puntuales para grupo06." "refkmn_grp06_var08_objetos_print" "kmn_grp06_var08_objetos_print" > ./tabs/headkmn_grp06_var08_objetos_print.tex

  ###
  ### dimensiones convertidas
  ###

  ### generar dimensiones convertidas
  gawk 'NR==1 {printf "grupo00 %'"'"'d x %'"'"'d x %'"'"'d , ==> %'"'"'d x %'"'"'d\n"  , $1,$2,$3,$4,$5}' ./tabs/tabdimc.csv > ./tabs/tabdimc_print.csv
  gawk 'NR==2 {printf "grupo01 %'"'"'d x %'"'"'d x %'"'"'d , ==> %'"'"'d x %'"'"'d\n"  , $1,$2,$3,$4,$5}' ./tabs/tabdimc.csv > ./tabs/tabdimc_print.csv
  gawk 'NR==3 {printf "grupo02 %'"'"'d x %'"'"'d x %'"'"'d , ==> %'"'"'d x %'"'"'d\n"  , $1,$2,$3,$4,$5}' ./tabs/tabdimc.csv > ./tabs/tabdimc_print.csv
  gawk 'NR==4 {printf "grupo03 %'"'"'d x %'"'"'d x %'"'"'d , ==> %'"'"'d x %'"'"'d\n"  , $1,$2,$3,$4,$5}' ./tabs/tabdimc.csv > ./tabs/tabdimc_print.csv
  gawk 'NR==5 {printf "grupo04 %'"'"'d x %'"'"'d x %'"'"'d , ==> %'"'"'d x %'"'"'d\n"  , $1,$2,$3,$4,$5}' ./tabs/tabdimc.csv > ./tabs/tabdimc_print.csv
  gawk 'NR==6 {printf "grupo05 %'"'"'d x %'"'"'d x %'"'"'d , ==> %'"'"'d x %'"'"'d\n"  , $1,$2,$3,$4,$5}' ./tabs/tabdimc.csv > ./tabs/tabdimc_print.csv
  gawk 'NR==7 {printf "grupo06 %'"'"'d x %'"'"'d x %'"'"'d , ==> %'"'"'d x %'"'"'d\n"  , $1,$2,$3,$4,$5}' ./tabs/tabdimc.csv > ./tabs/tabdimc_print.csv

  ### agregar encabezado y convertir latex
  sed -r -i '1i\Dimensiones imagenes, Dimensiones dataframes' ./tabs/tabdimc_print.csv
  csv2latex --nohead ./tabs/tabdimc_print.csv > ./tabs/tabdimc_print.tex
  TexTabHead "Dimensiones antes y después de convertir imágenes." "reftabdimc_print" "tabdimc_print" > ./tabs/headtabdimc_print.tex

  ### #######################
  ### copia word de documento
  ### pendiente: formato varios
  ###   - cargar plantilla
  ###     * corregido tabla numeracion contenidos
  ###   - ecuaciones no se ven en word
  ###     * cambiar fuente de
  ###       Cambria ==> Cambria Math (vba)
  ###   - encontre macro vba que formatea
  ###     tablas y figuras
  ###     * reescribirla en vbs y ejecutar conn wine
  ###       wine cscript some-script.vbs
  ###   - tablas se estropean
  ###     * agregado con pander
  ###     * falta formato tabla (vba)
  ###   - figuras
  ###     * agregado borde con imagemagick
  ###   - vbscript solo falta convertir vba en vbs
  ### #######################

  ### cargar funciones que preparan word (desde Compilar.sh)
  source ${strinfdir}/src/FuncionesAuxiliares.sh

  ### hacer copia de documento para compilacion diferida
  rsync -rltz -O --update ${pthsrc}/resumen.md  ${pthsrc}/word/resumen_word.Rmd
  rsync -rltz -O --update ${pthsrc}/resumen.bib ${pthsrc}/word/resumen.bib
  ModificarPreambuloWord ./word/resumen_word.Rmd

  ### modificar imagenes documento word
  ModificarFigurasWord "\\\input{headfigrast}" "![Proceso de homogenización de imágenes satelitales.](/home/matbox/Documents/TrabajosExtra/petra_biotopos/src/diag/diagrama_01_rasters_border.png)"
  ModificarFigurasWord "\\\input{headfigixyz}" "![Proceso de conversión de imágenes satelitales.](/home/matbox/Documents/TrabajosExtra/petra_biotopos/src/diag/diagrama_02_xyz_border.png)"
  ModificarFigurasWord "\\\input{headfigbigm}" "![Proceso de creación de objetos de memoria compartida.](/home/matbox/Documents/TrabajosExtra/petra_biotopos/src/diag/diagrama_03_bigmatrices_border.png)"
  ModificarFigurasWord "\\\input{headfigbigk}" "![Proceso de ejecución de k-medias con big matrices.](/home/matbox/Documents/TrabajosExtra/petra_biotopos/src/diag/diagrama_04_bigkmeans_border.png)"
  ModificarFigurasWord "\\\input{headfigesta}" "![Proceso de extracción de estadígrafos de evaluación.](/home/matbox/Documents/TrabajosExtra/petra_biotopos/src/diag/diagrama_05_estadigrafos_border.png)"
  ModificarFigurasWord "\\\input{headfigoxyz}" "![Proceso de rasterización desde big matrices.](/home/matbox/Documents/TrabajosExtra/petra_biotopos/src/diag/diagrama_06_invertir_xyz_border.png)"
  ModificarFigurasWord "\\\input{headfigmatc}" "![Proceso de caracterización de variables según cluster.](/home/matbox/Documents/TrabajosExtra/petra_biotopos/src/diag/diagrama_07_matconf_border.png)"

  ### ascii tables (reemplazar por insertar bloque tabla)
 #InsertarTablaAscii ${strinfdir}/tabs/tabdesc.csv ${strinfdir}/tabs/tabdesc.txt "headtabdesc" # "Tamaños de imágenes satelitales según grupo."
 #InsertarTablaAscii ${strinfdir}/tabs/tabtvar.csv ${strinfdir}/tabs/tabtvar.txt "headtabtvar" # "Tamaños de imágenes satelitales según grupo."
 #InsertarTablaAscii ${strinfdir}/tabs/tabsmpl.csv ${strinfdir}/tabs/tabsmpl.txt "headtabsmpl" # "Tamaños de imágenes satelitales según grupo."
 #InsertarTablaAscii ${strinfdir}/tabs/kmn_grp00_var08_objetos_print.csv ${strinfdir}/tabs/kmn_grp00_var08_objetos_print.txt "headkmn_grp00_var08_objetos_print"

# ### insertar codigos usando bloque codigo R
  InsertarBloqueRCodigo ${strinfdir}/src/Dependencias.R "vacio" "r r0001, echo=F, include=F, warning=F, message=F"

# ### insertar tablas usando bloque codigo R
  InsertarBloqueRTabla ${strinfdir}/tabs/tabdesc.csv ${strinfdir}/tabs/tabdesc.R "headtabdesc" "r r0002, eval=T, echo=F"
  InsertarBloqueRTabla ${strinfdir}/tabs/tabtvar.csv ${strinfdir}/tabs/tabtvar.R "headtabtvar" "r r0003, eval=T, echo=F"
  InsertarBloqueRTabla ${strinfdir}/tabs/tabsmpl.csv ${strinfdir}/tabs/tabsmpl.R "headtabsmpl" "r r0004, eval=T, echo=F"
  InsertarBloqueRTabla ${strinfdir}/tabs/kmn_grp00_var08_objetos_print.csv ${strinfdir}/tabs/kmn_grp00_var08_objetos_print.R "headkmn_grp00_var08_objetos_print" "r r0005, eval=T, echo=F"
