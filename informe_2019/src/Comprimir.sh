  declare -gx strd01="$HOME/Documents/TrabajosExtra/petra_biotopos"

# if [[ -f ${strd01}/informe_2019/zip/Tesis_Borrador_2019_08_21.7z ]] ; then
#   rm -rf ${strd01}/informe_2019/zip/Tesis_Borrador_2019_08_21.7z
# fi

# 7za a -t7z -aoa -mx=9 \
# ${strd01}/informe_2019/zip/Tesis_Borrador_2019_08_21.7z \
# ${strd01}/informe_2019/resumen.pdf \
# ${strd01}/informe_2019/word/resumen_word.docx \
# ${strd01}/src/xlsx/kmedias_estadigrafos_topologicas_bioticas.xlsx


# - resumen.pdf
#     Tesis en pdf.
# - resumen_word.docx
#     Tesis en word.
# - Protocolo_para_cobertura_física_de_biotopos.docx
#     Informe de labores Julio 2019. Solo como evidencia y datos.
# - analisis_entre_cluster.pptx
#     Informe de Agosto 2019. Lo mismo que el anterior.

#     Aun no tengo una bibliografía como la que necesito de la parte
#     tuya porque mas bien son cosas técnicas y en ingles. Aunque si
#     están mencionadas en ambas versiones.

  7za a -t7z -aoa -mx=9 \
    ../../informe_2019/zip/Borrador.7z \
    ../../informe_2019/resumen.pdf \
    ../../informe_2019/word/resumen_word.docx \
    ../../articulos/Protocolo_para_cobertura_física_de_biotopos.docx \
    ../../src/xlsx/analisis_entre_cluster.pptx
