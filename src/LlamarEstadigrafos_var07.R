# ### funcion pendiente
# source( "FuncionEstadigrafos.R" )

  ### cargar objetos
  load( "kmn_var07_objetos.RData" )

  ### var07 tot.betweenss
  kmn_grp00_var07_objetos$tot.betweenss <- ( kmn_grp00_var07_objetos$totss - kmn_grp00_var07_objetos$tot.withinss )
  kmn_grp01_var07_objetos$tot.betweenss <- ( kmn_grp01_var07_objetos$totss - kmn_grp01_var07_objetos$tot.withinss )
  kmn_grp02_var07_objetos$tot.betweenss <- ( kmn_grp02_var07_objetos$totss - kmn_grp02_var07_objetos$tot.withinss )
  kmn_grp03_var07_objetos$tot.betweenss <- ( kmn_grp03_var07_objetos$totss - kmn_grp03_var07_objetos$tot.withinss )
  kmn_grp04_var07_objetos$tot.betweenss <- ( kmn_grp04_var07_objetos$totss - kmn_grp04_var07_objetos$tot.withinss )
  kmn_grp05_var07_objetos$tot.betweenss <- ( kmn_grp05_var07_objetos$totss - kmn_grp05_var07_objetos$tot.withinss )
  kmn_grp06_var07_objetos$tot.betweenss <- ( kmn_grp06_var07_objetos$totss - kmn_grp06_var07_objetos$tot.withinss )

  ### reordenar columnas
  kmn_grp00_var07_objetos <- kmn_grp00_var07_objetos[ , c( 1, 2, 3, 4, 6, 5 ) ]
  kmn_grp01_var07_objetos <- kmn_grp01_var07_objetos[ , c( 1, 2, 3, 4, 6, 5 ) ]
  kmn_grp02_var07_objetos <- kmn_grp02_var07_objetos[ , c( 1, 2, 3, 4, 6, 5 ) ]
  kmn_grp03_var07_objetos <- kmn_grp03_var07_objetos[ , c( 1, 2, 3, 4, 6, 5 ) ]
  kmn_grp04_var07_objetos <- kmn_grp04_var07_objetos[ , c( 1, 2, 3, 4, 6, 5 ) ]
  kmn_grp05_var07_objetos <- kmn_grp05_var07_objetos[ , c( 1, 2, 3, 4, 6, 5 ) ]
  kmn_grp06_var07_objetos <- kmn_grp06_var07_objetos[ , c( 1, 2, 3, 4, 6, 5 ) ]


  ### var07 R2
  kmn_grp00_var07_objetos$R2 <- ( kmn_grp00_var07_objetos$totss - kmn_grp00_var07_objetos$tot.withinss ) / kmn_grp00_var07_objetos$totss * 100
  kmn_grp01_var07_objetos$R2 <- ( kmn_grp01_var07_objetos$totss - kmn_grp01_var07_objetos$tot.withinss ) / kmn_grp01_var07_objetos$totss * 100
  kmn_grp02_var07_objetos$R2 <- ( kmn_grp02_var07_objetos$totss - kmn_grp02_var07_objetos$tot.withinss ) / kmn_grp02_var07_objetos$totss * 100
  kmn_grp03_var07_objetos$R2 <- ( kmn_grp03_var07_objetos$totss - kmn_grp03_var07_objetos$tot.withinss ) / kmn_grp03_var07_objetos$totss * 100
  kmn_grp04_var07_objetos$R2 <- ( kmn_grp04_var07_objetos$totss - kmn_grp04_var07_objetos$tot.withinss ) / kmn_grp04_var07_objetos$totss * 100
  kmn_grp05_var07_objetos$R2 <- ( kmn_grp05_var07_objetos$totss - kmn_grp05_var07_objetos$tot.withinss ) / kmn_grp05_var07_objetos$totss * 100
  kmn_grp06_var07_objetos$R2 <- ( kmn_grp06_var07_objetos$totss - kmn_grp06_var07_objetos$tot.withinss ) / kmn_grp06_var07_objetos$totss * 100

  ### var07 elbow
  kmn_grp00_var07_objetos$Elbow <- ( kmn_grp00_var07_objetos$tot.withinss ) / kmn_grp00_var07_objetos$totss * 100
  kmn_grp01_var07_objetos$Elbow <- ( kmn_grp01_var07_objetos$tot.withinss ) / kmn_grp01_var07_objetos$totss * 100
  kmn_grp02_var07_objetos$Elbow <- ( kmn_grp02_var07_objetos$tot.withinss ) / kmn_grp02_var07_objetos$totss * 100
  kmn_grp03_var07_objetos$Elbow <- ( kmn_grp03_var07_objetos$tot.withinss ) / kmn_grp03_var07_objetos$totss * 100
  kmn_grp04_var07_objetos$Elbow <- ( kmn_grp04_var07_objetos$tot.withinss ) / kmn_grp04_var07_objetos$totss * 100
  kmn_grp05_var07_objetos$Elbow <- ( kmn_grp05_var07_objetos$tot.withinss ) / kmn_grp05_var07_objetos$totss * 100
  kmn_grp06_var07_objetos$Elbow <- ( kmn_grp06_var07_objetos$tot.withinss ) / kmn_grp06_var07_objetos$totss * 100

  ### var07 CH
  kmn_grp00_var07_objetos$CH <- ( kmn_grp00_var07_objetos$totss - kmn_grp00_var07_objetos$tot.withinss ) * ( grupo00st.nrow -  kmn_grp00_var07_objetos$k ) / ( kmn_grp00_var07_objetos$tot.withinss * (  kmn_grp00_var07_objetos$k - 1 ) )
  kmn_grp01_var07_objetos$CH <- ( kmn_grp01_var07_objetos$totss - kmn_grp01_var07_objetos$tot.withinss ) * ( grupo01st.nrow -  kmn_grp01_var07_objetos$k ) / ( kmn_grp01_var07_objetos$tot.withinss * (  kmn_grp01_var07_objetos$k - 1 ) )
  kmn_grp02_var07_objetos$CH <- ( kmn_grp02_var07_objetos$totss - kmn_grp02_var07_objetos$tot.withinss ) * ( grupo02st.nrow -  kmn_grp02_var07_objetos$k ) / ( kmn_grp02_var07_objetos$tot.withinss * (  kmn_grp02_var07_objetos$k - 1 ) )
  kmn_grp03_var07_objetos$CH <- ( kmn_grp03_var07_objetos$totss - kmn_grp03_var07_objetos$tot.withinss ) * ( grupo03st.nrow -  kmn_grp03_var07_objetos$k ) / ( kmn_grp03_var07_objetos$tot.withinss * (  kmn_grp03_var07_objetos$k - 1 ) )
  kmn_grp04_var07_objetos$CH <- ( kmn_grp04_var07_objetos$totss - kmn_grp04_var07_objetos$tot.withinss ) * ( grupo04st.nrow -  kmn_grp04_var07_objetos$k ) / ( kmn_grp04_var07_objetos$tot.withinss * (  kmn_grp04_var07_objetos$k - 1 ) )
  kmn_grp05_var07_objetos$CH <- ( kmn_grp05_var07_objetos$totss - kmn_grp05_var07_objetos$tot.withinss ) * ( grupo05st.nrow -  kmn_grp05_var07_objetos$k ) / ( kmn_grp05_var07_objetos$tot.withinss * (  kmn_grp05_var07_objetos$k - 1 ) )
  kmn_grp06_var07_objetos$CH <- ( kmn_grp06_var07_objetos$totss - kmn_grp06_var07_objetos$tot.withinss ) * ( grupo06st.nrow -  kmn_grp06_var07_objetos$k ) / ( kmn_grp06_var07_objetos$tot.withinss * (  kmn_grp06_var07_objetos$k - 1 ) )

  ### diff Elbow
  kmn_grp00_var07_objetos$dElbow <- c( NA , diff( kmn_grp00_var07_objetos$Elbow ) )
  kmn_grp01_var07_objetos$dElbow <- c( NA , diff( kmn_grp01_var07_objetos$Elbow ) )
  kmn_grp02_var07_objetos$dElbow <- c( NA , diff( kmn_grp02_var07_objetos$Elbow ) )
  kmn_grp03_var07_objetos$dElbow <- c( NA , diff( kmn_grp03_var07_objetos$Elbow ) )
  kmn_grp04_var07_objetos$dElbow <- c( NA , diff( kmn_grp04_var07_objetos$Elbow ) )
  kmn_grp05_var07_objetos$dElbow <- c( NA , diff( kmn_grp05_var07_objetos$Elbow ) )
  kmn_grp06_var07_objetos$dElbow <- c( NA , diff( kmn_grp06_var07_objetos$Elbow ) )

  ### diff diff Elbow
  kmn_grp00_var07_objetos$ddElbow <- c( NA , NA , diff( diff( kmn_grp00_var07_objetos$Elbow ) ) )
  kmn_grp01_var07_objetos$ddElbow <- c( NA , NA , diff( diff( kmn_grp01_var07_objetos$Elbow ) ) )
  kmn_grp02_var07_objetos$ddElbow <- c( NA , NA , diff( diff( kmn_grp02_var07_objetos$Elbow ) ) )
  kmn_grp03_var07_objetos$ddElbow <- c( NA , NA , diff( diff( kmn_grp03_var07_objetos$Elbow ) ) )
  kmn_grp04_var07_objetos$ddElbow <- c( NA , NA , diff( diff( kmn_grp04_var07_objetos$Elbow ) ) )
  kmn_grp05_var07_objetos$ddElbow <- c( NA , NA , diff( diff( kmn_grp05_var07_objetos$Elbow ) ) )
  kmn_grp06_var07_objetos$ddElbow <- c( NA , NA , diff( diff( kmn_grp06_var07_objetos$Elbow ) ) )

  ### ratio Elbow
  kmn_grp00_var07_objetos$tElbow <- c(NA,kmn_grp00_var07_objetos$Elbow[-1]/kmn_grp00_var07_objetos$Elbow[1:nrow(kmn_grp00_var07_objetos)-1]-1)  ## c( NA , diff( kmn_grp00_var07_objetos$Elbow ) )
  kmn_grp01_var07_objetos$tElbow <- c(NA,kmn_grp01_var07_objetos$Elbow[-1]/kmn_grp01_var07_objetos$Elbow[1:nrow(kmn_grp00_var07_objetos)-1]-1)  ## c( NA , diff( kmn_grp01_var07_objetos$Elbow ) )
  kmn_grp02_var07_objetos$tElbow <- c(NA,kmn_grp02_var07_objetos$Elbow[-1]/kmn_grp02_var07_objetos$Elbow[1:nrow(kmn_grp00_var07_objetos)-1]-1)  ## c( NA , diff( kmn_grp02_var07_objetos$Elbow ) )
  kmn_grp03_var07_objetos$tElbow <- c(NA,kmn_grp03_var07_objetos$Elbow[-1]/kmn_grp03_var07_objetos$Elbow[1:nrow(kmn_grp00_var07_objetos)-1]-1)  ## c( NA , diff( kmn_grp03_var07_objetos$Elbow ) )
  kmn_grp04_var07_objetos$tElbow <- c(NA,kmn_grp04_var07_objetos$Elbow[-1]/kmn_grp04_var07_objetos$Elbow[1:nrow(kmn_grp00_var07_objetos)-1]-1)  ## c( NA , diff( kmn_grp04_var07_objetos$Elbow ) )
  kmn_grp05_var07_objetos$tElbow <- c(NA,kmn_grp05_var07_objetos$Elbow[-1]/kmn_grp05_var07_objetos$Elbow[1:nrow(kmn_grp00_var07_objetos)-1]-1)  ## c( NA , diff( kmn_grp05_var07_objetos$Elbow ) )
  kmn_grp06_var07_objetos$tElbow <- c(NA,kmn_grp06_var07_objetos$Elbow[-1]/kmn_grp06_var07_objetos$Elbow[1:nrow(kmn_grp00_var07_objetos)-1]-1)  ## c( NA , diff( kmn_grp06_var07_objetos$Elbow ) )

  ### ratio ratio Elbow
  kmn_grp00_var07_objetos$ttElbow <- c(NA,kmn_grp00_var07_objetos$tElbow[-2]/kmn_grp00_var07_objetos$tElbow[2:nrow(kmn_grp00_var07_objetos)-1]-1)  ## c( NA , NA , diff( diff( kmn_grp00_var07_objetos$Elbow ) ) )
  kmn_grp01_var07_objetos$ttElbow <- c(NA,kmn_grp01_var07_objetos$tElbow[-2]/kmn_grp01_var07_objetos$tElbow[2:nrow(kmn_grp00_var07_objetos)-1]-1)  ## c( NA , NA , diff( diff( kmn_grp01_var07_objetos$Elbow ) ) )
  kmn_grp02_var07_objetos$ttElbow <- c(NA,kmn_grp02_var07_objetos$tElbow[-2]/kmn_grp02_var07_objetos$tElbow[2:nrow(kmn_grp00_var07_objetos)-1]-1)  ## c( NA , NA , diff( diff( kmn_grp02_var07_objetos$Elbow ) ) )
  kmn_grp03_var07_objetos$ttElbow <- c(NA,kmn_grp03_var07_objetos$tElbow[-2]/kmn_grp03_var07_objetos$tElbow[2:nrow(kmn_grp00_var07_objetos)-1]-1)  ## c( NA , NA , diff( diff( kmn_grp03_var07_objetos$Elbow ) ) )
  kmn_grp04_var07_objetos$ttElbow <- c(NA,kmn_grp04_var07_objetos$tElbow[-2]/kmn_grp04_var07_objetos$tElbow[2:nrow(kmn_grp00_var07_objetos)-1]-1)  ## c( NA , NA , diff( diff( kmn_grp04_var07_objetos$Elbow ) ) )
  kmn_grp05_var07_objetos$ttElbow <- c(NA,kmn_grp05_var07_objetos$tElbow[-2]/kmn_grp05_var07_objetos$tElbow[2:nrow(kmn_grp00_var07_objetos)-1]-1)  ## c( NA , NA , diff( diff( kmn_grp05_var07_objetos$Elbow ) ) )
  kmn_grp06_var07_objetos$ttElbow <- c(NA,kmn_grp06_var07_objetos$tElbow[-2]/kmn_grp06_var07_objetos$tElbow[2:nrow(kmn_grp00_var07_objetos)-1]-1)  ## c( NA , NA , diff( diff( kmn_grp06_var07_objetos$Elbow ) ) )

  ### diff Elbow peak
  kmn_grp00_var07_objetos$dElbow.peak <- ggpmisc:::find_peaks( kmn_grp00_var07_objetos$dElbow )
  kmn_grp01_var07_objetos$dElbow.peak <- ggpmisc:::find_peaks( kmn_grp01_var07_objetos$dElbow )
  kmn_grp02_var07_objetos$dElbow.peak <- ggpmisc:::find_peaks( kmn_grp02_var07_objetos$dElbow )
  kmn_grp03_var07_objetos$dElbow.peak <- ggpmisc:::find_peaks( kmn_grp03_var07_objetos$dElbow )
  kmn_grp04_var07_objetos$dElbow.peak <- ggpmisc:::find_peaks( kmn_grp04_var07_objetos$dElbow )
  kmn_grp05_var07_objetos$dElbow.peak <- ggpmisc:::find_peaks( kmn_grp05_var07_objetos$dElbow )
  kmn_grp06_var07_objetos$dElbow.peak <- ggpmisc:::find_peaks( kmn_grp06_var07_objetos$dElbow )

  ### diff diff Elbow peak
  kmn_grp00_var07_objetos$ddElbow.peak <- ggpmisc:::find_peaks( kmn_grp00_var07_objetos$ddElbow )
  kmn_grp01_var07_objetos$ddElbow.peak <- ggpmisc:::find_peaks( kmn_grp01_var07_objetos$ddElbow )
  kmn_grp02_var07_objetos$ddElbow.peak <- ggpmisc:::find_peaks( kmn_grp02_var07_objetos$ddElbow )
  kmn_grp03_var07_objetos$ddElbow.peak <- ggpmisc:::find_peaks( kmn_grp03_var07_objetos$ddElbow )
  kmn_grp04_var07_objetos$ddElbow.peak <- ggpmisc:::find_peaks( kmn_grp04_var07_objetos$ddElbow )
  kmn_grp05_var07_objetos$ddElbow.peak <- ggpmisc:::find_peaks( kmn_grp05_var07_objetos$ddElbow )
  kmn_grp06_var07_objetos$ddElbow.peak <- ggpmisc:::find_peaks( kmn_grp06_var07_objetos$ddElbow )

  ### ratio Elbow peak
  kmn_grp00_var07_objetos$tElbow.peak <- ggpmisc:::find_peaks( kmn_grp00_var07_objetos$tElbow )
  kmn_grp01_var07_objetos$tElbow.peak <- ggpmisc:::find_peaks( kmn_grp01_var07_objetos$tElbow )
  kmn_grp02_var07_objetos$tElbow.peak <- ggpmisc:::find_peaks( kmn_grp02_var07_objetos$tElbow )
  kmn_grp03_var07_objetos$tElbow.peak <- ggpmisc:::find_peaks( kmn_grp03_var07_objetos$tElbow )
  kmn_grp04_var07_objetos$tElbow.peak <- ggpmisc:::find_peaks( kmn_grp04_var07_objetos$tElbow )
  kmn_grp05_var07_objetos$tElbow.peak <- ggpmisc:::find_peaks( kmn_grp05_var07_objetos$tElbow )
  kmn_grp06_var07_objetos$tElbow.peak <- ggpmisc:::find_peaks( kmn_grp06_var07_objetos$tElbow )

  ### ratio ratio Elbow peak
  kmn_grp00_var07_objetos$ttElbow.peak <- ggpmisc:::find_peaks( kmn_grp00_var07_objetos$ttElbow )
  kmn_grp01_var07_objetos$ttElbow.peak <- ggpmisc:::find_peaks( kmn_grp01_var07_objetos$ttElbow )
  kmn_grp02_var07_objetos$ttElbow.peak <- ggpmisc:::find_peaks( kmn_grp02_var07_objetos$ttElbow )
  kmn_grp03_var07_objetos$ttElbow.peak <- ggpmisc:::find_peaks( kmn_grp03_var07_objetos$ttElbow )
  kmn_grp04_var07_objetos$ttElbow.peak <- ggpmisc:::find_peaks( kmn_grp04_var07_objetos$ttElbow )
  kmn_grp05_var07_objetos$ttElbow.peak <- ggpmisc:::find_peaks( kmn_grp05_var07_objetos$ttElbow )
  kmn_grp06_var07_objetos$ttElbow.peak <- ggpmisc:::find_peaks( kmn_grp06_var07_objetos$ttElbow )

# ### CH p-value (obsoleto)
# kmn_grp00_var07_objetos$CHcr.95 <- stats::qf( 0.95 , kmn_grp00_var07_objetos$k - 1 , grupo00st.nrow - kmn_grp00_var07_objetos$k )
# kmn_grp01_var07_objetos$CHcr.95 <- stats::qf( 0.95 , kmn_grp01_var07_objetos$k - 1 , grupo01st.nrow - kmn_grp01_var07_objetos$k )
# kmn_grp02_var07_objetos$CHcr.95 <- stats::qf( 0.95 , kmn_grp02_var07_objetos$k - 1 , grupo02st.nrow - kmn_grp02_var07_objetos$k )
# kmn_grp03_var07_objetos$CHcr.95 <- stats::qf( 0.95 , kmn_grp03_var07_objetos$k - 1 , grupo03st.nrow - kmn_grp03_var07_objetos$k )
# kmn_grp04_var07_objetos$CHcr.95 <- stats::qf( 0.95 , kmn_grp04_var07_objetos$k - 1 , grupo04st.nrow - kmn_grp04_var07_objetos$k )
# kmn_grp05_var07_objetos$CHcr.95 <- stats::qf( 0.95 , kmn_grp05_var07_objetos$k - 1 , grupo05st.nrow - kmn_grp05_var07_objetos$k )
# kmn_grp06_var07_objetos$CHcr.95 <- stats::qf( 0.95 , kmn_grp06_var07_objetos$k - 1 , grupo06st.nrow - kmn_grp06_var07_objetos$k )

# ### CH decision (obsoleto)
# kmn_grp00_var07_objetos$CHho <- "Rechaza nula" ; kmn_grp00_var07_objetos$CHho[ kmn_grp00_var07_objetos$CH < kmn_grp00_var07_objetos$CHcr.95 ] <- "No rechaza nula"
# kmn_grp01_var07_objetos$CHho <- "Rechaza nula" ; kmn_grp01_var07_objetos$CHho[ kmn_grp01_var07_objetos$CH < kmn_grp01_var07_objetos$CHcr.95 ] <- "No rechaza nula"
# kmn_grp02_var07_objetos$CHho <- "Rechaza nula" ; kmn_grp02_var07_objetos$CHho[ kmn_grp02_var07_objetos$CH < kmn_grp02_var07_objetos$CHcr.95 ] <- "No rechaza nula"
# kmn_grp03_var07_objetos$CHho <- "Rechaza nula" ; kmn_grp03_var07_objetos$CHho[ kmn_grp03_var07_objetos$CH < kmn_grp03_var07_objetos$CHcr.95 ] <- "No rechaza nula"
# kmn_grp04_var07_objetos$CHho <- "Rechaza nula" ; kmn_grp04_var07_objetos$CHho[ kmn_grp04_var07_objetos$CH < kmn_grp04_var07_objetos$CHcr.95 ] <- "No rechaza nula"
# kmn_grp05_var07_objetos$CHho <- "Rechaza nula" ; kmn_grp05_var07_objetos$CHho[ kmn_grp05_var07_objetos$CH < kmn_grp05_var07_objetos$CHcr.95 ] <- "No rechaza nula"
# kmn_grp06_var07_objetos$CHho <- "Rechaza nula" ; kmn_grp06_var07_objetos$CHho[ kmn_grp06_var07_objetos$CH < kmn_grp06_var07_objetos$CHcr.95 ] <- "No rechaza nula"

  ### cargar funciones graficas
  source( "FuncionGraficarMetricas.R" )

  ### graficar var07 R2
  FuncionGraficarMetricaR2( "png/kmn_grp00_var07_objetos_R2.png" , kmn_grp00_var07_objetos , "Curva R2\npara variables topológicas\nen grupo00" )
  FuncionGraficarMetricaR2( "png/kmn_grp01_var07_objetos_R2.png" , kmn_grp01_var07_objetos , "Curva R2\npara variables topológicas\nen grupo01" )
  FuncionGraficarMetricaR2( "png/kmn_grp02_var07_objetos_R2.png" , kmn_grp02_var07_objetos , "Curva R2\npara variables topológicas\nen grupo02" )
  FuncionGraficarMetricaR2( "png/kmn_grp03_var07_objetos_R2.png" , kmn_grp03_var07_objetos , "Curva R2\npara variables topológicas\nen grupo03" )
  FuncionGraficarMetricaR2( "png/kmn_grp04_var07_objetos_R2.png" , kmn_grp04_var07_objetos , "Curva R2\npara variables topológicas\nen grupo04" )
  FuncionGraficarMetricaR2( "png/kmn_grp05_var07_objetos_R2.png" , kmn_grp05_var07_objetos , "Curva R2\npara variables topológicas\nen grupo05" )
  FuncionGraficarMetricaR2( "png/kmn_grp06_var07_objetos_R2.png" , kmn_grp06_var07_objetos , "Curva R2\npara variables topológicas\nen grupo06" )

  ### graficar var07 elbow
  FuncionGraficarMetricaEl( "png/kmn_grp00_var07_objetos_elbow.png" , kmn_grp00_var07_objetos , "Curva Elbow\npara variables topológicas\nen grupo00" )
  FuncionGraficarMetricaEl( "png/kmn_grp01_var07_objetos_elbow.png" , kmn_grp01_var07_objetos , "Curva Elbow\npara variables topológicas\nen grupo01" )
  FuncionGraficarMetricaEl( "png/kmn_grp02_var07_objetos_elbow.png" , kmn_grp02_var07_objetos , "Curva Elbow\npara variables topológicas\nen grupo02" )
  FuncionGraficarMetricaEl( "png/kmn_grp03_var07_objetos_elbow.png" , kmn_grp03_var07_objetos , "Curva Elbow\npara variables topológicas\nen grupo03" )
  FuncionGraficarMetricaEl( "png/kmn_grp04_var07_objetos_elbow.png" , kmn_grp04_var07_objetos , "Curva Elbow\npara variables topológicas\nen grupo04" )
  FuncionGraficarMetricaEl( "png/kmn_grp05_var07_objetos_elbow.png" , kmn_grp05_var07_objetos , "Curva Elbow\npara variables topológicas\nen grupo05" )
  FuncionGraficarMetricaEl( "png/kmn_grp06_var07_objetos_elbow.png" , kmn_grp06_var07_objetos , "Curva Elbow\npara variables topológicas\nen grupo06" )

  ### graficar var07 CH
  FuncionGraficarMetricaCH( "png/kmn_grp00_var07_objetos_ch.png" , kmn_grp00_var07_objetos , "Curva Calinski-Harabasz\npara variables topológicas\nen grupo00" )
  FuncionGraficarMetricaCH( "png/kmn_grp01_var07_objetos_ch.png" , kmn_grp01_var07_objetos , "Curva Calinski-Harabasz\npara variables topológicas\nen grupo01" )
  FuncionGraficarMetricaCH( "png/kmn_grp02_var07_objetos_ch.png" , kmn_grp02_var07_objetos , "Curva Calinski-Harabasz\npara variables topológicas\nen grupo02" )
  FuncionGraficarMetricaCH( "png/kmn_grp03_var07_objetos_ch.png" , kmn_grp03_var07_objetos , "Curva Calinski-Harabasz\npara variables topológicas\nen grupo03" )
  FuncionGraficarMetricaCH( "png/kmn_grp04_var07_objetos_ch.png" , kmn_grp04_var07_objetos , "Curva Calinski-Harabasz\npara variables topológicas\nen grupo04" )
  FuncionGraficarMetricaCH( "png/kmn_grp05_var07_objetos_ch.png" , kmn_grp05_var07_objetos , "Curva Calinski-Harabasz\npara variables topológicas\nen grupo05" )
  FuncionGraficarMetricaCH( "png/kmn_grp06_var07_objetos_ch.png" , kmn_grp06_var07_objetos , "Curva Calinski-Harabasz\npara variables topológicas\nen grupo06" )

  ### graficar var07 delbow
  FuncionGraficarMetricadEl( "png/kmn_grp00_var07_objetos_delbow.png" , kmn_grp00_var07_objetos , "Curva delbow\npara variables topológicas\nen grupo00" )
  FuncionGraficarMetricadEl( "png/kmn_grp01_var07_objetos_delbow.png" , kmn_grp01_var07_objetos , "Curva delbow\npara variables topológicas\nen grupo01" )
  FuncionGraficarMetricadEl( "png/kmn_grp02_var07_objetos_delbow.png" , kmn_grp02_var07_objetos , "Curva delbow\npara variables topológicas\nen grupo02" )
  FuncionGraficarMetricadEl( "png/kmn_grp03_var07_objetos_delbow.png" , kmn_grp03_var07_objetos , "Curva delbow\npara variables topológicas\nen grupo03" )
  FuncionGraficarMetricadEl( "png/kmn_grp04_var07_objetos_delbow.png" , kmn_grp04_var07_objetos , "Curva delbow\npara variables topológicas\nen grupo04" )
  FuncionGraficarMetricadEl( "png/kmn_grp05_var07_objetos_delbow.png" , kmn_grp05_var07_objetos , "Curva delbow\npara variables topológicas\nen grupo05" )
  FuncionGraficarMetricadEl( "png/kmn_grp06_var07_objetos_delbow.png" , kmn_grp06_var07_objetos , "Curva delbow\npara variables topológicas\nen grupo06" )

  ### graficar var07 ddelbow
  FuncionGraficarMetricaddEl( "png/kmn_grp00_var07_objetos_ddelbow.png" , kmn_grp00_var07_objetos , "Curva ddelbow\npara variables topológicas\nen grupo00" )
  FuncionGraficarMetricaddEl( "png/kmn_grp01_var07_objetos_ddelbow.png" , kmn_grp01_var07_objetos , "Curva ddelbow\npara variables topológicas\nen grupo01" )
  FuncionGraficarMetricaddEl( "png/kmn_grp02_var07_objetos_ddelbow.png" , kmn_grp02_var07_objetos , "Curva ddelbow\npara variables topológicas\nen grupo02" )
  FuncionGraficarMetricaddEl( "png/kmn_grp03_var07_objetos_ddelbow.png" , kmn_grp03_var07_objetos , "Curva ddelbow\npara variables topológicas\nen grupo03" )
  FuncionGraficarMetricaddEl( "png/kmn_grp04_var07_objetos_ddelbow.png" , kmn_grp04_var07_objetos , "Curva ddelbow\npara variables topológicas\nen grupo04" )
  FuncionGraficarMetricaddEl( "png/kmn_grp05_var07_objetos_ddelbow.png" , kmn_grp05_var07_objetos , "Curva ddelbow\npara variables topológicas\nen grupo05" )
  FuncionGraficarMetricaddEl( "png/kmn_grp06_var07_objetos_ddelbow.png" , kmn_grp06_var07_objetos , "Curva ddelbow\npara variables topológicas\nen grupo06" )

  ### graficar var07 telbow
  FuncionGraficarMetricatEl( "png/kmn_grp00_var07_objetos_telbow.png" , kmn_grp00_var07_objetos , "Curva telbow\npara variables topológicas\nen grupo00" )
  FuncionGraficarMetricatEl( "png/kmn_grp01_var07_objetos_telbow.png" , kmn_grp01_var07_objetos , "Curva telbow\npara variables topológicas\nen grupo01" )
  FuncionGraficarMetricatEl( "png/kmn_grp02_var07_objetos_telbow.png" , kmn_grp02_var07_objetos , "Curva telbow\npara variables topológicas\nen grupo02" )
  FuncionGraficarMetricatEl( "png/kmn_grp03_var07_objetos_telbow.png" , kmn_grp03_var07_objetos , "Curva telbow\npara variables topológicas\nen grupo03" )
  FuncionGraficarMetricatEl( "png/kmn_grp04_var07_objetos_telbow.png" , kmn_grp04_var07_objetos , "Curva telbow\npara variables topológicas\nen grupo04" )
  FuncionGraficarMetricatEl( "png/kmn_grp05_var07_objetos_telbow.png" , kmn_grp05_var07_objetos , "Curva telbow\npara variables topológicas\nen grupo05" )
  FuncionGraficarMetricatEl( "png/kmn_grp06_var07_objetos_telbow.png" , kmn_grp06_var07_objetos , "Curva telbow\npara variables topológicas\nen grupo06" )

  ### graficar var07 ttelbow
  FuncionGraficarMetricattEl( "png/kmn_grp00_var07_objetos_ttelbow.png" , kmn_grp00_var07_objetos , "Curva ttelbow\npara variables topológicas\nen grupo00" )
  FuncionGraficarMetricattEl( "png/kmn_grp01_var07_objetos_ttelbow.png" , kmn_grp01_var07_objetos , "Curva ttelbow\npara variables topológicas\nen grupo01" )
  FuncionGraficarMetricattEl( "png/kmn_grp02_var07_objetos_ttelbow.png" , kmn_grp02_var07_objetos , "Curva ttelbow\npara variables topológicas\nen grupo02" )
  FuncionGraficarMetricattEl( "png/kmn_grp03_var07_objetos_ttelbow.png" , kmn_grp03_var07_objetos , "Curva ttelbow\npara variables topológicas\nen grupo03" )
  FuncionGraficarMetricattEl( "png/kmn_grp04_var07_objetos_ttelbow.png" , kmn_grp04_var07_objetos , "Curva ttelbow\npara variables topológicas\nen grupo04" )
  FuncionGraficarMetricattEl( "png/kmn_grp05_var07_objetos_ttelbow.png" , kmn_grp05_var07_objetos , "Curva ttelbow\npara variables topológicas\nen grupo05" )
  FuncionGraficarMetricattEl( "png/kmn_grp06_var07_objetos_ttelbow.png" , kmn_grp06_var07_objetos , "Curva ttelbow\npara variables topológicas\nen grupo06" )

  ### grabar csv var07
  write.table( kmn_grp00_var07_objetos , file = "csv/kmn_grp00_var07_objetos.csv" , row.names=F, col.names=T, sep="@", quote=F )
  write.table( kmn_grp01_var07_objetos , file = "csv/kmn_grp01_var07_objetos.csv" , row.names=F, col.names=T, sep="@", quote=F )
  write.table( kmn_grp02_var07_objetos , file = "csv/kmn_grp02_var07_objetos.csv" , row.names=F, col.names=T, sep="@", quote=F )
  write.table( kmn_grp03_var07_objetos , file = "csv/kmn_grp03_var07_objetos.csv" , row.names=F, col.names=T, sep="@", quote=F )
  write.table( kmn_grp04_var07_objetos , file = "csv/kmn_grp04_var07_objetos.csv" , row.names=F, col.names=T, sep="@", quote=F )
  write.table( kmn_grp05_var07_objetos , file = "csv/kmn_grp05_var07_objetos.csv" , row.names=F, col.names=T, sep="@", quote=F )
  write.table( kmn_grp06_var07_objetos , file = "csv/kmn_grp06_var07_objetos.csv" , row.names=F, col.names=T, sep="@", quote=F )

  ### cargar descripciones grupos
  source( "DiccionarioGrupos.R" )

  ### cargar funcion
  source( "FuncionExportarExcel.R" )

  ### recrear archivos
  if( file.exists( "xlsx/kmedias_estadigrafos_topologicas.xlsx" ) ) file.remove( "xlsx/kmedias_estadigrafos_topologicas.xlsx" )

  ### exportar excel var07
  kmn_grp00_var07_objetos <- ExportarDataframeEstadigrafosKmeans( kmn_grp00_var07_objetos , "xlsx/kmedias_estadigrafos_topologicas.xlsx" , "csv/kmn_grp00_var07_objetos.csv" , "grupo00" , strgrp00 , "png/kmn_grp00_var07_objetos_R2.png" , "png/kmn_grp00_var07_objetos_elbow.png" , "png/kmn_grp00_var07_objetos_ch.png" , "png/kmn_grp00_var07_objetos_delbow.png" , "png/kmn_grp00_var07_objetos_ddelbow.png" , "png/kmn_grp00_var07_objetos_telbow.png" , "png/kmn_grp00_var07_objetos_ttelbow.png" )
  kmn_grp01_var07_objetos <- ExportarDataframeEstadigrafosKmeans( kmn_grp01_var07_objetos , "xlsx/kmedias_estadigrafos_topologicas.xlsx" , "csv/kmn_grp01_var07_objetos.csv" , "grupo01" , strgrp01 , "png/kmn_grp01_var07_objetos_R2.png" , "png/kmn_grp01_var07_objetos_elbow.png" , "png/kmn_grp01_var07_objetos_ch.png" , "png/kmn_grp01_var07_objetos_delbow.png" , "png/kmn_grp01_var07_objetos_ddelbow.png" , "png/kmn_grp01_var07_objetos_telbow.png" , "png/kmn_grp01_var07_objetos_ttelbow.png" )
  kmn_grp02_var07_objetos <- ExportarDataframeEstadigrafosKmeans( kmn_grp02_var07_objetos , "xlsx/kmedias_estadigrafos_topologicas.xlsx" , "csv/kmn_grp02_var07_objetos.csv" , "grupo02" , strgrp02 , "png/kmn_grp02_var07_objetos_R2.png" , "png/kmn_grp02_var07_objetos_elbow.png" , "png/kmn_grp02_var07_objetos_ch.png" , "png/kmn_grp02_var07_objetos_delbow.png" , "png/kmn_grp02_var07_objetos_ddelbow.png" , "png/kmn_grp02_var07_objetos_telbow.png" , "png/kmn_grp02_var07_objetos_ttelbow.png" )
  kmn_grp03_var07_objetos <- ExportarDataframeEstadigrafosKmeans( kmn_grp03_var07_objetos , "xlsx/kmedias_estadigrafos_topologicas.xlsx" , "csv/kmn_grp03_var07_objetos.csv" , "grupo03" , strgrp03 , "png/kmn_grp03_var07_objetos_R2.png" , "png/kmn_grp03_var07_objetos_elbow.png" , "png/kmn_grp03_var07_objetos_ch.png" , "png/kmn_grp03_var07_objetos_delbow.png" , "png/kmn_grp03_var07_objetos_ddelbow.png" , "png/kmn_grp03_var07_objetos_telbow.png" , "png/kmn_grp03_var07_objetos_ttelbow.png" )
  kmn_grp04_var07_objetos <- ExportarDataframeEstadigrafosKmeans( kmn_grp04_var07_objetos , "xlsx/kmedias_estadigrafos_topologicas.xlsx" , "csv/kmn_grp04_var07_objetos.csv" , "grupo04" , strgrp04 , "png/kmn_grp04_var07_objetos_R2.png" , "png/kmn_grp04_var07_objetos_elbow.png" , "png/kmn_grp04_var07_objetos_ch.png" , "png/kmn_grp04_var07_objetos_delbow.png" , "png/kmn_grp04_var07_objetos_ddelbow.png" , "png/kmn_grp04_var07_objetos_telbow.png" , "png/kmn_grp04_var07_objetos_ttelbow.png" )
  kmn_grp05_var07_objetos <- ExportarDataframeEstadigrafosKmeans( kmn_grp05_var07_objetos , "xlsx/kmedias_estadigrafos_topologicas.xlsx" , "csv/kmn_grp05_var07_objetos.csv" , "grupo05" , strgrp05 , "png/kmn_grp05_var07_objetos_R2.png" , "png/kmn_grp05_var07_objetos_elbow.png" , "png/kmn_grp05_var07_objetos_ch.png" , "png/kmn_grp05_var07_objetos_delbow.png" , "png/kmn_grp05_var07_objetos_ddelbow.png" , "png/kmn_grp05_var07_objetos_telbow.png" , "png/kmn_grp05_var07_objetos_ttelbow.png" )
  kmn_grp06_var07_objetos <- ExportarDataframeEstadigrafosKmeans( kmn_grp06_var07_objetos , "xlsx/kmedias_estadigrafos_topologicas.xlsx" , "csv/kmn_grp06_var07_objetos.csv" , "grupo06" , strgrp06 , "png/kmn_grp06_var07_objetos_R2.png" , "png/kmn_grp06_var07_objetos_elbow.png" , "png/kmn_grp06_var07_objetos_ch.png" , "png/kmn_grp06_var07_objetos_delbow.png" , "png/kmn_grp06_var07_objetos_ddelbow.png" , "png/kmn_grp06_var07_objetos_telbow.png" , "png/kmn_grp06_var07_objetos_ttelbow.png" )
