  declare strpat="$HOME/Documents/TrabajosExtra/petra_biotopos"
  declare strurl="https://github.com/cran"
  declare strffr="https://github.com/hypertidy"
  declare strrep="$HOME/mis.sources/contrib-tar"

# R --slave --args < ${strpat}/src/descargar_codigo_fuente_R.R

# tar xzvf ${strpat}/tar/SwarmSVM_0.1-5.tar.gz    --directory "${strpat}/Rsrc"
# tar xzvf ${strpat}/tar/arules_1.6-3.tar.gz      --directory "${strpat}/Rsrc"
# tar xzvf ${strpat}/tar/clue_0.3-57.tar.gz       --directory "${strpat}/Rsrc"
# tar xzvf ${strpat}/tar/clusterCrit_1.2.8.tar.gz --directory "${strpat}/Rsrc"
# tar xzvf ${strpat}/tar/dismo_1.1-4.tar.gz       --directory "${strpat}/Rsrc"
# tar xzvf ${strpat}/tar/ff_2.2-14.tar.gz         --directory "${strpat}/Rsrc"
# cp       ${strrep}/ffraster.tar.gz                          "${strpat}/tar"
# tar xzvf ${strpat}/tar/ffraster.tar.gz          --directory "${strpat}/Rsrc"
# tar xzvf ${strpat}/tar/moments_0.14.tar.gz      --directory "${strpat}/Rsrc"
# tar xzvf ${strpat}/tar/raster_2.8-19.tar.gz     --directory "${strpat}/Rsrc"
# tar xzvf ${strpat}/tar/rgdal_1.4-3.tar.gz       --directory "${strpat}/Rsrc"
# tar xzvf ${strpat}/tar/rgeos_0.4-2.tar.gz       --directory "${strpat}/Rsrc"
# tar xzvf ${strpat}/tar/sp_1.3-1.tar.gz          --directory "${strpat}/Rsrc"
# tar xzvf ${strpat}/tar/sf_0.7-4.tar.gz          --directory "${strpat}/Rsrc"

# wget -c ${strurl}/SwarmSVM       -O ${strpat}/html/SwarmSVM_git.html
# wget -c ${strurl}/arules         -O ${strpat}/html/arules_git.html
# wget -c ${strurl}/clue           -O ${strpat}/html/clue_git.html
# wget -c ${strurl}/clusterCrit    -O ${strpat}/html/clusterCrit_git.html
# wget -c ${strurl}/dismo          -O ${strpat}/html/dismo_git.html
# wget -c ${strurl}/ff             -O ${strpat}/html/ff.html
# wget -c ${strffr}/ffraster       -O ${strpat}/html/ffraster.html
# wget -c ${strurl}/moments        -O ${strpat}/html/moments_git.html
# wget -c ${strurl}/raster         -O ${strpat}/html/raster_git.html
# wget -c ${strurl}/rgdal          -O ${strpat}/html/rgdal_git.html
# wget -c ${strurl}/rgeos          -O ${strpat}/html/rgeos_git.html
# wget -c ${strurl}/sp             -O ${strpat}/html/sp_git.html
# wget -c ${strurl}/sf             -O ${strpat}/html/sf_git.html

  function ExtraerLangStats ()
  {
    fle=$( echo $( basename ${1} .html ) | cut -d '_' -f 1 )
    ( echo -n "${fle}: " ;
    cat ${1} |
      pup '.repository-lang-stats > ol > li json{}' |
      jq '.[]  | { lenguaje   : .children[].children[1].text ,
                   porcentaje : .children[].children[2].text } | join(": ")' |
      jq -s '. | join("; ")' )
  }
  export -f ExtraerLangStats

# ExtraerLangStats ${strpat}/html/SwarmSVM_git.html
# ExtraerLangStats ${strpat}/html/arules_git.html
# ExtraerLangStats ${strpat}/html/clue_git.html
# ExtraerLangStats ${strpat}/html/clusterCrit_git.html
# ExtraerLangStats ${strpat}/html/dismo_git.html
# ExtraerLangStats ${strpat}/html/ff.html
# ExtraerLangStats ${strpat}/html/ffraster.html
# ExtraerLangStats ${strpat}/html/moments_git.html
# ExtraerLangStats ${strpat}/html/raster_git.html
# ExtraerLangStats ${strpat}/html/rgdal_git.html
# ExtraerLangStats ${strpat}/html/rgeos_git.html
# ExtraerLangStats ${strpat}/html/sp_git.html
# ExtraerLangStats ${strpat}/html/sf_git.html
