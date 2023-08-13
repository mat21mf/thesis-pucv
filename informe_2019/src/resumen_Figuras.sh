  ### variables entorno
  declare -gx dirfig="$HOME/Documents/TrabajosExtra/petra_biotopos/informe_2019/figs"
  declare -gx dirdig="$HOME/Documents/TrabajosExtra/petra_biotopos/src/diag"

  ### agregar bordes (documento word)
  convert ${dirdig}/diagrama_01_rasters.png      -bordercolor black -border .1%x.1% ${dirdig}/diagrama_01_rasters_border.png
  convert ${dirdig}/diagrama_02_xyz.png          -bordercolor black -border .1%x.1% ${dirdig}/diagrama_02_xyz_border.png
  convert ${dirdig}/diagrama_03_bigmatrices.png  -bordercolor black -border .1%x.1% ${dirdig}/diagrama_03_bigmatrices_border.png
  convert ${dirdig}/diagrama_04_bigkmeans.png    -bordercolor black -border .1%x.1% ${dirdig}/diagrama_04_bigkmeans_border.png
  convert ${dirdig}/diagrama_05_estadigrafos.png -bordercolor black -border .1%x.1% ${dirdig}/diagrama_05_estadigrafos_border.png
  convert ${dirdig}/diagrama_06_invertir_xyz.png -bordercolor black -border .1%x.1% ${dirdig}/diagrama_06_invertir_xyz_border.png
  convert ${dirdig}/diagrama_07_matconf.png      -bordercolor black -border .1%x.1% ${dirdig}/diagrama_07_matconf_border.png

  #### Ejemplos
  TexGraphInput ${dirdig}/diagrama_01_rasters.png       "width=.9\textwidth" > ${dirfig}/figrast.tex
  TexGraphInput ${dirdig}/diagrama_02_xyz.png           "width=.7\textwidth" > ${dirfig}/figixyz.tex
  TexGraphInput ${dirdig}/diagrama_03_bigmatrices.png   "width=.7\textwidth" > ${dirfig}/figbigm.tex
  TexGraphInput ${dirdig}/diagrama_04_bigkmeans.png     "width=.7\textwidth" > ${dirfig}/figbigk.tex
  TexGraphInput ${dirdig}/diagrama_05_estadigrafos.png  "width=.8\textwidth" > ${dirfig}/figesta.tex
  TexGraphInput ${dirdig}/diagrama_06_invertir_xyz.png  "width=.8\textwidth" > ${dirfig}/figoxyz.tex
  TexGraphInput ${dirdig}/diagrama_07_matconf.png       "width=.8\textwidth" > ${dirfig}/figmatc.tex

  #### Ejemplos
  TexGraphHead  "Proceso de homogenización de imágenes satelitales."     "reffigrast"  "figrast" > ${dirfig}/headfigrast.tex
  TexGraphHead  "Proceso de conversión de imágenes satelitales."         "reffigixyz"  "figixyz" > ${dirfig}/headfigixyz.tex
  TexGraphHead  "Proceso de creación de objetos de memoria compartida."  "reffigbigm"  "figbigm" > ${dirfig}/headfigbigm.tex
  TexGraphHead  "Proceso de ejecución de k-medias con big matrices."     "reffigbigk"  "figbigk" > ${dirfig}/headfigbigk.tex
  TexGraphHead  "Proceso de extracción de estadígrafos de evaluación."   "reffigesta"  "figesta" > ${dirfig}/headfigesta.tex
  TexGraphHead  "Proceso de rasterización desde big matrices."           "reffigoxyz"  "figoxyz" > ${dirfig}/headfigoxyz.tex
  TexGraphHead  "Proceso de caracterización de variables según cluster." "reffigmatc"  "figmatc" > ${dirfig}/headfigmatc.tex

  ###
  ### resultados kmeans puntuales R2
  ### - se pueden generar un stock total con imagenes individuales y elegir algunas
  ### - usar unidas de 3x3 para ahorrar espacio en anexos
  ### - orden, R2, Elbow, CH, dR2, dElbow, dCH, ddR2, ddElbow, ddCH
  ### - no copiar desde origen porque no se editan las figuras, las tablas si
  ###

  ###
  ### fusionadas
  ###

# ### individuales input R2
# TexGraphInput ${strsrcdir}/png/kmn_grp00_var08_objetos_R2.png "width=.8\textwidth" > ${dirfig}/kmn_grp00_var08_objetos_R2.tex
# TexGraphInput ${strsrcdir}/png/kmn_grp01_var08_objetos_R2.png "width=.8\textwidth" > ${dirfig}/kmn_grp01_var08_objetos_R2.tex
# TexGraphInput ${strsrcdir}/png/kmn_grp02_var08_objetos_R2.png "width=.8\textwidth" > ${dirfig}/kmn_grp02_var08_objetos_R2.tex
# TexGraphInput ${strsrcdir}/png/kmn_grp03_var08_objetos_R2.png "width=.8\textwidth" > ${dirfig}/kmn_grp03_var08_objetos_R2.tex
# TexGraphInput ${strsrcdir}/png/kmn_grp04_var08_objetos_R2.png "width=.8\textwidth" > ${dirfig}/kmn_grp04_var08_objetos_R2.tex
# TexGraphInput ${strsrcdir}/png/kmn_grp05_var08_objetos_R2.png "width=.8\textwidth" > ${dirfig}/kmn_grp05_var08_objetos_R2.tex
# TexGraphInput ${strsrcdir}/png/kmn_grp06_var08_objetos_R2.png "width=.8\textwidth" > ${dirfig}/kmn_grp06_var08_objetos_R2.tex

# ### individuales input elbow
# TexGraphInput ${strsrcdir}/png/kmn_grp00_var08_objetos_elbow.png "width=.8\textwidth" > ${dirfig}/kmn_grp00_var08_objetos_elbow.tex
# TexGraphInput ${strsrcdir}/png/kmn_grp01_var08_objetos_elbow.png "width=.8\textwidth" > ${dirfig}/kmn_grp01_var08_objetos_elbow.tex
# TexGraphInput ${strsrcdir}/png/kmn_grp02_var08_objetos_elbow.png "width=.8\textwidth" > ${dirfig}/kmn_grp02_var08_objetos_elbow.tex
# TexGraphInput ${strsrcdir}/png/kmn_grp03_var08_objetos_elbow.png "width=.8\textwidth" > ${dirfig}/kmn_grp03_var08_objetos_elbow.tex
# TexGraphInput ${strsrcdir}/png/kmn_grp04_var08_objetos_elbow.png "width=.8\textwidth" > ${dirfig}/kmn_grp04_var08_objetos_elbow.tex
# TexGraphInput ${strsrcdir}/png/kmn_grp05_var08_objetos_elbow.png "width=.8\textwidth" > ${dirfig}/kmn_grp05_var08_objetos_elbow.tex
# TexGraphInput ${strsrcdir}/png/kmn_grp06_var08_objetos_elbow.png "width=.8\textwidth" > ${dirfig}/kmn_grp06_var08_objetos_elbow.tex

# ### individuales input ch
# TexGraphInput ${strsrcdir}/png/kmn_grp00_var08_objetos_ch.png "width=.8\textwidth" > ${dirfig}/kmn_grp00_var08_objetos_ch.tex
# TexGraphInput ${strsrcdir}/png/kmn_grp01_var08_objetos_ch.png "width=.8\textwidth" > ${dirfig}/kmn_grp01_var08_objetos_ch.tex
# TexGraphInput ${strsrcdir}/png/kmn_grp02_var08_objetos_ch.png "width=.8\textwidth" > ${dirfig}/kmn_grp02_var08_objetos_ch.tex
# TexGraphInput ${strsrcdir}/png/kmn_grp03_var08_objetos_ch.png "width=.8\textwidth" > ${dirfig}/kmn_grp03_var08_objetos_ch.tex
# TexGraphInput ${strsrcdir}/png/kmn_grp04_var08_objetos_ch.png "width=.8\textwidth" > ${dirfig}/kmn_grp04_var08_objetos_ch.tex
# TexGraphInput ${strsrcdir}/png/kmn_grp05_var08_objetos_ch.png "width=.8\textwidth" > ${dirfig}/kmn_grp05_var08_objetos_ch.tex
# TexGraphInput ${strsrcdir}/png/kmn_grp06_var08_objetos_ch.png "width=.8\textwidth" > ${dirfig}/kmn_grp06_var08_objetos_ch.tex

  ###
  ### fusionadas
  ###

#  convert -append ../../src/png/kmn_grp00_var08_objetos_R2.png
#                  ../../src/png/kmn_grp00_var08_objetos_dR2.png
#                  ../../src/png/kmn_grp00_var08_objetos_elbow.png
#                  ../../src/png/kmn_grp00_var08_objetos_ch.png
