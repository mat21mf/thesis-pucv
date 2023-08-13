  ### replicar
  scp RutinaSilDist_Dist.R RutinaSilDist_Dist_grupo00.R
  scp RutinaSilDist_Dist.R RutinaSilDist_Dist_grupo01.R
  scp RutinaSilDist_Dist.R RutinaSilDist_Dist_grupo02.R
  scp RutinaSilDist_Dist.R RutinaSilDist_Dist_grupo03.R
  scp RutinaSilDist_Dist.R RutinaSilDist_Dist_grupo04.R
  scp RutinaSilDist_Dist.R RutinaSilDist_Dist_grupo05.R
  scp RutinaSilDist_Dist.R RutinaSilDist_Dist_grupo06.R

  ### editar replicas
  sed -r -i 's/grupo00/grupo00/g;s/grp00/grp00/g' RutinaSilDist_Dist_grupo00.R
  sed -r -i 's/grupo00/grupo01/g;s/grp00/grp01/g' RutinaSilDist_Dist_grupo01.R
  sed -r -i 's/grupo00/grupo02/g;s/grp00/grp02/g' RutinaSilDist_Dist_grupo02.R
  sed -r -i 's/grupo00/grupo03/g;s/grp00/grp03/g' RutinaSilDist_Dist_grupo03.R
  sed -r -i 's/grupo00/grupo04/g;s/grp00/grp04/g' RutinaSilDist_Dist_grupo04.R
  sed -r -i 's/grupo00/grupo05/g;s/grp00/grp05/g' RutinaSilDist_Dist_grupo05.R
  sed -r -i 's/grupo00/grupo06/g;s/grp00/grp06/g' RutinaSilDist_Dist_grupo06.R

  ### generar batch paralelo
  echo "  R --slave -f \"RutinaSilDist_Dist_grupo00.R\"" >  TareaSilDist_Dist.sh
  echo "  R --slave -f \"RutinaSilDist_Dist_grupo01.R\"" >> TareaSilDist_Dist.sh
  echo "  R --slave -f \"RutinaSilDist_Dist_grupo02.R\"" >> TareaSilDist_Dist.sh
  echo "  R --slave -f \"RutinaSilDist_Dist_grupo03.R\"" >> TareaSilDist_Dist.sh
  echo "  R --slave -f \"RutinaSilDist_Dist_grupo04.R\"" >> TareaSilDist_Dist.sh
  echo "  R --slave -f \"RutinaSilDist_Dist_grupo05.R\"" >> TareaSilDist_Dist.sh
  echo "  R --slave -f \"RutinaSilDist_Dist_grupo06.R\"" >> TareaSilDist_Dist.sh

  ### generar llamada paralelo
  echo "  parallel --bar --block -7 -j7 --pipepart -a   TareaSilDist_Dist.sh   LANG=C bash" >  BatchSilDist_Dist.sh
