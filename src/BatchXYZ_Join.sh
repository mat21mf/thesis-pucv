# ### sin paralelo falta formato inline
# time R --slave -f RutinaXYZ_Join.sh

# ### con paralelo pendiente cambiar extension
 #parallel --bar --block -7 -j7 --pipepart -a   RutinaXYZ_Join.sh                 LANG=C bash
# parallel --bar --block -7 -j7 --pipepart -a   RutinaXYZ_Join_kmn0018_var08.sh   LANG=C bash
# parallel --bar --block -7 -j7 --pipepart -a   RutinaXYZ_Join_kmn0024_var08.sh   LANG=C bash

  parallel --bar --block -7 -j7 --pipepart -a   RutinaXYZ_Join_grupo01_kmn0006_var08.sh   LANG=C bash
  parallel --bar --block -7 -j7 --pipepart -a   RutinaXYZ_Join_grupo02_kmn0010_var08.sh   LANG=C bash
  parallel --bar --block -7 -j7 --pipepart -a   RutinaXYZ_Join_grupo03_kmn0007_var08.sh   LANG=C bash
  parallel --bar --block -7 -j7 --pipepart -a   RutinaXYZ_Join_grupo04_kmn0008_var08.sh   LANG=C bash
  parallel --bar --block -7 -j7 --pipepart -a   RutinaXYZ_Join_grupo05_kmn0008_var08.sh   LANG=C bash
  parallel --bar --block -7 -j7 --pipepart -a   RutinaXYZ_Join_grupo06_kmn0009_var08.sh   LANG=C bash
