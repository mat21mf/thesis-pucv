# ### replicar
# scp RutinaMatConf_PrepararImagen.sh RutinaMatConf_PrepararImagen_grupo00_kmn0010_var08.sh
# scp RutinaMatConf_PrepararImagen.sh RutinaMatConf_PrepararImagen_grupo01_kmn0010_var08.sh
# scp RutinaMatConf_PrepararImagen.sh RutinaMatConf_PrepararImagen_grupo02_kmn0010_var08.sh
# scp RutinaMatConf_PrepararImagen.sh RutinaMatConf_PrepararImagen_grupo03_kmn0010_var08.sh
# scp RutinaMatConf_PrepararImagen.sh RutinaMatConf_PrepararImagen_grupo04_kmn0010_var08.sh
# scp RutinaMatConf_PrepararImagen.sh RutinaMatConf_PrepararImagen_grupo05_kmn0010_var08.sh
# scp RutinaMatConf_PrepararImagen.sh RutinaMatConf_PrepararImagen_grupo06_kmn0010_var08.sh

# ### editar replicas
# sed -r -i 's/grupo00/grupo00/g;s/grp00/grp00/g;s/0010/0010/g' RutinaMatConf_PrepararImagen_grupo00_kmn0010_var08.sh
# sed -r -i 's/grupo00/grupo01/g;s/grp00/grp01/g;s/0010/0010/g' RutinaMatConf_PrepararImagen_grupo01_kmn0010_var08.sh
# sed -r -i 's/grupo00/grupo02/g;s/grp00/grp02/g;s/0010/0010/g' RutinaMatConf_PrepararImagen_grupo02_kmn0010_var08.sh
# sed -r -i 's/grupo00/grupo03/g;s/grp00/grp03/g;s/0010/0010/g' RutinaMatConf_PrepararImagen_grupo03_kmn0010_var08.sh
# sed -r -i 's/grupo00/grupo04/g;s/grp00/grp04/g;s/0010/0010/g' RutinaMatConf_PrepararImagen_grupo04_kmn0010_var08.sh
# sed -r -i 's/grupo00/grupo05/g;s/grp00/grp05/g;s/0010/0010/g' RutinaMatConf_PrepararImagen_grupo05_kmn0010_var08.sh
# sed -r -i 's/grupo00/grupo06/g;s/grp00/grp06/g;s/0010/0010/g' RutinaMatConf_PrepararImagen_grupo06_kmn0010_var08.sh

# ### generar batch paralelo
# echo "  bash RutinaMatConf_PrepararImagen_grupo00_kmn0010_var08.sh" >  TareaMatConf_PrepararImagen_kmn0010_var08.sh
# echo "  bash RutinaMatConf_PrepararImagen_grupo01_kmn0010_var08.sh" >> TareaMatConf_PrepararImagen_kmn0010_var08.sh
# echo "  bash RutinaMatConf_PrepararImagen_grupo02_kmn0010_var08.sh" >> TareaMatConf_PrepararImagen_kmn0010_var08.sh
# echo "  bash RutinaMatConf_PrepararImagen_grupo03_kmn0010_var08.sh" >> TareaMatConf_PrepararImagen_kmn0010_var08.sh
# echo "  bash RutinaMatConf_PrepararImagen_grupo04_kmn0010_var08.sh" >> TareaMatConf_PrepararImagen_kmn0010_var08.sh
# echo "  bash RutinaMatConf_PrepararImagen_grupo05_kmn0010_var08.sh" >> TareaMatConf_PrepararImagen_kmn0010_var08.sh
# echo "  bash RutinaMatConf_PrepararImagen_grupo06_kmn0010_var08.sh" >> TareaMatConf_PrepararImagen_kmn0010_var08.sh

# ### generar llamada paralelo
# echo "  parallel --bar --block -7 -j7 --pipepart -a   TareaMatConf_PrepararImagen_kmn0010_var08.sh   LANG=C bash" >  BatchMatConf_PrepararImagen.sh

# ### replicar
# scp RutinaMatConf_PrepararImagen.sh RutinaMatConf_PrepararImagen_grupo00_kmn0018_var08.sh
# scp RutinaMatConf_PrepararImagen.sh RutinaMatConf_PrepararImagen_grupo01_kmn0018_var08.sh
# scp RutinaMatConf_PrepararImagen.sh RutinaMatConf_PrepararImagen_grupo02_kmn0018_var08.sh
# scp RutinaMatConf_PrepararImagen.sh RutinaMatConf_PrepararImagen_grupo03_kmn0018_var08.sh
# scp RutinaMatConf_PrepararImagen.sh RutinaMatConf_PrepararImagen_grupo04_kmn0018_var08.sh
# scp RutinaMatConf_PrepararImagen.sh RutinaMatConf_PrepararImagen_grupo05_kmn0018_var08.sh
# scp RutinaMatConf_PrepararImagen.sh RutinaMatConf_PrepararImagen_grupo06_kmn0018_var08.sh

# ### editar replicas
# sed -r -i 's/grupo00/grupo00/g;s/grp00/grp00/g;s/0010/0018/g' RutinaMatConf_PrepararImagen_grupo00_kmn0018_var08.sh
# sed -r -i 's/grupo00/grupo01/g;s/grp00/grp01/g;s/0010/0018/g' RutinaMatConf_PrepararImagen_grupo01_kmn0018_var08.sh
# sed -r -i 's/grupo00/grupo02/g;s/grp00/grp02/g;s/0010/0018/g' RutinaMatConf_PrepararImagen_grupo02_kmn0018_var08.sh
# sed -r -i 's/grupo00/grupo03/g;s/grp00/grp03/g;s/0010/0018/g' RutinaMatConf_PrepararImagen_grupo03_kmn0018_var08.sh
# sed -r -i 's/grupo00/grupo04/g;s/grp00/grp04/g;s/0010/0018/g' RutinaMatConf_PrepararImagen_grupo04_kmn0018_var08.sh
# sed -r -i 's/grupo00/grupo05/g;s/grp00/grp05/g;s/0010/0018/g' RutinaMatConf_PrepararImagen_grupo05_kmn0018_var08.sh
# sed -r -i 's/grupo00/grupo06/g;s/grp00/grp06/g;s/0010/0018/g' RutinaMatConf_PrepararImagen_grupo06_kmn0018_var08.sh

# ### generar batch paralelo
# echo "  bash RutinaMatConf_PrepararImagen_grupo00_kmn0018_var08.sh" >  TareaMatConf_PrepararImagen_kmn0018_var08.sh
# echo "  bash RutinaMatConf_PrepararImagen_grupo01_kmn0018_var08.sh" >> TareaMatConf_PrepararImagen_kmn0018_var08.sh
# echo "  bash RutinaMatConf_PrepararImagen_grupo02_kmn0018_var08.sh" >> TareaMatConf_PrepararImagen_kmn0018_var08.sh
# echo "  bash RutinaMatConf_PrepararImagen_grupo03_kmn0018_var08.sh" >> TareaMatConf_PrepararImagen_kmn0018_var08.sh
# echo "  bash RutinaMatConf_PrepararImagen_grupo04_kmn0018_var08.sh" >> TareaMatConf_PrepararImagen_kmn0018_var08.sh
# echo "  bash RutinaMatConf_PrepararImagen_grupo05_kmn0018_var08.sh" >> TareaMatConf_PrepararImagen_kmn0018_var08.sh
# echo "  bash RutinaMatConf_PrepararImagen_grupo06_kmn0018_var08.sh" >> TareaMatConf_PrepararImagen_kmn0018_var08.sh

# ### generar llamada paralelo
# echo "  parallel --bar --block -7 -j7 --pipepart -a   TareaMatConf_PrepararImagen_kmn0018_var08.sh   LANG=C bash" >> BatchMatConf_PrepararImagen.sh

# ### replicar
# scp RutinaMatConf_PrepararImagen.sh RutinaMatConf_PrepararImagen_grupo00_kmn0024_var08.sh
# scp RutinaMatConf_PrepararImagen.sh RutinaMatConf_PrepararImagen_grupo01_kmn0024_var08.sh
# scp RutinaMatConf_PrepararImagen.sh RutinaMatConf_PrepararImagen_grupo02_kmn0024_var08.sh
# scp RutinaMatConf_PrepararImagen.sh RutinaMatConf_PrepararImagen_grupo03_kmn0024_var08.sh
# scp RutinaMatConf_PrepararImagen.sh RutinaMatConf_PrepararImagen_grupo04_kmn0024_var08.sh
# scp RutinaMatConf_PrepararImagen.sh RutinaMatConf_PrepararImagen_grupo05_kmn0024_var08.sh
# scp RutinaMatConf_PrepararImagen.sh RutinaMatConf_PrepararImagen_grupo06_kmn0024_var08.sh

# ### editar replicas
# sed -r -i 's/grupo00/grupo00/g;s/grp00/grp00/g;s/0010/0024/g' RutinaMatConf_PrepararImagen_grupo00_kmn0024_var08.sh
# sed -r -i 's/grupo00/grupo01/g;s/grp00/grp01/g;s/0010/0024/g' RutinaMatConf_PrepararImagen_grupo01_kmn0024_var08.sh
# sed -r -i 's/grupo00/grupo02/g;s/grp00/grp02/g;s/0010/0024/g' RutinaMatConf_PrepararImagen_grupo02_kmn0024_var08.sh
# sed -r -i 's/grupo00/grupo03/g;s/grp00/grp03/g;s/0010/0024/g' RutinaMatConf_PrepararImagen_grupo03_kmn0024_var08.sh
# sed -r -i 's/grupo00/grupo04/g;s/grp00/grp04/g;s/0010/0024/g' RutinaMatConf_PrepararImagen_grupo04_kmn0024_var08.sh
# sed -r -i 's/grupo00/grupo05/g;s/grp00/grp05/g;s/0010/0024/g' RutinaMatConf_PrepararImagen_grupo05_kmn0024_var08.sh
# sed -r -i 's/grupo00/grupo06/g;s/grp00/grp06/g;s/0010/0024/g' RutinaMatConf_PrepararImagen_grupo06_kmn0024_var08.sh

# ### generar batch paralelo
# echo "  bash RutinaMatConf_PrepararImagen_grupo00_kmn0024_var08.sh" >  TareaMatConf_PrepararImagen_kmn0024_var08.sh
# echo "  bash RutinaMatConf_PrepararImagen_grupo01_kmn0024_var08.sh" >> TareaMatConf_PrepararImagen_kmn0024_var08.sh
# echo "  bash RutinaMatConf_PrepararImagen_grupo02_kmn0024_var08.sh" >> TareaMatConf_PrepararImagen_kmn0024_var08.sh
# echo "  bash RutinaMatConf_PrepararImagen_grupo03_kmn0024_var08.sh" >> TareaMatConf_PrepararImagen_kmn0024_var08.sh
# echo "  bash RutinaMatConf_PrepararImagen_grupo04_kmn0024_var08.sh" >> TareaMatConf_PrepararImagen_kmn0024_var08.sh
# echo "  bash RutinaMatConf_PrepararImagen_grupo05_kmn0024_var08.sh" >> TareaMatConf_PrepararImagen_kmn0024_var08.sh
# echo "  bash RutinaMatConf_PrepararImagen_grupo06_kmn0024_var08.sh" >> TareaMatConf_PrepararImagen_kmn0024_var08.sh

# ### generar llamada paralelo
# echo "  parallel --bar --block -7 -j7 --pipepart -a   TareaMatConf_PrepararImagen_kmn0024_var08.sh   LANG=C bash" >> BatchMatConf_PrepararImagen.sh

  ### replicar
 #scp RutinaMatConf_PrepararImagen.sh RutinaMatConf_PrepararImagen_grupo00_kmn0024_var08.sh
  scp RutinaMatConf_PrepararImagen.sh RutinaMatConf_PrepararImagen_grupo01_kmn0006_var08.sh
  scp RutinaMatConf_PrepararImagen.sh RutinaMatConf_PrepararImagen_grupo02_kmn0010_var08.sh
  scp RutinaMatConf_PrepararImagen.sh RutinaMatConf_PrepararImagen_grupo03_kmn0007_var08.sh
  scp RutinaMatConf_PrepararImagen.sh RutinaMatConf_PrepararImagen_grupo04_kmn0008_var08.sh
  scp RutinaMatConf_PrepararImagen.sh RutinaMatConf_PrepararImagen_grupo05_kmn0008_var08.sh
  scp RutinaMatConf_PrepararImagen.sh RutinaMatConf_PrepararImagen_grupo06_kmn0009_var08.sh

  ### editar replicas
 #sed -r -i 's/grupo00/grupo00/g;s/grp00/grp00/g;s/0010/0024/g' RutinaMatConf_PrepararImagen_grupo00_kmn0024_var08.sh
  sed -r -i 's/grupo00/grupo01/g;s/grp00/grp01/g;s/0010/0006/g' RutinaMatConf_PrepararImagen_grupo01_kmn0006_var08.sh
  sed -r -i 's/grupo00/grupo02/g;s/grp00/grp02/g;s/0010/0010/g' RutinaMatConf_PrepararImagen_grupo02_kmn0010_var08.sh
  sed -r -i 's/grupo00/grupo03/g;s/grp00/grp03/g;s/0010/0007/g' RutinaMatConf_PrepararImagen_grupo03_kmn0007_var08.sh
  sed -r -i 's/grupo00/grupo04/g;s/grp00/grp04/g;s/0010/0008/g' RutinaMatConf_PrepararImagen_grupo04_kmn0008_var08.sh
  sed -r -i 's/grupo00/grupo05/g;s/grp00/grp05/g;s/0010/0008/g' RutinaMatConf_PrepararImagen_grupo05_kmn0008_var08.sh
  sed -r -i 's/grupo00/grupo06/g;s/grp00/grp06/g;s/0010/0009/g' RutinaMatConf_PrepararImagen_grupo06_kmn0009_var08.sh

  ### generar batch paralelo
 #echo "  bash RutinaMatConf_PrepararImagen_grupo00_kmn0024_var08.sh" >  TareaMatConf_PrepararImagen_grupo00_kmn0024_var08.sh
  echo "  bash RutinaMatConf_PrepararImagen_grupo01_kmn0006_var08.sh" >  TareaMatConf_PrepararImagen_grupo01_kmn0006_var08.sh
  echo "  bash RutinaMatConf_PrepararImagen_grupo02_kmn0010_var08.sh" >  TareaMatConf_PrepararImagen_grupo02_kmn0010_var08.sh
  echo "  bash RutinaMatConf_PrepararImagen_grupo03_kmn0007_var08.sh" >  TareaMatConf_PrepararImagen_grupo03_kmn0007_var08.sh
  echo "  bash RutinaMatConf_PrepararImagen_grupo04_kmn0008_var08.sh" >  TareaMatConf_PrepararImagen_grupo04_kmn0008_var08.sh
  echo "  bash RutinaMatConf_PrepararImagen_grupo05_kmn0008_var08.sh" >  TareaMatConf_PrepararImagen_grupo05_kmn0008_var08.sh
  echo "  bash RutinaMatConf_PrepararImagen_grupo06_kmn0009_var08.sh" >  TareaMatConf_PrepararImagen_grupo06_kmn0009_var08.sh

  ### generar llamada paralelo
 #echo "  parallel --bar --block -7 -j7 --pipepart -a   TareaMatConf_PrepararImagen_grupo00_kmn0024_var08.sh   LANG=C bash" >  BatchMatConf_PrepararImagen.sh
  echo "  parallel --bar --block -7 -j7 --pipepart -a   TareaMatConf_PrepararImagen_grupo01_kmn0006_var08.sh   LANG=C bash" >  BatchMatConf_PrepararImagen.sh
  echo "  parallel --bar --block -7 -j7 --pipepart -a   TareaMatConf_PrepararImagen_grupo02_kmn0010_var08.sh   LANG=C bash" >> BatchMatConf_PrepararImagen.sh
  echo "  parallel --bar --block -7 -j7 --pipepart -a   TareaMatConf_PrepararImagen_grupo03_kmn0007_var08.sh   LANG=C bash" >> BatchMatConf_PrepararImagen.sh
  echo "  parallel --bar --block -7 -j7 --pipepart -a   TareaMatConf_PrepararImagen_grupo04_kmn0008_var08.sh   LANG=C bash" >> BatchMatConf_PrepararImagen.sh
  echo "  parallel --bar --block -7 -j7 --pipepart -a   TareaMatConf_PrepararImagen_grupo05_kmn0008_var08.sh   LANG=C bash" >> BatchMatConf_PrepararImagen.sh
  echo "  parallel --bar --block -7 -j7 --pipepart -a   TareaMatConf_PrepararImagen_grupo06_kmn0009_var08.sh   LANG=C bash" >> BatchMatConf_PrepararImagen.sh
