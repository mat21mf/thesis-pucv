  ### =================================
  ### unir cluster, objetos, big.matrix
  ### =================================

  declare -gx strrut="
  echo \"  load( \\\"kmn_var08_objetos.RData\\\" )\"
  echo \"  source( \\\"DefinirVariables.R\\\" )\"
  echo \"  setwd( bakdir )\"
  echo \"  library( bigmemory )\"
  echo \"  options(bigmemory.allow.dimnames=TRUE)\"
  echo \"  grupo00st <- bigmemory::attach.big.matrix( dget( \\\"grupo00st.desc\\\" ) )\"
  echo \"  grupo00bm <- bigmemory::attach.big.matrix( dget( \\\"grupo00bm.desc\\\" ) )\"
  echo \"  bigkmeans_kmn0010_grp00_var08_cluster <- bigmemory::attach.big.matrix( dget( \\\"bigkmeans_kmn0010_grp00_var08_cluster.desc\\\" ) )\"
  echo \"  if( file.exists( \\\"grupo00_bigkmeans_kmn0010_grp00_var08_cluster.desc\\\" ) ) file.remove( c( \\\"grupo00_bigkmeans_kmn0010_grp00_var08_cluster.desc\\\" , \\\"grupo00_bigkmeans_kmn0010_grp00_var08_cluster.bin\\\" ) )\"
  echo \"  grupo00_bigkmeans_kmn0010_grp00_var08_cluster <- bigmemory::big.matrix( ncol = 15 , nrow = bigmemory::nrow( grupo00bm ) , init=0 , backingfile = \\\"grupo00_bigkmeans_kmn0010_grp00_var08_cluster.bin\\\" , descriptorfile = \\\"grupo00_bigkmeans_kmn0010_grp00_var08_cluster.desc\\\" , type=\\\"double\\\" )\"
  echo \"  colnames( grupo00_bigkmeans_kmn0010_grp00_var08_cluster ) <- c( \\\"Eje__x_scaled\\\",\\\"Eje__y_scaled\\\",\\\"Asp__x_scaled\\\",\\\"Asp__y_scaled\\\",\\\"DEM_scaled\\\",\\\"NDMI_scaled\\\",\\\"Slope_scaled\\\",\\\"TWI_scaled\\\",\\\"Asp__x\\\",\\\"Asp__y\\\",\\\"DEM\\\",\\\"NDMI\\\",\\\"Slope\\\",\\\"TWI\\\",\\\"Cluster\\\" )\"
  echo \"  grupo00_bigkmeans_kmn0010_grp00_var08_cluster[, 1] <- grupo00st[,1]\"
  echo \"  grupo00_bigkmeans_kmn0010_grp00_var08_cluster[, 2] <- grupo00st[,2]\"
  echo \"  grupo00_bigkmeans_kmn0010_grp00_var08_cluster[, 3] <- grupo00st[,3]\"
  echo \"  grupo00_bigkmeans_kmn0010_grp00_var08_cluster[, 4] <- grupo00st[,4]\"
  echo \"  grupo00_bigkmeans_kmn0010_grp00_var08_cluster[, 5] <- grupo00st[,5]\"
  echo \"  grupo00_bigkmeans_kmn0010_grp00_var08_cluster[, 6] <- grupo00st[,6]\"
  echo \"  grupo00_bigkmeans_kmn0010_grp00_var08_cluster[, 7] <- grupo00st[,7]\"
  echo \"  grupo00_bigkmeans_kmn0010_grp00_var08_cluster[, 8] <- grupo00st[,8]\"
  echo \"  grupo00_bigkmeans_kmn0010_grp00_var08_cluster[, 9] <- grupo00bm[,1]\"
  echo \"  grupo00_bigkmeans_kmn0010_grp00_var08_cluster[,10] <- grupo00bm[,2]\"
  echo \"  grupo00_bigkmeans_kmn0010_grp00_var08_cluster[,11] <- grupo00bm[,3]\"
  echo \"  grupo00_bigkmeans_kmn0010_grp00_var08_cluster[,12] <- grupo00bm[,4]\"
  echo \"  grupo00_bigkmeans_kmn0010_grp00_var08_cluster[,13] <- grupo00bm[,5]\"
  echo \"  grupo00_bigkmeans_kmn0010_grp00_var08_cluster[,14] <- grupo00bm[,6]\"
  echo \"  grupo00_bigkmeans_kmn0010_grp00_var08_cluster[,15] <- bigkmeans_kmn0010_grp00_var08_cluster[,1]\"
  echo \"  setwd( srcdir )\"
  "

# ### bash -c "${strrut}" > RutinaMatConf_Concat.R

# ### replicar
# scp RutinaMatConf_Concat.R RutinaMatConf_Concat_grupo00_kmn0010_var08.R
# scp RutinaMatConf_Concat.R RutinaMatConf_Concat_grupo01_kmn0010_var08.R
# scp RutinaMatConf_Concat.R RutinaMatConf_Concat_grupo02_kmn0010_var08.R
# scp RutinaMatConf_Concat.R RutinaMatConf_Concat_grupo03_kmn0010_var08.R
# scp RutinaMatConf_Concat.R RutinaMatConf_Concat_grupo04_kmn0010_var08.R
# scp RutinaMatConf_Concat.R RutinaMatConf_Concat_grupo05_kmn0010_var08.R
# scp RutinaMatConf_Concat.R RutinaMatConf_Concat_grupo06_kmn0010_var08.R

# ### editar replicas
# sed -r -i 's/grupo00/grupo00/g;s/grp00/grp00/g;s/0010/0010/g' RutinaMatConf_Concat_grupo00_kmn0010_var08.R
# sed -r -i 's/grupo00/grupo01/g;s/grp00/grp01/g;s/0010/0010/g' RutinaMatConf_Concat_grupo01_kmn0010_var08.R
# sed -r -i 's/grupo00/grupo02/g;s/grp00/grp02/g;s/0010/0010/g' RutinaMatConf_Concat_grupo02_kmn0010_var08.R
# sed -r -i 's/grupo00/grupo03/g;s/grp00/grp03/g;s/0010/0010/g' RutinaMatConf_Concat_grupo03_kmn0010_var08.R
# sed -r -i 's/grupo00/grupo04/g;s/grp00/grp04/g;s/0010/0010/g' RutinaMatConf_Concat_grupo04_kmn0010_var08.R
# sed -r -i 's/grupo00/grupo05/g;s/grp00/grp05/g;s/0010/0010/g' RutinaMatConf_Concat_grupo05_kmn0010_var08.R
# sed -r -i 's/grupo00/grupo06/g;s/grp00/grp06/g;s/0010/0010/g' RutinaMatConf_Concat_grupo06_kmn0010_var08.R

# ### generar batch paralelo
# echo "  R --slave -f \"RutinaMatConf_Concat_grupo00_kmn0010_var08.R\"" >  TareaMatConf_Concat_kmn0010_var08.sh
# echo "  R --slave -f \"RutinaMatConf_Concat_grupo01_kmn0010_var08.R\"" >> TareaMatConf_Concat_kmn0010_var08.sh
# echo "  R --slave -f \"RutinaMatConf_Concat_grupo02_kmn0010_var08.R\"" >> TareaMatConf_Concat_kmn0010_var08.sh
# echo "  R --slave -f \"RutinaMatConf_Concat_grupo03_kmn0010_var08.R\"" >> TareaMatConf_Concat_kmn0010_var08.sh
# echo "  R --slave -f \"RutinaMatConf_Concat_grupo04_kmn0010_var08.R\"" >> TareaMatConf_Concat_kmn0010_var08.sh
# echo "  R --slave -f \"RutinaMatConf_Concat_grupo05_kmn0010_var08.R\"" >> TareaMatConf_Concat_kmn0010_var08.sh
# echo "  R --slave -f \"RutinaMatConf_Concat_grupo06_kmn0010_var08.R\"" >> TareaMatConf_Concat_kmn0010_var08.sh

# ### replicar
# scp RutinaMatConf_Concat.R RutinaMatConf_Concat_grupo00_kmn0018_var08.R
# scp RutinaMatConf_Concat.R RutinaMatConf_Concat_grupo01_kmn0018_var08.R
# scp RutinaMatConf_Concat.R RutinaMatConf_Concat_grupo02_kmn0018_var08.R
# scp RutinaMatConf_Concat.R RutinaMatConf_Concat_grupo03_kmn0018_var08.R
# scp RutinaMatConf_Concat.R RutinaMatConf_Concat_grupo04_kmn0018_var08.R
# scp RutinaMatConf_Concat.R RutinaMatConf_Concat_grupo05_kmn0018_var08.R
# scp RutinaMatConf_Concat.R RutinaMatConf_Concat_grupo06_kmn0018_var08.R

# ### generar llamada paralelo
# echo "  parallel --bar --block -7 -j7 --pipepart -a   TareaMatConf_Concat_kmn0010_var08.sh   LANG=C bash" >  BatchMatConf_Concat.sh

# ### editar replicas
# sed -r -i 's/grupo00/grupo00/g;s/grp00/grp00/g;s/0010/0018/g' RutinaMatConf_Concat_grupo00_kmn0018_var08.R
# sed -r -i 's/grupo00/grupo01/g;s/grp00/grp01/g;s/0010/0018/g' RutinaMatConf_Concat_grupo01_kmn0018_var08.R
# sed -r -i 's/grupo00/grupo02/g;s/grp00/grp02/g;s/0010/0018/g' RutinaMatConf_Concat_grupo02_kmn0018_var08.R
# sed -r -i 's/grupo00/grupo03/g;s/grp00/grp03/g;s/0010/0018/g' RutinaMatConf_Concat_grupo03_kmn0018_var08.R
# sed -r -i 's/grupo00/grupo04/g;s/grp00/grp04/g;s/0010/0018/g' RutinaMatConf_Concat_grupo04_kmn0018_var08.R
# sed -r -i 's/grupo00/grupo05/g;s/grp00/grp05/g;s/0010/0018/g' RutinaMatConf_Concat_grupo05_kmn0018_var08.R
# sed -r -i 's/grupo00/grupo06/g;s/grp00/grp06/g;s/0010/0018/g' RutinaMatConf_Concat_grupo06_kmn0018_var08.R

# ### generar batch paralelo
# echo "  R --slave -f \"RutinaMatConf_Concat_grupo00_kmn0018_var08.R\"" >  TareaMatConf_Concat_kmn0018_var08.sh
# echo "  R --slave -f \"RutinaMatConf_Concat_grupo01_kmn0018_var08.R\"" >> TareaMatConf_Concat_kmn0018_var08.sh
# echo "  R --slave -f \"RutinaMatConf_Concat_grupo02_kmn0018_var08.R\"" >> TareaMatConf_Concat_kmn0018_var08.sh
# echo "  R --slave -f \"RutinaMatConf_Concat_grupo03_kmn0018_var08.R\"" >> TareaMatConf_Concat_kmn0018_var08.sh
# echo "  R --slave -f \"RutinaMatConf_Concat_grupo04_kmn0018_var08.R\"" >> TareaMatConf_Concat_kmn0018_var08.sh
# echo "  R --slave -f \"RutinaMatConf_Concat_grupo05_kmn0018_var08.R\"" >> TareaMatConf_Concat_kmn0018_var08.sh
# echo "  R --slave -f \"RutinaMatConf_Concat_grupo06_kmn0018_var08.R\"" >> TareaMatConf_Concat_kmn0018_var08.sh

# ### generar llamada paralelo
# echo "  parallel --bar --block -7 -j7 --pipepart -a   TareaMatConf_Concat_kmn0018_var08.sh   LANG=C bash" >> BatchMatConf_Concat.sh

# ### replicar
# scp RutinaMatConf_Concat.R RutinaMatConf_Concat_grupo00_kmn0024_var08.R
# scp RutinaMatConf_Concat.R RutinaMatConf_Concat_grupo01_kmn0024_var08.R
# scp RutinaMatConf_Concat.R RutinaMatConf_Concat_grupo02_kmn0024_var08.R
# scp RutinaMatConf_Concat.R RutinaMatConf_Concat_grupo03_kmn0024_var08.R
# scp RutinaMatConf_Concat.R RutinaMatConf_Concat_grupo04_kmn0024_var08.R
# scp RutinaMatConf_Concat.R RutinaMatConf_Concat_grupo05_kmn0024_var08.R
# scp RutinaMatConf_Concat.R RutinaMatConf_Concat_grupo06_kmn0024_var08.R

# ### editar replicas
# sed -r -i 's/grupo00/grupo00/g;s/grp00/grp00/g;s/0010/0024/g' RutinaMatConf_Concat_grupo00_kmn0024_var08.R
# sed -r -i 's/grupo00/grupo01/g;s/grp00/grp01/g;s/0010/0024/g' RutinaMatConf_Concat_grupo01_kmn0024_var08.R
# sed -r -i 's/grupo00/grupo02/g;s/grp00/grp02/g;s/0010/0024/g' RutinaMatConf_Concat_grupo02_kmn0024_var08.R
# sed -r -i 's/grupo00/grupo03/g;s/grp00/grp03/g;s/0010/0024/g' RutinaMatConf_Concat_grupo03_kmn0024_var08.R
# sed -r -i 's/grupo00/grupo04/g;s/grp00/grp04/g;s/0010/0024/g' RutinaMatConf_Concat_grupo04_kmn0024_var08.R
# sed -r -i 's/grupo00/grupo05/g;s/grp00/grp05/g;s/0010/0024/g' RutinaMatConf_Concat_grupo05_kmn0024_var08.R
# sed -r -i 's/grupo00/grupo06/g;s/grp00/grp06/g;s/0010/0024/g' RutinaMatConf_Concat_grupo06_kmn0024_var08.R

# ### generar batch paralelo
# echo "  R --slave -f \"RutinaMatConf_Concat_grupo00_kmn0024_var08.R\"" >  TareaMatConf_Concat_kmn0024_var08.sh
# echo "  R --slave -f \"RutinaMatConf_Concat_grupo01_kmn0024_var08.R\"" >> TareaMatConf_Concat_kmn0024_var08.sh
# echo "  R --slave -f \"RutinaMatConf_Concat_grupo02_kmn0024_var08.R\"" >> TareaMatConf_Concat_kmn0024_var08.sh
# echo "  R --slave -f \"RutinaMatConf_Concat_grupo03_kmn0024_var08.R\"" >> TareaMatConf_Concat_kmn0024_var08.sh
# echo "  R --slave -f \"RutinaMatConf_Concat_grupo04_kmn0024_var08.R\"" >> TareaMatConf_Concat_kmn0024_var08.sh
# echo "  R --slave -f \"RutinaMatConf_Concat_grupo05_kmn0024_var08.R\"" >> TareaMatConf_Concat_kmn0024_var08.sh
# echo "  R --slave -f \"RutinaMatConf_Concat_grupo06_kmn0024_var08.R\"" >> TareaMatConf_Concat_kmn0024_var08.sh

# ### generar llamada paralelo
# echo "  parallel --bar --block -7 -j7 --pipepart -a   TareaMatConf_Concat_kmn0024_var08.sh   LANG=C bash" >> BatchMatConf_Concat.sh

  ### replicar
 #scp RutinaMatConf_Concat.R RutinaMatConf_Concat_grupo00_kmn0024_var08.R
  scp RutinaMatConf_Concat.R RutinaMatConf_Concat_grupo01_kmn0006_var08.R
  scp RutinaMatConf_Concat.R RutinaMatConf_Concat_grupo02_kmn0010_var08.R
  scp RutinaMatConf_Concat.R RutinaMatConf_Concat_grupo03_kmn0007_var08.R
  scp RutinaMatConf_Concat.R RutinaMatConf_Concat_grupo04_kmn0008_var08.R
  scp RutinaMatConf_Concat.R RutinaMatConf_Concat_grupo05_kmn0008_var08.R
  scp RutinaMatConf_Concat.R RutinaMatConf_Concat_grupo06_kmn0009_var08.R

  ### editar replicas
 #sed -r -i 's/grupo00/grupo00/g;s/grp00/grp00/g;s/0010/0024/g' RutinaMatConf_Concat_grupo00_kmn0024_var08.R
  sed -r -i 's/grupo00/grupo01/g;s/grp00/grp01/g;s/0010/0006/g' RutinaMatConf_Concat_grupo01_kmn0006_var08.R
  sed -r -i 's/grupo00/grupo02/g;s/grp00/grp02/g;s/0010/0010/g' RutinaMatConf_Concat_grupo02_kmn0010_var08.R
  sed -r -i 's/grupo00/grupo03/g;s/grp00/grp03/g;s/0010/0007/g' RutinaMatConf_Concat_grupo03_kmn0007_var08.R
  sed -r -i 's/grupo00/grupo04/g;s/grp00/grp04/g;s/0010/0008/g' RutinaMatConf_Concat_grupo04_kmn0008_var08.R
  sed -r -i 's/grupo00/grupo05/g;s/grp00/grp05/g;s/0010/0008/g' RutinaMatConf_Concat_grupo05_kmn0008_var08.R
  sed -r -i 's/grupo00/grupo06/g;s/grp00/grp06/g;s/0010/0009/g' RutinaMatConf_Concat_grupo06_kmn0009_var08.R

  ### generar batch paralelo
 #echo "  R --slave -f \"RutinaMatConf_Concat_grupo00_kmn0024_var08.R\"" >  TareaMatConf_Concat_grupo00_kmn0024_var08.sh
  echo "  R --slave -f \"RutinaMatConf_Concat_grupo01_kmn0006_var08.R\"" >  TareaMatConf_Concat_grupo01_kmn0006_var08.sh
  echo "  R --slave -f \"RutinaMatConf_Concat_grupo02_kmn0010_var08.R\"" >  TareaMatConf_Concat_grupo02_kmn0010_var08.sh
  echo "  R --slave -f \"RutinaMatConf_Concat_grupo03_kmn0007_var08.R\"" >  TareaMatConf_Concat_grupo03_kmn0007_var08.sh
  echo "  R --slave -f \"RutinaMatConf_Concat_grupo04_kmn0008_var08.R\"" >  TareaMatConf_Concat_grupo04_kmn0008_var08.sh
  echo "  R --slave -f \"RutinaMatConf_Concat_grupo05_kmn0008_var08.R\"" >  TareaMatConf_Concat_grupo05_kmn0008_var08.sh
  echo "  R --slave -f \"RutinaMatConf_Concat_grupo06_kmn0009_var08.R\"" >  TareaMatConf_Concat_grupo06_kmn0009_var08.sh

  ### generar llamada paralelo
 #echo "  parallel --bar --block -7 -j7 --pipepart -a   TareaMatConf_Concat_grupo00_kmn0024_var08.sh   LANG=C bash" >  BatchMatConf_Concat.sh
  echo "  parallel --bar --block -7 -j7 --pipepart -a   TareaMatConf_Concat_grupo01_kmn0006_var08.sh   LANG=C bash" >  BatchMatConf_Concat.sh
  echo "  parallel --bar --block -7 -j7 --pipepart -a   TareaMatConf_Concat_grupo02_kmn0010_var08.sh   LANG=C bash" >> BatchMatConf_Concat.sh
  echo "  parallel --bar --block -7 -j7 --pipepart -a   TareaMatConf_Concat_grupo03_kmn0007_var08.sh   LANG=C bash" >> BatchMatConf_Concat.sh
  echo "  parallel --bar --block -7 -j7 --pipepart -a   TareaMatConf_Concat_grupo04_kmn0008_var08.sh   LANG=C bash" >> BatchMatConf_Concat.sh
  echo "  parallel --bar --block -7 -j7 --pipepart -a   TareaMatConf_Concat_grupo05_kmn0008_var08.sh   LANG=C bash" >> BatchMatConf_Concat.sh
  echo "  parallel --bar --block -7 -j7 --pipepart -a   TareaMatConf_Concat_grupo06_kmn0009_var08.sh   LANG=C bash" >> BatchMatConf_Concat.sh
