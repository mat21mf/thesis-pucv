  ### escribir funcion test join 02
  function UnirArchivosAWK ()
  {
    time gawk 'BEGIN{FS=OFS=","} NR==FNR {a[$1]=$0;next} {print $0,a[$1],a[$2]}' "${1}" "${2}" \
      | gawk 'BEGIN{FS=OFS=","} {if($6=="") {print $1,$2,$3,$5} else {print $1,$2,$3,$5}}' > "${3}"
  }
  export -f UnirArchivosAWK

  function QuitarIdCoordenadas ()
  {
    time gawk 'BEGIN{FS=",";OFS=" "} NR==1 {X Y Z} NR>1 {if($4!="") {print $2,$3,$4} else {print $2,$3,"3.4028234663852886e+38"}}' "${1}" > "${2}"
  }
  export -f QuitarIdCoordenadas
