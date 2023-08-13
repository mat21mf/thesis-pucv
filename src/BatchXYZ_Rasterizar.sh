# ### sin paralelo falta formato inline
# time R --slave -f RutinaXYZ_Rasterizar.sh

# ### con paralelo pendiente cambiar extension
 #parallel --bar --block -7 -j7 --pipepart -a   RutinaXYZ_Rasterizar.sh                 LANG=C bash
# parallel --bar --block -7 -j7 --pipepart -a   RutinaXYZ_Rasterizar_kmn0018_var08.sh   LANG=C bash
# parallel --bar --block -7 -j7 --pipepart -a   RutinaXYZ_Rasterizar_kmn0024_var08.sh   LANG=C bash

  parallel --bar --block -7 -j7 --pipepart -a   RutinaXYZ_Rasterizar_grupo01_kmn0006_var08.sh   LANG=C bash
  parallel --bar --block -7 -j7 --pipepart -a   RutinaXYZ_Rasterizar_grupo02_kmn0010_var08.sh   LANG=C bash
  parallel --bar --block -7 -j7 --pipepart -a   RutinaXYZ_Rasterizar_grupo03_kmn0007_var08.sh   LANG=C bash
  parallel --bar --block -7 -j7 --pipepart -a   RutinaXYZ_Rasterizar_grupo04_kmn0008_var08.sh   LANG=C bash
  parallel --bar --block -7 -j7 --pipepart -a   RutinaXYZ_Rasterizar_grupo05_kmn0008_var08.sh   LANG=C bash
  parallel --bar --block -7 -j7 --pipepart -a   RutinaXYZ_Rasterizar_grupo06_kmn0009_var08.sh   LANG=C bash
