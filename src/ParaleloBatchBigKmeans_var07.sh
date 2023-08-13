# ### paralelo opcion 1 (no funciona)
# parallel       --block -1 --pipepart -a EjecutarBatchBigKmeans_var07.sh LANG=C bash

  ### paralelo opcion 2
  if [[ $(nproc) -gt 10 ]] ; then
   #echo "mayor"
    cat EjecutarBatchBigKmeans_var07.sh | parallel --bar -j 7
  else
   #echo "menor"
    cat EjecutarBatchBigKmeans_var07.sh | parallel --bar -j $(nproc)
  fi
