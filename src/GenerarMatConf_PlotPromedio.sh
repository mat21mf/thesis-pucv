# ### replicar
# scp RutinaMatConf_PlotPromedio.R RutinaMatConf_PlotPromedio_grupo00_kmn0010_var08.R
# scp RutinaMatConf_PlotPromedio.R RutinaMatConf_PlotPromedio_grupo01_kmn0010_var08.R
# scp RutinaMatConf_PlotPromedio.R RutinaMatConf_PlotPromedio_grupo02_kmn0010_var08.R
# scp RutinaMatConf_PlotPromedio.R RutinaMatConf_PlotPromedio_grupo03_kmn0010_var08.R
# scp RutinaMatConf_PlotPromedio.R RutinaMatConf_PlotPromedio_grupo04_kmn0010_var08.R
# scp RutinaMatConf_PlotPromedio.R RutinaMatConf_PlotPromedio_grupo05_kmn0010_var08.R
# scp RutinaMatConf_PlotPromedio.R RutinaMatConf_PlotPromedio_grupo06_kmn0010_var08.R

# ### editar replicas
# sed -r -i 's/grupo00/grupo00/g;s/grp00/grp00/g;s/0010/0010/g;s/straxt=11/straxt=11/' RutinaMatConf_PlotPromedio_grupo00_kmn0010_var08.R
# sed -r -i 's/grupo00/grupo01/g;s/grp00/grp01/g;s/0010/0010/g;s/straxt=11/straxt=11/' RutinaMatConf_PlotPromedio_grupo01_kmn0010_var08.R
# sed -r -i 's/grupo00/grupo02/g;s/grp00/grp02/g;s/0010/0010/g;s/straxt=11/straxt=11/' RutinaMatConf_PlotPromedio_grupo02_kmn0010_var08.R
# sed -r -i 's/grupo00/grupo03/g;s/grp00/grp03/g;s/0010/0010/g;s/straxt=11/straxt=11/' RutinaMatConf_PlotPromedio_grupo03_kmn0010_var08.R
# sed -r -i 's/grupo00/grupo04/g;s/grp00/grp04/g;s/0010/0010/g;s/straxt=11/straxt=11/' RutinaMatConf_PlotPromedio_grupo04_kmn0010_var08.R
# sed -r -i 's/grupo00/grupo05/g;s/grp00/grp05/g;s/0010/0010/g;s/straxt=11/straxt=11/' RutinaMatConf_PlotPromedio_grupo05_kmn0010_var08.R
# sed -r -i 's/grupo00/grupo06/g;s/grp00/grp06/g;s/0010/0010/g;s/straxt=11/straxt=11/' RutinaMatConf_PlotPromedio_grupo06_kmn0010_var08.R

# ### generar batch paralelo
# echo "  R --slave -f \"RutinaMatConf_PlotPromedio_grupo00_kmn0010_var08.R\"" >  TareaMatConf_PlotPromedio_kmn0010_var08.sh
# echo "  R --slave -f \"RutinaMatConf_PlotPromedio_grupo01_kmn0010_var08.R\"" >> TareaMatConf_PlotPromedio_kmn0010_var08.sh
# echo "  R --slave -f \"RutinaMatConf_PlotPromedio_grupo02_kmn0010_var08.R\"" >> TareaMatConf_PlotPromedio_kmn0010_var08.sh
# echo "  R --slave -f \"RutinaMatConf_PlotPromedio_grupo03_kmn0010_var08.R\"" >> TareaMatConf_PlotPromedio_kmn0010_var08.sh
# echo "  R --slave -f \"RutinaMatConf_PlotPromedio_grupo04_kmn0010_var08.R\"" >> TareaMatConf_PlotPromedio_kmn0010_var08.sh
# echo "  R --slave -f \"RutinaMatConf_PlotPromedio_grupo05_kmn0010_var08.R\"" >> TareaMatConf_PlotPromedio_kmn0010_var08.sh
# echo "  R --slave -f \"RutinaMatConf_PlotPromedio_grupo06_kmn0010_var08.R\"" >> TareaMatConf_PlotPromedio_kmn0010_var08.sh

# ### generar llamada paralelo
# echo "  parallel --bar --block -7 -j7 --pipepart -a   TareaMatConf_PlotPromedio_kmn0010_var08.sh   LANG=C bash" >  BatchMatConf_PlotPromedio.sh

# ### replicar
# scp RutinaMatConf_PlotPromedio.R RutinaMatConf_PlotPromedio_grupo00_kmn0018_var08.R
# scp RutinaMatConf_PlotPromedio.R RutinaMatConf_PlotPromedio_grupo01_kmn0018_var08.R
# scp RutinaMatConf_PlotPromedio.R RutinaMatConf_PlotPromedio_grupo02_kmn0018_var08.R
# scp RutinaMatConf_PlotPromedio.R RutinaMatConf_PlotPromedio_grupo03_kmn0018_var08.R
# scp RutinaMatConf_PlotPromedio.R RutinaMatConf_PlotPromedio_grupo04_kmn0018_var08.R
# scp RutinaMatConf_PlotPromedio.R RutinaMatConf_PlotPromedio_grupo05_kmn0018_var08.R
# scp RutinaMatConf_PlotPromedio.R RutinaMatConf_PlotPromedio_grupo06_kmn0018_var08.R

# ### editar replicas
# sed -r -i 's/grupo00/grupo00/g;s/grp00/grp00/g;s/0010/0018/g;s/straxt=11/straxt=19/' RutinaMatConf_PlotPromedio_grupo00_kmn0018_var08.R
# sed -r -i 's/grupo00/grupo01/g;s/grp00/grp01/g;s/0010/0018/g;s/straxt=11/straxt=19/' RutinaMatConf_PlotPromedio_grupo01_kmn0018_var08.R
# sed -r -i 's/grupo00/grupo02/g;s/grp00/grp02/g;s/0010/0018/g;s/straxt=11/straxt=19/' RutinaMatConf_PlotPromedio_grupo02_kmn0018_var08.R
# sed -r -i 's/grupo00/grupo03/g;s/grp00/grp03/g;s/0010/0018/g;s/straxt=11/straxt=19/' RutinaMatConf_PlotPromedio_grupo03_kmn0018_var08.R
# sed -r -i 's/grupo00/grupo04/g;s/grp00/grp04/g;s/0010/0018/g;s/straxt=11/straxt=19/' RutinaMatConf_PlotPromedio_grupo04_kmn0018_var08.R
# sed -r -i 's/grupo00/grupo05/g;s/grp00/grp05/g;s/0010/0018/g;s/straxt=11/straxt=19/' RutinaMatConf_PlotPromedio_grupo05_kmn0018_var08.R
# sed -r -i 's/grupo00/grupo06/g;s/grp00/grp06/g;s/0010/0018/g;s/straxt=11/straxt=19/' RutinaMatConf_PlotPromedio_grupo06_kmn0018_var08.R

# ### generar batch paralelo
# echo "  R --slave -f \"RutinaMatConf_PlotPromedio_grupo00_kmn0018_var08.R\"" >  TareaMatConf_PlotPromedio_kmn0018_var08.sh
# echo "  R --slave -f \"RutinaMatConf_PlotPromedio_grupo01_kmn0018_var08.R\"" >> TareaMatConf_PlotPromedio_kmn0018_var08.sh
# echo "  R --slave -f \"RutinaMatConf_PlotPromedio_grupo02_kmn0018_var08.R\"" >> TareaMatConf_PlotPromedio_kmn0018_var08.sh
# echo "  R --slave -f \"RutinaMatConf_PlotPromedio_grupo03_kmn0018_var08.R\"" >> TareaMatConf_PlotPromedio_kmn0018_var08.sh
# echo "  R --slave -f \"RutinaMatConf_PlotPromedio_grupo04_kmn0018_var08.R\"" >> TareaMatConf_PlotPromedio_kmn0018_var08.sh
# echo "  R --slave -f \"RutinaMatConf_PlotPromedio_grupo05_kmn0018_var08.R\"" >> TareaMatConf_PlotPromedio_kmn0018_var08.sh
# echo "  R --slave -f \"RutinaMatConf_PlotPromedio_grupo06_kmn0018_var08.R\"" >> TareaMatConf_PlotPromedio_kmn0018_var08.sh

# ### generar llamada paralelo
# echo "  parallel --bar --block -7 -j7 --pipepart -a   TareaMatConf_PlotPromedio_kmn0018_var08.sh   LANG=C bash" >> BatchMatConf_PlotPromedio.sh

# ### replicar
# scp RutinaMatConf_PlotPromedio.R RutinaMatConf_PlotPromedio_grupo00_kmn0024_var08.R
# scp RutinaMatConf_PlotPromedio.R RutinaMatConf_PlotPromedio_grupo01_kmn0024_var08.R
# scp RutinaMatConf_PlotPromedio.R RutinaMatConf_PlotPromedio_grupo02_kmn0024_var08.R
# scp RutinaMatConf_PlotPromedio.R RutinaMatConf_PlotPromedio_grupo03_kmn0024_var08.R
# scp RutinaMatConf_PlotPromedio.R RutinaMatConf_PlotPromedio_grupo04_kmn0024_var08.R
# scp RutinaMatConf_PlotPromedio.R RutinaMatConf_PlotPromedio_grupo05_kmn0024_var08.R
# scp RutinaMatConf_PlotPromedio.R RutinaMatConf_PlotPromedio_grupo06_kmn0024_var08.R

# ### editar replicas
# sed -r -i 's/grupo00/grupo00/g;s/grp00/grp00/g;s/0010/0024/g;s/straxt=11/straxt=25/' RutinaMatConf_PlotPromedio_grupo00_kmn0024_var08.R
# sed -r -i 's/grupo00/grupo01/g;s/grp00/grp01/g;s/0010/0024/g;s/straxt=11/straxt=25/' RutinaMatConf_PlotPromedio_grupo01_kmn0024_var08.R
# sed -r -i 's/grupo00/grupo02/g;s/grp00/grp02/g;s/0010/0024/g;s/straxt=11/straxt=25/' RutinaMatConf_PlotPromedio_grupo02_kmn0024_var08.R
# sed -r -i 's/grupo00/grupo03/g;s/grp00/grp03/g;s/0010/0024/g;s/straxt=11/straxt=25/' RutinaMatConf_PlotPromedio_grupo03_kmn0024_var08.R
# sed -r -i 's/grupo00/grupo04/g;s/grp00/grp04/g;s/0010/0024/g;s/straxt=11/straxt=25/' RutinaMatConf_PlotPromedio_grupo04_kmn0024_var08.R
# sed -r -i 's/grupo00/grupo05/g;s/grp00/grp05/g;s/0010/0024/g;s/straxt=11/straxt=25/' RutinaMatConf_PlotPromedio_grupo05_kmn0024_var08.R
# sed -r -i 's/grupo00/grupo06/g;s/grp00/grp06/g;s/0010/0024/g;s/straxt=11/straxt=25/' RutinaMatConf_PlotPromedio_grupo06_kmn0024_var08.R

# ### generar batch paralelo
# echo "  R --slave -f \"RutinaMatConf_PlotPromedio_grupo00_kmn0024_var08.R\"" >  TareaMatConf_PlotPromedio_kmn0024_var08.sh
# echo "  R --slave -f \"RutinaMatConf_PlotPromedio_grupo01_kmn0024_var08.R\"" >> TareaMatConf_PlotPromedio_kmn0024_var08.sh
# echo "  R --slave -f \"RutinaMatConf_PlotPromedio_grupo02_kmn0024_var08.R\"" >> TareaMatConf_PlotPromedio_kmn0024_var08.sh
# echo "  R --slave -f \"RutinaMatConf_PlotPromedio_grupo03_kmn0024_var08.R\"" >> TareaMatConf_PlotPromedio_kmn0024_var08.sh
# echo "  R --slave -f \"RutinaMatConf_PlotPromedio_grupo04_kmn0024_var08.R\"" >> TareaMatConf_PlotPromedio_kmn0024_var08.sh
# echo "  R --slave -f \"RutinaMatConf_PlotPromedio_grupo05_kmn0024_var08.R\"" >> TareaMatConf_PlotPromedio_kmn0024_var08.sh
# echo "  R --slave -f \"RutinaMatConf_PlotPromedio_grupo06_kmn0024_var08.R\"" >> TareaMatConf_PlotPromedio_kmn0024_var08.sh

# ### generar llamada paralelo
# echo "  parallel --bar --block -7 -j7 --pipepart -a   TareaMatConf_PlotPromedio_kmn0024_var08.sh   LANG=C bash" >> BatchMatConf_PlotPromedio.sh

  ### replicar
 #scp RutinaMatConf_PlotPromedio.R RutinaMatConf_PlotPromedio_grupo00_kmn0024_var08.R
  scp RutinaMatConf_PlotPromedio.R RutinaMatConf_PlotPromedio_grupo01_kmn0006_var08.R
  scp RutinaMatConf_PlotPromedio.R RutinaMatConf_PlotPromedio_grupo02_kmn0010_var08.R
  scp RutinaMatConf_PlotPromedio.R RutinaMatConf_PlotPromedio_grupo03_kmn0007_var08.R
  scp RutinaMatConf_PlotPromedio.R RutinaMatConf_PlotPromedio_grupo04_kmn0008_var08.R
  scp RutinaMatConf_PlotPromedio.R RutinaMatConf_PlotPromedio_grupo05_kmn0008_var08.R
  scp RutinaMatConf_PlotPromedio.R RutinaMatConf_PlotPromedio_grupo06_kmn0009_var08.R

  ### editar replicas
 #sed -r -i 's/grupo00/grupo00/g;s/grp00/grp00/g;s/0010/0024/g;s/straxt=11/straxt=25/' RutinaMatConf_PlotPromedio_grupo00_kmn0024_var08.R
  sed -r -i 's/grupo00/grupo01/g;s/grp00/grp01/g;s/0010/0006/g;s/straxt=11/straxt=7/ ' RutinaMatConf_PlotPromedio_grupo01_kmn0006_var08.R
  sed -r -i 's/grupo00/grupo02/g;s/grp00/grp02/g;s/0010/0010/g;s/straxt=11/straxt=11/' RutinaMatConf_PlotPromedio_grupo02_kmn0010_var08.R
  sed -r -i 's/grupo00/grupo03/g;s/grp00/grp03/g;s/0010/0007/g;s/straxt=11/straxt=8/ ' RutinaMatConf_PlotPromedio_grupo03_kmn0007_var08.R
  sed -r -i 's/grupo00/grupo04/g;s/grp00/grp04/g;s/0010/0008/g;s/straxt=11/straxt=9/ ' RutinaMatConf_PlotPromedio_grupo04_kmn0008_var08.R
  sed -r -i 's/grupo00/grupo05/g;s/grp00/grp05/g;s/0010/0008/g;s/straxt=11/straxt=9/ ' RutinaMatConf_PlotPromedio_grupo05_kmn0008_var08.R
  sed -r -i 's/grupo00/grupo06/g;s/grp00/grp06/g;s/0010/0009/g;s/straxt=11/straxt=10/' RutinaMatConf_PlotPromedio_grupo06_kmn0009_var08.R

  ### generar batch paralelo
 #echo "  R --slave -f \"RutinaMatConf_PlotPromedio_grupo00_kmn0024_var08.R\"" >  TareaMatConf_PlotPromedio_grupo00_kmn0024_var08.sh
  echo "  R --slave -f \"RutinaMatConf_PlotPromedio_grupo01_kmn0006_var08.R\"" >  TareaMatConf_PlotPromedio_grupo01_kmn0006_var08.sh
  echo "  R --slave -f \"RutinaMatConf_PlotPromedio_grupo02_kmn0010_var08.R\"" >  TareaMatConf_PlotPromedio_grupo02_kmn0010_var08.sh
  echo "  R --slave -f \"RutinaMatConf_PlotPromedio_grupo03_kmn0007_var08.R\"" >  TareaMatConf_PlotPromedio_grupo03_kmn0007_var08.sh
  echo "  R --slave -f \"RutinaMatConf_PlotPromedio_grupo04_kmn0008_var08.R\"" >  TareaMatConf_PlotPromedio_grupo04_kmn0008_var08.sh
  echo "  R --slave -f \"RutinaMatConf_PlotPromedio_grupo05_kmn0008_var08.R\"" >  TareaMatConf_PlotPromedio_grupo05_kmn0008_var08.sh
  echo "  R --slave -f \"RutinaMatConf_PlotPromedio_grupo06_kmn0009_var08.R\"" >  TareaMatConf_PlotPromedio_grupo06_kmn0009_var08.sh

  ### generar llamada paralelo
 #echo "  parallel --bar --block -7 -j7 --pipepart -a   TareaMatConf_PlotPromedio_grupo00_kmn0024_var08.sh   LANG=C bash" >  BatchMatConf_PlotPromedio.sh
  echo "  parallel --bar --block -7 -j7 --pipepart -a   TareaMatConf_PlotPromedio_grupo01_kmn0006_var08.sh   LANG=C bash" >  BatchMatConf_PlotPromedio.sh
  echo "  parallel --bar --block -7 -j7 --pipepart -a   TareaMatConf_PlotPromedio_grupo02_kmn0010_var08.sh   LANG=C bash" >> BatchMatConf_PlotPromedio.sh
  echo "  parallel --bar --block -7 -j7 --pipepart -a   TareaMatConf_PlotPromedio_grupo03_kmn0007_var08.sh   LANG=C bash" >> BatchMatConf_PlotPromedio.sh
  echo "  parallel --bar --block -7 -j7 --pipepart -a   TareaMatConf_PlotPromedio_grupo04_kmn0008_var08.sh   LANG=C bash" >> BatchMatConf_PlotPromedio.sh
  echo "  parallel --bar --block -7 -j7 --pipepart -a   TareaMatConf_PlotPromedio_grupo05_kmn0008_var08.sh   LANG=C bash" >> BatchMatConf_PlotPromedio.sh
  echo "  parallel --bar --block -7 -j7 --pipepart -a   TareaMatConf_PlotPromedio_grupo06_kmn0009_var08.sh   LANG=C bash" >> BatchMatConf_PlotPromedio.sh
