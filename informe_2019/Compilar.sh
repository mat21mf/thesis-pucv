  ### funcion para modificar documento
  source ./src/FuncionesAuxiliares.sh

  ### editar entradas bibliografia
  sed -r -i 's/(@)(.*):(.*)/\1\2\3/' resumen.bib
  sed -r -i 's/\t/    /g' resumen.bib

  ### preparar imagenes
  bash ./src/resumen_Figuras.sh

  ### preparar tablas
  bash ./src/resumen_Tablas.sh

  ### compilar pdf
  R --slave -e "rmarkdown::render( \"resumen.md\" )"

  ### compilar word modificado
  R --slave -e "rmarkdown::render( \"word/resumen_word.Rmd\" , output_dir=\"word\" )"

# ### editar word con vbscript (pendiente)
# wine cscript ./src/MacroFormatearDocumento.vb
