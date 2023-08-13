# ### imprimir
# echo $rasdir
# echo $bakdir
# echo $srcdir

  ### escanear descritores
  function ModificarRuta ()
  {
    ### definir rutas
    if [[ "$OSTYPE" == "linux-gnu" ]] ; then
      local -g rasdir="/home/matbox/Documents/TrabajosExtra/DriveBiotopos/Matias_Rebolledo/Raster/CapasFAU23_5"
      local -g bakdir="/home/matbox/Documents/TrabajosExtra/petra_biotopos/bigmatrices"
      local -g srcdir="/home/matbox/Documents/TrabajosExtra/petra_biotopos/src"
     #echo ${rasdir}
     #echo ${bakdir}
     #echo ${srcdir}
    fi
    if [[ "$OSTYPE" == "cygwin" ]] ; then
      local -g rasdir="/cygdrive/d/Matias_Rebolledo/Raster/CapasFAU23_5"
      local -g bakdir="/cygdrive/d/Matias_Rebolledo/Raster/bigmatrices"
      local -g srcdir="/cygdrive/d/Matias_Rebolledo/Biotopos/src"
     #echo ${rasdir}
     #echo ${bakdir}
     #echo ${srcdir}
    fi

    grep -i -H -o --color 'dirname = \".*\"' "${1}"   \
      | gawk -v vdir="$bakdir" 'BEGIN{FS=OFS=":"} {print $2,vdir,$1}' \
      | gawk 'BEGIN{FS=OFS=":"} {gsub(/\//,"\\/",$1) ; gsub(/\//,"\\/",$2) ; print $1,"dirname = \""$2"\\/\"",$3}' \
      | gawk 'BEGIN{FS=OFS=":"} {gsub(/"/,"\\\"",$1) ; gsub(/"/,"\\\"",$2) ; print $1,$2,$3}' \
      | sed -r 's/(.*):(.*):(.*)/sed -r -i '\''s\/\1\/\2\/'\'' \3/' \
      | bash
  }
  export -f ModificarRuta

  ModificarRuta ../bigmatrices/grupo00st.desc
  ModificarRuta ../bigmatrices/grupo01st.desc
  ModificarRuta ../bigmatrices/grupo02st.desc
  ModificarRuta ../bigmatrices/grupo03st.desc
  ModificarRuta ../bigmatrices/grupo04st.desc
  ModificarRuta ../bigmatrices/grupo05st.desc
  ModificarRuta ../bigmatrices/grupo06st.desc
