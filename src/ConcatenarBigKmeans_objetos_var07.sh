# ### deje kmn0001 para grupos 02 al 00 por error en var07
# ### corregir en GenerarBatchBigKmeans.sh OK
# ### Pendiente
# ### - concatenar totss
# ###
# find -type f -name 'ProcesoBigKmeans_kmn00*var07*' \
#   | sort -t'_' -k3,3 | xargs ls -tr # | grep -i --color 'kmn[0]\{3\}[1]'

  ### cargar objetos RData
  declare -gx ConcatenarObjetoRData="
  find -type f -name 'ProcesoBigKmeans_kmn00*var07*' \
    | sort -t'_' -k3,3 | xargs grep -i --color '^  , file=' \
    | cut -d'=' -f 2 | sed -r 's/(.*)/load( \1/'
  "
  ##| grep -i --color 'kmn[0]\{3\}[1]'

  ### objeto vector time elapsed
  declare -gx ConcatenarObjetoTime="
  find -type f -name 'ProcesoBigKmeans_kmn00*var07*' \
    | sort -t'_' -k3,3 | xargs grep -i --color '^    .*_time' \
    | cut -d' ' -f 5 \
    | sed -r 's/(.*)/\1[3]/' \
    | xargs -n30 -d'\n' \
    | sed -r 's/ /, /g' \
    | gawk -F',' '{print \$1\" <- c(\"\$0\")\"}' \
    | sed -r 's/kmn[0-9]{4}/kmn/;s/\[3\]//'
  "

  ### objeto vector tot.withinss
  declare -gx ConcatenarObjetoTotWithinss="
  find -type f -name 'ProcesoBigKmeans_kmn00*var07*' \
    | sort -t'_' -k3,3 | xargs grep -i --color '^  , .*_withinss' \
    | cut -d' ' -f 4 \
    | sed -r 's/(.*)/sum(\1)/' \
    | xargs -n30 -d'\n' \
    | sed -r 's/ /, /g' \
    | gawk -F',' '{print \$1\" <- c(\"\$0\")\"}' \
    | sed -r 's/kmn[0-9]{4}/kmn/;s/sum\(//;s/\)//'
  "

  ### concatenar tablas por grupo
  declare -gx ConcatenarTablaObjetos01="
  ( bash -c \"\${ConcatenarObjetoTime}\" ;
    bash -c \"\${ConcatenarObjetoTotWithinss}\" ) \
    | sed -r 's/(.*) <- (.*)/\1/' \
    | sort -t'_' -k2,2 \
    | xargs -n2 -d'\n' \
    | sed -r 's/ /,/g' \
    | gawk -F',' '{print \$1\" <- data.frame(cbind(k=2:31,tiempo.seg=\"\$1\",tiempo.hrs=\"\$1\"/3600,tot.withinss=\"\$2\"))\"}' \
    | sed -r 's/time/objetos/'
  "

  ### cargar y concatenar totss
  declare -gx ConcatenarTablaObjetos02="
  echo \"load(\\\"totss.RData\\\")\"
  paste -d';' \
    <( bash -c \"\${ConcatenarTablaObjetos01}\" ) \
    <( grep -i -o --color 'grupo[0-9]\{2\}stXM\.totss' BigMatrixDesvMedia.R ) \
    | sed -r 's/\)\);/,totss=/;s/$/))/'
  "

  ### escribir en Rscript
  declare -gx EscribirConcatenacionObjetos01="
  ( echo ;
    bash -c \"\${ConcatenarObjetoRData}\" ;
    echo ;
    bash -c \"\${ConcatenarObjetoTime}\" ;
    echo ;
    bash -c \"\${ConcatenarObjetoTotWithinss}\" ;
    echo ;
    bash -c \"\${ConcatenarTablaObjetos02}\" )
  "

  ### grabar objetos
  declare -gx EscribirConcatenacionObjetos02="
  bash -c \"\${EscribirConcatenacionObjetos01}\" \
    | tail -n 7 \
    | sed -r 's/(.*) <- (.*)/  \1/' \
    | sed -r '2,\$s/^  /, /' \
    | sed -r '1i\save(' \
    | sed -r '\$a\, file=\"kmn_var07_objetos.RData\" )'
  "

  ### unir todo
  declare -gx EscribirConcatenacionObjetos03="
  ( bash -c \"\${EscribirConcatenacionObjetos01}\" ;
    echo ;
    bash -c \"\${EscribirConcatenacionObjetos02}\" )
  "

  ### escribir a Rscript
  bash -c "${EscribirConcatenacionObjetos03}" \
      > ConcatenarBigKmeans_objetos_var07.R
