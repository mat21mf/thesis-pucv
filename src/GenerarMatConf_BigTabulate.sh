# ### replicar
# scp RutinaMatConf_BigTabulate.R RutinaMatConf_BigTabulate_grupo00_kmn0010_var08.R
# scp RutinaMatConf_BigTabulate.R RutinaMatConf_BigTabulate_grupo01_kmn0010_var08.R
# scp RutinaMatConf_BigTabulate.R RutinaMatConf_BigTabulate_grupo02_kmn0010_var08.R
# scp RutinaMatConf_BigTabulate.R RutinaMatConf_BigTabulate_grupo03_kmn0010_var08.R
# scp RutinaMatConf_BigTabulate.R RutinaMatConf_BigTabulate_grupo04_kmn0010_var08.R
# scp RutinaMatConf_BigTabulate.R RutinaMatConf_BigTabulate_grupo05_kmn0010_var08.R
# scp RutinaMatConf_BigTabulate.R RutinaMatConf_BigTabulate_grupo06_kmn0010_var08.R

# ### editar replicas
# sed -r -i 's/grupo00/grupo00/g;s/grp00/grp00/g;s/0010/0010/g' RutinaMatConf_BigTabulate_grupo00_kmn0010_var08.R
# sed -r -i 's/grupo00/grupo01/g;s/grp00/grp01/g;s/0010/0010/g' RutinaMatConf_BigTabulate_grupo01_kmn0010_var08.R
# sed -r -i 's/grupo00/grupo02/g;s/grp00/grp02/g;s/0010/0010/g' RutinaMatConf_BigTabulate_grupo02_kmn0010_var08.R
# sed -r -i 's/grupo00/grupo03/g;s/grp00/grp03/g;s/0010/0010/g' RutinaMatConf_BigTabulate_grupo03_kmn0010_var08.R
# sed -r -i 's/grupo00/grupo04/g;s/grp00/grp04/g;s/0010/0010/g' RutinaMatConf_BigTabulate_grupo04_kmn0010_var08.R
# sed -r -i 's/grupo00/grupo05/g;s/grp00/grp05/g;s/0010/0010/g' RutinaMatConf_BigTabulate_grupo05_kmn0010_var08.R
# sed -r -i 's/grupo00/grupo06/g;s/grp00/grp06/g;s/0010/0010/g' RutinaMatConf_BigTabulate_grupo06_kmn0010_var08.R

# ### generar batch paralelo
# echo "  R --slave -f \"RutinaMatConf_BigTabulate_grupo00_kmn0010_var08.R\"" >  TareaMatConf_BigTabulate_kmn0010_var08.sh
# echo "  R --slave -f \"RutinaMatConf_BigTabulate_grupo01_kmn0010_var08.R\"" >> TareaMatConf_BigTabulate_kmn0010_var08.sh
# echo "  R --slave -f \"RutinaMatConf_BigTabulate_grupo02_kmn0010_var08.R\"" >> TareaMatConf_BigTabulate_kmn0010_var08.sh
# echo "  R --slave -f \"RutinaMatConf_BigTabulate_grupo03_kmn0010_var08.R\"" >> TareaMatConf_BigTabulate_kmn0010_var08.sh
# echo "  R --slave -f \"RutinaMatConf_BigTabulate_grupo04_kmn0010_var08.R\"" >> TareaMatConf_BigTabulate_kmn0010_var08.sh
# echo "  R --slave -f \"RutinaMatConf_BigTabulate_grupo05_kmn0010_var08.R\"" >> TareaMatConf_BigTabulate_kmn0010_var08.sh
# echo "  R --slave -f \"RutinaMatConf_BigTabulate_grupo06_kmn0010_var08.R\"" >> TareaMatConf_BigTabulate_kmn0010_var08.sh

# ### generar llamada paralelo
# echo "  parallel --bar --block -7 -j7 --pipepart -a   TareaMatConf_BigTabulate_kmn0010_var08.sh   LANG=C bash" >  BatchMatConf_BigTabulate.sh

# ### replicar
# scp RutinaMatConf_BigTabulate.R RutinaMatConf_BigTabulate_grupo00_kmn0018_var08.R
# scp RutinaMatConf_BigTabulate.R RutinaMatConf_BigTabulate_grupo01_kmn0018_var08.R
# scp RutinaMatConf_BigTabulate.R RutinaMatConf_BigTabulate_grupo02_kmn0018_var08.R
# scp RutinaMatConf_BigTabulate.R RutinaMatConf_BigTabulate_grupo03_kmn0018_var08.R
# scp RutinaMatConf_BigTabulate.R RutinaMatConf_BigTabulate_grupo04_kmn0018_var08.R
# scp RutinaMatConf_BigTabulate.R RutinaMatConf_BigTabulate_grupo05_kmn0018_var08.R
# scp RutinaMatConf_BigTabulate.R RutinaMatConf_BigTabulate_grupo06_kmn0018_var08.R

# ### extender replicas
# vim -c "sil! edit RutinaMatConf_BigTabulate_grupo00_kmn0018_var08.R" -c "sil! normal! gg0" -c "sil! normal! /Cluster=11" -c "sil! so ExtenderMatConf_BigTabulate.vim" -c "sil! call CallExtenderBloqueBigTabulate(8)" -c "sil! wq"
# vim -c "sil! edit RutinaMatConf_BigTabulate_grupo01_kmn0018_var08.R" -c "sil! normal! gg0" -c "sil! normal! /Cluster=11" -c "sil! so ExtenderMatConf_BigTabulate.vim" -c "sil! call CallExtenderBloqueBigTabulate(8)" -c "sil! wq"
# vim -c "sil! edit RutinaMatConf_BigTabulate_grupo02_kmn0018_var08.R" -c "sil! normal! gg0" -c "sil! normal! /Cluster=11" -c "sil! so ExtenderMatConf_BigTabulate.vim" -c "sil! call CallExtenderBloqueBigTabulate(8)" -c "sil! wq"
# vim -c "sil! edit RutinaMatConf_BigTabulate_grupo03_kmn0018_var08.R" -c "sil! normal! gg0" -c "sil! normal! /Cluster=11" -c "sil! so ExtenderMatConf_BigTabulate.vim" -c "sil! call CallExtenderBloqueBigTabulate(8)" -c "sil! wq"
# vim -c "sil! edit RutinaMatConf_BigTabulate_grupo04_kmn0018_var08.R" -c "sil! normal! gg0" -c "sil! normal! /Cluster=11" -c "sil! so ExtenderMatConf_BigTabulate.vim" -c "sil! call CallExtenderBloqueBigTabulate(8)" -c "sil! wq"
# vim -c "sil! edit RutinaMatConf_BigTabulate_grupo05_kmn0018_var08.R" -c "sil! normal! gg0" -c "sil! normal! /Cluster=11" -c "sil! so ExtenderMatConf_BigTabulate.vim" -c "sil! call CallExtenderBloqueBigTabulate(8)" -c "sil! wq"
# vim -c "sil! edit RutinaMatConf_BigTabulate_grupo06_kmn0018_var08.R" -c "sil! normal! gg0" -c "sil! normal! /Cluster=11" -c "sil! so ExtenderMatConf_BigTabulate.vim" -c "sil! call CallExtenderBloqueBigTabulate(8)" -c "sil! wq"

# ### editar replicas extendidas
# sed -r -i 's/grupo00/grupo00/g;s/grp00/grp00/g;s/0010/0018/g' RutinaMatConf_BigTabulate_grupo00_kmn0018_var08.R
# sed -r -i 's/grupo00/grupo01/g;s/grp00/grp01/g;s/0010/0018/g' RutinaMatConf_BigTabulate_grupo01_kmn0018_var08.R
# sed -r -i 's/grupo00/grupo02/g;s/grp00/grp02/g;s/0010/0018/g' RutinaMatConf_BigTabulate_grupo02_kmn0018_var08.R
# sed -r -i 's/grupo00/grupo03/g;s/grp00/grp03/g;s/0010/0018/g' RutinaMatConf_BigTabulate_grupo03_kmn0018_var08.R
# sed -r -i 's/grupo00/grupo04/g;s/grp00/grp04/g;s/0010/0018/g' RutinaMatConf_BigTabulate_grupo04_kmn0018_var08.R
# sed -r -i 's/grupo00/grupo05/g;s/grp00/grp05/g;s/0010/0018/g' RutinaMatConf_BigTabulate_grupo05_kmn0018_var08.R
# sed -r -i 's/grupo00/grupo06/g;s/grp00/grp06/g;s/0010/0018/g' RutinaMatConf_BigTabulate_grupo06_kmn0018_var08.R

# ### generar batch paralelo
# echo "  R --slave -f \"RutinaMatConf_BigTabulate_grupo00_kmn0018_var08.R\"" >  TareaMatConf_BigTabulate_kmn0018_var08.sh
# echo "  R --slave -f \"RutinaMatConf_BigTabulate_grupo01_kmn0018_var08.R\"" >> TareaMatConf_BigTabulate_kmn0018_var08.sh
# echo "  R --slave -f \"RutinaMatConf_BigTabulate_grupo02_kmn0018_var08.R\"" >> TareaMatConf_BigTabulate_kmn0018_var08.sh
# echo "  R --slave -f \"RutinaMatConf_BigTabulate_grupo03_kmn0018_var08.R\"" >> TareaMatConf_BigTabulate_kmn0018_var08.sh
# echo "  R --slave -f \"RutinaMatConf_BigTabulate_grupo04_kmn0018_var08.R\"" >> TareaMatConf_BigTabulate_kmn0018_var08.sh
# echo "  R --slave -f \"RutinaMatConf_BigTabulate_grupo05_kmn0018_var08.R\"" >> TareaMatConf_BigTabulate_kmn0018_var08.sh
# echo "  R --slave -f \"RutinaMatConf_BigTabulate_grupo06_kmn0018_var08.R\"" >> TareaMatConf_BigTabulate_kmn0018_var08.sh

# ### generar llamada paralelo
# echo "  parallel --bar --block -7 -j7 --pipepart -a   TareaMatConf_BigTabulate_kmn0018_var08.sh   LANG=C bash" >> BatchMatConf_BigTabulate.sh

# ### replicar
# scp RutinaMatConf_BigTabulate.R RutinaMatConf_BigTabulate_grupo00_kmn0024_var08.R
# scp RutinaMatConf_BigTabulate.R RutinaMatConf_BigTabulate_grupo01_kmn0024_var08.R
# scp RutinaMatConf_BigTabulate.R RutinaMatConf_BigTabulate_grupo02_kmn0024_var08.R
# scp RutinaMatConf_BigTabulate.R RutinaMatConf_BigTabulate_grupo03_kmn0024_var08.R
# scp RutinaMatConf_BigTabulate.R RutinaMatConf_BigTabulate_grupo04_kmn0024_var08.R
# scp RutinaMatConf_BigTabulate.R RutinaMatConf_BigTabulate_grupo05_kmn0024_var08.R
# scp RutinaMatConf_BigTabulate.R RutinaMatConf_BigTabulate_grupo06_kmn0024_var08.R

# ### extender replicas
# vim -c "sil! edit RutinaMatConf_BigTabulate_grupo00_kmn0024_var08.R" -c "sil! normal! gg0" -c "sil! normal! /Cluster=11" -c "sil! so ExtenderMatConf_BigTabulate.vim" -c "sil! call CallExtenderBloqueBigTabulate(14)" -c "sil! wq"
# vim -c "sil! edit RutinaMatConf_BigTabulate_grupo01_kmn0024_var08.R" -c "sil! normal! gg0" -c "sil! normal! /Cluster=11" -c "sil! so ExtenderMatConf_BigTabulate.vim" -c "sil! call CallExtenderBloqueBigTabulate(14)" -c "sil! wq"
# vim -c "sil! edit RutinaMatConf_BigTabulate_grupo02_kmn0024_var08.R" -c "sil! normal! gg0" -c "sil! normal! /Cluster=11" -c "sil! so ExtenderMatConf_BigTabulate.vim" -c "sil! call CallExtenderBloqueBigTabulate(14)" -c "sil! wq"
# vim -c "sil! edit RutinaMatConf_BigTabulate_grupo03_kmn0024_var08.R" -c "sil! normal! gg0" -c "sil! normal! /Cluster=11" -c "sil! so ExtenderMatConf_BigTabulate.vim" -c "sil! call CallExtenderBloqueBigTabulate(14)" -c "sil! wq"
# vim -c "sil! edit RutinaMatConf_BigTabulate_grupo04_kmn0024_var08.R" -c "sil! normal! gg0" -c "sil! normal! /Cluster=11" -c "sil! so ExtenderMatConf_BigTabulate.vim" -c "sil! call CallExtenderBloqueBigTabulate(14)" -c "sil! wq"
# vim -c "sil! edit RutinaMatConf_BigTabulate_grupo05_kmn0024_var08.R" -c "sil! normal! gg0" -c "sil! normal! /Cluster=11" -c "sil! so ExtenderMatConf_BigTabulate.vim" -c "sil! call CallExtenderBloqueBigTabulate(14)" -c "sil! wq"
# vim -c "sil! edit RutinaMatConf_BigTabulate_grupo06_kmn0024_var08.R" -c "sil! normal! gg0" -c "sil! normal! /Cluster=11" -c "sil! so ExtenderMatConf_BigTabulate.vim" -c "sil! call CallExtenderBloqueBigTabulate(14)" -c "sil! wq"

# ### editar replicas extendidas
# sed -r -i 's/grupo00/grupo00/g;s/grp00/grp00/g;s/0010/0024/g' RutinaMatConf_BigTabulate_grupo00_kmn0024_var08.R
# sed -r -i 's/grupo00/grupo01/g;s/grp00/grp01/g;s/0010/0024/g' RutinaMatConf_BigTabulate_grupo01_kmn0024_var08.R
# sed -r -i 's/grupo00/grupo02/g;s/grp00/grp02/g;s/0010/0024/g' RutinaMatConf_BigTabulate_grupo02_kmn0024_var08.R
# sed -r -i 's/grupo00/grupo03/g;s/grp00/grp03/g;s/0010/0024/g' RutinaMatConf_BigTabulate_grupo03_kmn0024_var08.R
# sed -r -i 's/grupo00/grupo04/g;s/grp00/grp04/g;s/0010/0024/g' RutinaMatConf_BigTabulate_grupo04_kmn0024_var08.R
# sed -r -i 's/grupo00/grupo05/g;s/grp00/grp05/g;s/0010/0024/g' RutinaMatConf_BigTabulate_grupo05_kmn0024_var08.R
# sed -r -i 's/grupo00/grupo06/g;s/grp00/grp06/g;s/0010/0024/g' RutinaMatConf_BigTabulate_grupo06_kmn0024_var08.R

# ### generar batch paralelo
# echo "  R --slave -f \"RutinaMatConf_BigTabulate_grupo00_kmn0024_var08.R\"" >  TareaMatConf_BigTabulate_kmn0024_var08.sh
# echo "  R --slave -f \"RutinaMatConf_BigTabulate_grupo01_kmn0024_var08.R\"" >> TareaMatConf_BigTabulate_kmn0024_var08.sh
# echo "  R --slave -f \"RutinaMatConf_BigTabulate_grupo02_kmn0024_var08.R\"" >> TareaMatConf_BigTabulate_kmn0024_var08.sh
# echo "  R --slave -f \"RutinaMatConf_BigTabulate_grupo03_kmn0024_var08.R\"" >> TareaMatConf_BigTabulate_kmn0024_var08.sh
# echo "  R --slave -f \"RutinaMatConf_BigTabulate_grupo04_kmn0024_var08.R\"" >> TareaMatConf_BigTabulate_kmn0024_var08.sh
# echo "  R --slave -f \"RutinaMatConf_BigTabulate_grupo05_kmn0024_var08.R\"" >> TareaMatConf_BigTabulate_kmn0024_var08.sh
# echo "  R --slave -f \"RutinaMatConf_BigTabulate_grupo06_kmn0024_var08.R\"" >> TareaMatConf_BigTabulate_kmn0024_var08.sh

# ### generar llamada paralelo
# echo "  parallel --bar --block -7 -j7 --pipepart -a   TareaMatConf_BigTabulate_kmn0024_var08.sh   LANG=C bash" >> BatchMatConf_BigTabulate.sh

  ### replicar
 #scp RutinaMatConf_BigTabulate.R RutinaMatConf_BigTabulate_grupo00_kmn0024_var08.R
  scp RutinaMatConf_BigTabulate.R RutinaMatConf_BigTabulate_grupo01_kmn0006_var08.R
  scp RutinaMatConf_BigTabulate.R RutinaMatConf_BigTabulate_grupo02_kmn0010_var08.R
  scp RutinaMatConf_BigTabulate.R RutinaMatConf_BigTabulate_grupo03_kmn0007_var08.R
  scp RutinaMatConf_BigTabulate.R RutinaMatConf_BigTabulate_grupo04_kmn0008_var08.R
  scp RutinaMatConf_BigTabulate.R RutinaMatConf_BigTabulate_grupo05_kmn0008_var08.R
  scp RutinaMatConf_BigTabulate.R RutinaMatConf_BigTabulate_grupo06_kmn0009_var08.R

  ### extender replicas
 #vim -c "sil! edit RutinaMatConf_BigTabulate_grupo00_kmn0024_var08.R" -c "sil! normal! gg0" -c "sil! normal! /Cluster=11" -c "sil! so ExtenderMatConf_BigTabulate.vim" -c "sil! call CallExtenderBloqueBigTabulate(1)" -c "sil! wq"
  vim -c "sil! edit RutinaMatConf_BigTabulate_grupo01_kmn0006_var08.R" -c "sil! normal! gg0" -c "sil! normal! /Cluster=11" -c "sil! so ExtenderMatConf_BigTabulate.vim" -c "sil! call CallExtenderBloqueBigTabulate(1)" -c "sil! wq"
  vim -c "sil! edit RutinaMatConf_BigTabulate_grupo02_kmn0010_var08.R" -c "sil! normal! gg0" -c "sil! normal! /Cluster=11" -c "sil! so ExtenderMatConf_BigTabulate.vim" -c "sil! call CallExtenderBloqueBigTabulate(1)" -c "sil! wq"
  vim -c "sil! edit RutinaMatConf_BigTabulate_grupo03_kmn0007_var08.R" -c "sil! normal! gg0" -c "sil! normal! /Cluster=11" -c "sil! so ExtenderMatConf_BigTabulate.vim" -c "sil! call CallExtenderBloqueBigTabulate(1)" -c "sil! wq"
  vim -c "sil! edit RutinaMatConf_BigTabulate_grupo04_kmn0008_var08.R" -c "sil! normal! gg0" -c "sil! normal! /Cluster=11" -c "sil! so ExtenderMatConf_BigTabulate.vim" -c "sil! call CallExtenderBloqueBigTabulate(1)" -c "sil! wq"
  vim -c "sil! edit RutinaMatConf_BigTabulate_grupo05_kmn0008_var08.R" -c "sil! normal! gg0" -c "sil! normal! /Cluster=11" -c "sil! so ExtenderMatConf_BigTabulate.vim" -c "sil! call CallExtenderBloqueBigTabulate(1)" -c "sil! wq"
  vim -c "sil! edit RutinaMatConf_BigTabulate_grupo06_kmn0009_var08.R" -c "sil! normal! gg0" -c "sil! normal! /Cluster=11" -c "sil! so ExtenderMatConf_BigTabulate.vim" -c "sil! call CallExtenderBloqueBigTabulate(1)" -c "sil! wq"

  ### quitar filas extras
 #sed -r -i 's/grupo00/grupo00/g;s/grp00/grp00/g;s/0010/0024/g' RutinaMatConf_BigTabulate_grupo00_kmn0024_var08.R
  sed -r -i '/Cluster= [8-9]/d;/Cluster=[1][0-2]/d'    RutinaMatConf_BigTabulate_grupo01_kmn0006_var08.R
  sed -r -i                   '/Cluster=[1][2]/  d'    RutinaMatConf_BigTabulate_grupo02_kmn0010_var08.R
  sed -r -i '/Cluster= [9]/d  ;/Cluster=[1][0-2]/d'    RutinaMatConf_BigTabulate_grupo03_kmn0007_var08.R
  sed -r -i                   '/Cluster=[1][0-2]/d'    RutinaMatConf_BigTabulate_grupo04_kmn0008_var08.R
  sed -r -i                   '/Cluster=[1][0-2]/d'    RutinaMatConf_BigTabulate_grupo05_kmn0008_var08.R
  sed -r -i                   '/Cluster=[1][1-2]/d'    RutinaMatConf_BigTabulate_grupo06_kmn0009_var08.R

  ### editar replicas extendidas
 #sed -r -i 's/grupo00/grupo00/g;s/grp00/grp00/g;s/0010/0024/g' RutinaMatConf_BigTabulate_grupo00_kmn0024_var08.R
  sed -r -i 's/grupo00/grupo01/g;s/grp00/grp01/g;s/0010/0006/g' RutinaMatConf_BigTabulate_grupo01_kmn0006_var08.R
  sed -r -i 's/grupo00/grupo02/g;s/grp00/grp02/g;s/0010/0010/g' RutinaMatConf_BigTabulate_grupo02_kmn0010_var08.R
  sed -r -i 's/grupo00/grupo03/g;s/grp00/grp03/g;s/0010/0007/g' RutinaMatConf_BigTabulate_grupo03_kmn0007_var08.R
  sed -r -i 's/grupo00/grupo04/g;s/grp00/grp04/g;s/0010/0008/g' RutinaMatConf_BigTabulate_grupo04_kmn0008_var08.R
  sed -r -i 's/grupo00/grupo05/g;s/grp00/grp05/g;s/0010/0008/g' RutinaMatConf_BigTabulate_grupo05_kmn0008_var08.R
  sed -r -i 's/grupo00/grupo06/g;s/grp00/grp06/g;s/0010/0009/g' RutinaMatConf_BigTabulate_grupo06_kmn0009_var08.R

  ### generar batch paralelo
 #echo "  R --slave -f \"RutinaMatConf_BigTabulate_grupo00_kmn0024_var08.R\"" >  TareaMatConf_BigTabulate_grupo00_kmn0024_var08.sh
  echo "  R --slave -f \"RutinaMatConf_BigTabulate_grupo01_kmn0006_var08.R\"" >  TareaMatConf_BigTabulate_grupo01_kmn0006_var08.sh
  echo "  R --slave -f \"RutinaMatConf_BigTabulate_grupo02_kmn0010_var08.R\"" >  TareaMatConf_BigTabulate_grupo02_kmn0010_var08.sh
  echo "  R --slave -f \"RutinaMatConf_BigTabulate_grupo03_kmn0007_var08.R\"" >  TareaMatConf_BigTabulate_grupo03_kmn0007_var08.sh
  echo "  R --slave -f \"RutinaMatConf_BigTabulate_grupo04_kmn0008_var08.R\"" >  TareaMatConf_BigTabulate_grupo04_kmn0008_var08.sh
  echo "  R --slave -f \"RutinaMatConf_BigTabulate_grupo05_kmn0008_var08.R\"" >  TareaMatConf_BigTabulate_grupo05_kmn0008_var08.sh
  echo "  R --slave -f \"RutinaMatConf_BigTabulate_grupo06_kmn0009_var08.R\"" >  TareaMatConf_BigTabulate_grupo06_kmn0009_var08.sh

  ### generar llamada paralelo
 #echo "  parallel --bar --block -7 -j7 --pipepart -a   TareaMatConf_BigTabulate_grupo00_kmn0024_var08.sh   LANG=C bash" >  BatchMatConf_BigTabulate.sh
  echo "  parallel --bar --block -7 -j7 --pipepart -a   TareaMatConf_BigTabulate_grupo01_kmn0006_var08.sh   LANG=C bash" >  BatchMatConf_BigTabulate.sh
  echo "  parallel --bar --block -7 -j7 --pipepart -a   TareaMatConf_BigTabulate_grupo02_kmn0010_var08.sh   LANG=C bash" >> BatchMatConf_BigTabulate.sh
  echo "  parallel --bar --block -7 -j7 --pipepart -a   TareaMatConf_BigTabulate_grupo03_kmn0007_var08.sh   LANG=C bash" >> BatchMatConf_BigTabulate.sh
  echo "  parallel --bar --block -7 -j7 --pipepart -a   TareaMatConf_BigTabulate_grupo04_kmn0008_var08.sh   LANG=C bash" >> BatchMatConf_BigTabulate.sh
  echo "  parallel --bar --block -7 -j7 --pipepart -a   TareaMatConf_BigTabulate_grupo05_kmn0008_var08.sh   LANG=C bash" >> BatchMatConf_BigTabulate.sh
  echo "  parallel --bar --block -7 -j7 --pipepart -a   TareaMatConf_BigTabulate_grupo06_kmn0009_var08.sh   LANG=C bash" >> BatchMatConf_BigTabulate.sh
