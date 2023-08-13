  declare -gx pthsrc="$HOME/Documents/TrabajosExtra/petra_biotopos/informe_2019"

  function ModificarPreambuloWord ()
  {
    sed -r -i 's/pdf_document/word_document/' "${1}"
    sed -r -i '/before_body: tex\/before_body.tex/d' "${1}"
    sed -r -i '/in_header: tex\/header.tex/d' "${1}"
    sed -r -i 's/number_sections: true/toc: yes/' "${1}"
    sed -r -i 's/includes:/reference_docx: resumen_style.docx/' "${1}"
    sed -r -i '/margin=2.25cm/d' "${1}"
  }
  export -f ModificarPreambuloWord

  function ModificarFigurasWord ()
  {
    gawk -i inplace '{sub( /'"${1}"'/ , "'"${2}"'" , $0) ; print $0}' ${pthsrc}/word/resumen_word.Rmd
  }
  export -f ModificarFigurasWord

  function InsertarTablaAscii ()
  {
    mlr --icsv --opprint --right --barred cat "${1}" > "${2}"
   #mlr --omd cat "${1}" > "${2}"
   #unix2dos "${2}" > /dev/null 2>&1
   #echo "Table: ${4}" >> "${2}"
    bash -c "sed -r -i \"/\\\\input\{${3}\}/r ${2}\" ${pthsrc}/word/resumen_word.Rmd"
    bash -c "sed -r -i \"/\\\input\{${3}\}/d\" ${pthsrc}/word/resumen_word.Rmd"
  }
  export -f InsertarTablaAscii

  function InsertarBloqueRCodigo ()
  {
    bash -c "sed -r -i \"/\\\\input\{${2}\}/r ${pthsrc}/src/TerminarBloque.R\" ${pthsrc}/word/resumen_word.Rmd"
    bash -c "sed -r -i \"/\\\\input\{${2}\}/r ${1}\" ${pthsrc}/word/resumen_word.Rmd"
    bash -c "sed -r -i \"/\\\\input\{${2}\}/r ${pthsrc}/src/IniciarBloque.R\" ${pthsrc}/word/resumen_word.Rmd"
    bash -c "sed -r -i \"s/\{r\}/{${3}}/\" ${pthsrc}/word/resumen_word.Rmd"
    bash -c "sed -r -i \"/\\\input\{${2}\}/d\" ${pthsrc}/word/resumen_word.Rmd"
  }
  export -f InsertarBloqueRCodigo

  function InsertarBloqueRTabla ()
  {
    touch      "${2}"
    strdfm=$( basename "${1}" .csv )
    echo "${strdfm} <- read.table( \"${1}\" , header=T , sep=\",\" )" > ${2}
    echo "pander::pander( ${strdfm} )" >> ${2}
    bash -c "sed -r -i \"/\\\\input\{${3}\}/r ${pthsrc}/src/TerminarBloque.R\" ${pthsrc}/word/resumen_word.Rmd"
    bash -c "sed -r -i \"/\\\\input\{${3}\}/r ${2}\" ${pthsrc}/word/resumen_word.Rmd"
    bash -c "sed -r -i \"/\\\\input\{${3}\}/r ${pthsrc}/src/IniciarBloque.R\" ${pthsrc}/word/resumen_word.Rmd"
    bash -c "sed -r -i \"s/\{r\}/{${4}}/\" ${pthsrc}/word/resumen_word.Rmd"
    bash -c "sed -r -i \"/\\\input\{${3}\}/d\" ${pthsrc}/word/resumen_word.Rmd"
  }
  export -f InsertarBloqueRTabla
