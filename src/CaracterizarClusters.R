### cargar big.matrix
grupo01st <- bigmemory::attach.big.matrix( dget( "grupo01st.desc" ) )
grupo02st <- bigmemory::attach.big.matrix( dget( "grupo02st.desc" ) )
grupo03st <- bigmemory::attach.big.matrix( dget( "grupo03st.desc" ) )
grupo04st <- bigmemory::attach.big.matrix( dget( "grupo04st.desc" ) )
grupo05st <- bigmemory::attach.big.matrix( dget( "grupo05st.desc" ) )
grupo06st <- bigmemory::attach.big.matrix( dget( "grupo06st.desc" ) )

### grupo01
### Cluster 1-> Fondos de quebrada, cursos de agua, y zonas inundadas
### Cluster 2-> Lomaje suave de baja altura de exposición nor-este
### Cluster 3-> Lomaje suave de baja altura de exposición sur (umbría)
### Cluster 4-> Plano de baja altura
### Cluster 5-> Humedales, zonas inundadas y cultivos
### Cluster 6-> Montañas costeras (sobre 400 msnm y pendientes 20)
### Cluster 7-> Lomaje suave de baja altura de exposición nor-oeste

### grupo02
### Cluster 1-> Lomaje suave de baja altura de exposición nor-oeste
### Cluster 2-> Planicies húmedas de exposición sur-este
### Cluster 3-> Lomaje suave de baja altura, con influencia húmedo costera, de umbría (sur)
### Cluster 4-> Montaña costera de exposición not-este (sobre 400 msnm y pendientes 20)
### Cluster 5-> Lomaje suave de baja altura de exposición sur (umbría)
### Cluster 6-> Lomaje suave de baja altura, semihúmedo de exposición oeste
### Cluster 7-> Fondos de quebrada, cursos de agua
### Cluster 8-> Montaña costera, de exposición sur-oeste (sobre 400 msnm y pendientes 20)
### Cluster 9-> Montaña costera, de exposición solana (norte) (sobre 400 msnm y pendientes 20)
### Cluster 10-> Montaña costera, de exposición umbría (sur) (sobre 400 msnm y pendientes 20)
### Cluster 11->  Lomaje suave de baja altura de exposición norte (solana)

library(RColorBrewer)
spec <- brewer.pal( 11 , "Spectral" )
set3 <- brewer.pal( 12 , "Set3"     )
pair <- brewer.pal( 12 , "Paired"   )

library(ffbase)

### preparar grafico barras recuento observaciones por cluster
plot( as.numeric( grupo01_bigkmeans_kmn0006_grp01_var08_cluster_t [ 1 , 2:8  ] ) , type="h" , lwd=45 , lend=1 , col=pair , las=1 ); axis( 1 , xaxp=c(1,7 ,6 ) )
plot( as.numeric( grupo02_bigkmeans_kmn0010_grp02_var08_cluster_t [ 1 , 2:12 ] ) , type="h" , lwd=45 , lend=1 , col=pair , las=1 ); axis( 1 , xaxp=c(1,11,10) )
plot( as.numeric( grupo03_bigkmeans_kmn0007_grp03_var08_cluster_t [ 1 , 2:9  ] ) , type="h" , lwd=45 , lend=1 , col=pair , las=1 ); axis( 1 , xaxp=c(1,8 ,7 ) )
plot( as.numeric( grupo04_bigkmeans_kmn0008_grp04_var08_cluster_t [ 1 , 2:10 ] ) , type="h" , lwd=45 , lend=1 , col=pair , las=1 ); axis( 1 , xaxp=c(1,9 ,8 ) )
plot( as.numeric( grupo05_bigkmeans_kmn0008_grp05_var08_cluster_t [ 1 , 2:10 ] ) , type="h" , lwd=45 , lend=1 , col=pair , las=1 ); axis( 1 , xaxp=c(1,9 ,8 ) )
plot( as.numeric( grupo06_bigkmeans_kmn0009_grp06_var08_cluster_t [ 1 , 2:11 ] ) , type="h" , lwd=45 , lend=1 , col=pair , las=1 ); axis( 1 , xaxp=c(1,10,9 ) )

### graficar max , mean , min
plot( grupo03_bigkmeans_kmn0007_grp03_var08_cluster_max  [ , 11  ] , type="h" , lwd=45 , lend=1 , col=pair , las=1 ); axis( 1 , xaxp=c(1,8,7) )
plot( grupo03_bigkmeans_kmn0007_grp03_var08_cluster_min  [ , 11  ] , type="h" , lwd=45 , lend=1 , col=pair , las=1 ); axis( 1 , xaxp=c(1,8,7) )
barplot( grupo03_bigkmeans_kmn0007_grp03_var08_cluster_vec                                         , col=c(spec,greenseq) , las=1 , beside=T )

grupo03_bigkmeans_kmn0007_grp03_var08_cluster_vec <- structure( c(
              grupo03_bigkmeans_kmn0007_grp03_var08_cluster_max [ , c(11) ] ,
              grupo03_bigkmeans_kmn0007_grp03_var08_cluster_min [ , c(11) ] ) , .Dim = c(2,8) )
grupo03_bigkmeans_kmn0007_grp03_var08_cluster_vec

### histograma de DEM original (pendiente)
### bigtabulate::bigsplit( grupo03st )

### generar cortes con mwhich
grupo03_bigkmeans_kmn0007_grp03_var08_cluster
biganalytics::binit( grupo03st )

### crear percentiles usando bigmemory
grp01.probs <- c(0.1426,0.2852,0.4278,0.5704,0.7130,0.8556,0.9982)
grp02.probs <- c(0.0909,0.1818,0.2727,0.3636,0.4545,0.5454,0.6363,0.7272,0.8181,0.9090,0.9999)
grp03.probs <- c(0.125,0.250,0.375,0.500,0.625,0.750,0.875,1.000)
GetQuantiles <- function( strrows , strdata , strvar , strprob ) {
  quantile( strdata [ strrows , strvar ] , probs = strprob , na.rm = TRUE )
}

### grupo03
bigmemory::nrow( grupo03st [ bigmemory::mwhich( grupo03st , 5 , grupo03_bigkmeans_kmn0007_grp03_var08_cluster_t [ grupo03_bigkmeans_kmn0007_grp03_var08_cluster_t$Variable == "DEM.max" , 'cl_1' ] , 'le' ) & bigmemory::mwhich( grupo03st , 5 , grupo03_bigkmeans_kmn0007_grp03_var08_cluster_t [ grupo03_bigkmeans_kmn0007_grp03_var08_cluster_t$Variable == "DEM.min" , 'cl_1' ] , 'ge' ) , ] )  ### Cluster 1-> Fondos de quebrada, cursos de agua
bigmemory::nrow( grupo03st [ bigmemory::mwhich( grupo03st , 5 , grupo03_bigkmeans_kmn0007_grp03_var08_cluster_t [ grupo03_bigkmeans_kmn0007_grp03_var08_cluster_t$Variable == "DEM.max" , 'cl_2' ] , 'le' ) & bigmemory::mwhich( grupo03st , 5 , grupo03_bigkmeans_kmn0007_grp03_var08_cluster_t [ grupo03_bigkmeans_kmn0007_grp03_var08_cluster_t$Variable == "DEM.min" , 'cl_2' ] , 'ge' ) , ] )  ### Cluster 2-> Montaña costera, de exposición solana (norte) (sobre 400 msnm y pendientes 20)
bigmemory::nrow( grupo03st [ bigmemory::mwhich( grupo03st , 5 , grupo03_bigkmeans_kmn0007_grp03_var08_cluster_t [ grupo03_bigkmeans_kmn0007_grp03_var08_cluster_t$Variable == "DEM.max" , 'cl_3' ] , 'le' ) & bigmemory::mwhich( grupo03st , 5 , grupo03_bigkmeans_kmn0007_grp03_var08_cluster_t [ grupo03_bigkmeans_kmn0007_grp03_var08_cluster_t$Variable == "DEM.min" , 'cl_3' ] , 'ge' ) , ] )  ### Cluster 3-> (cima) meseta de montaña costera, sin exposición (sobre los 1800 msnm)
bigmemory::nrow( grupo03st [ bigmemory::mwhich( grupo03st , 5 , grupo03_bigkmeans_kmn0007_grp03_var08_cluster_t [ grupo03_bigkmeans_kmn0007_grp03_var08_cluster_t$Variable == "DEM.max" , 'cl_4' ] , 'le' ) & bigmemory::mwhich( grupo03st , 5 , grupo03_bigkmeans_kmn0007_grp03_var08_cluster_t [ grupo03_bigkmeans_kmn0007_grp03_var08_cluster_t$Variable == "DEM.min" , 'cl_4' ] , 'ge' ) , ] )  ### Cluster 4-> Montaña costera, de exposición umbría (sur) (sobre 400 msnm y pendientes 20), semihúmeda
bigmemory::nrow( grupo03st [ bigmemory::mwhich( grupo03st , 5 , grupo03_bigkmeans_kmn0007_grp03_var08_cluster_t [ grupo03_bigkmeans_kmn0007_grp03_var08_cluster_t$Variable == "DEM.max" , 'cl_5' ] , 'le' ) & bigmemory::mwhich( grupo03st , 5 , grupo03_bigkmeans_kmn0007_grp03_var08_cluster_t [ grupo03_bigkmeans_kmn0007_grp03_var08_cluster_t$Variable == "DEM.min" , 'cl_5' ] , 'ge' ) , ] )  ### Cluster 5-> Montaña costera, de exposición umbría (sur) (sobre 400 msnm y pendientes 20),
bigmemory::nrow( grupo03st [ bigmemory::mwhich( grupo03st , 5 , grupo03_bigkmeans_kmn0007_grp03_var08_cluster_t [ grupo03_bigkmeans_kmn0007_grp03_var08_cluster_t$Variable == "DEM.max" , 'cl_6' ] , 'le' ) & bigmemory::mwhich( grupo03st , 5 , grupo03_bigkmeans_kmn0007_grp03_var08_cluster_t [ grupo03_bigkmeans_kmn0007_grp03_var08_cluster_t$Variable == "DEM.min" , 'cl_6' ] , 'ge' ) , ] )  ### Cluster 6-> Montaña costera, de exposición nor-oeste (sobre 400 msnm y pendientes 20), semihumeda
bigmemory::nrow( grupo03st [ bigmemory::mwhich( grupo03st , 5 , grupo03_bigkmeans_kmn0007_grp03_var08_cluster_t [ grupo03_bigkmeans_kmn0007_grp03_var08_cluster_t$Variable == "DEM.max" , 'cl_7' ] , 'le' ) & bigmemory::mwhich( grupo03st , 5 , grupo03_bigkmeans_kmn0007_grp03_var08_cluster_t [ grupo03_bigkmeans_kmn0007_grp03_var08_cluster_t$Variable == "DEM.min" , 'cl_7' ] , 'ge' ) , ] )  ### Cluster 7-> Montaña costera, de exposición not-este (sobre 400 msnm y pendientes 20),
bigmemory::nrow( grupo03st [ bigmemory::mwhich( grupo03st , 5 , grupo03_bigkmeans_kmn0007_grp03_var08_cluster_t [ grupo03_bigkmeans_kmn0007_grp03_var08_cluster_t$Variable == "DEM.max" , 'cl_8' ] , 'le' ) & bigmemory::mwhich( grupo03st , 5 , grupo03_bigkmeans_kmn0007_grp03_var08_cluster_t [ grupo03_bigkmeans_kmn0007_grp03_var08_cluster_t$Variable == "DEM.min" , 'cl_8' ] , 'ge' ) , ] )  ### Cluster 8-> Montaña costera, de exposición nor-oeste (sobre 400 msnm y pendientes 20),
### max     Asp__x            Asp__y            DEM              NDMI              Slope            TWI            ###   Cluster
grupo03st [ grupo03st$Asp__x <= 1            grupo03st$Asp__y <= 0,999962032  grupo03st$DEM >= 704,1091309 & grupo03st$DEM <= 2093,782715 & grupo03st$NDMI <= 0,552915215 grupo03st$Slope <= 42,95178223 grupo03st$TWI <= 14,5345583     ### 1
grupo03st [ grupo03st$Asp__x <= 1            grupo03st$Asp__y <= 0,999999285  grupo03st$DEM >= 730,5629272 & grupo03st$DEM <= 2205,405762 & grupo03st$NDMI <= 0,380573511 grupo03st$Slope <= 60,08794785 grupo03st$TWI <= 9,425065994    ### 2
grupo03st [ grupo03st$Asp__x <= 1            grupo03st$Asp__y <= 0,999695599  grupo03st$DEM >= 1004,816345 & grupo03st$DEM <= 2280,458496 & grupo03st$NDMI <= 0,358684838 grupo03st$Slope <= 35,20888901 grupo03st$TWI <= 14,20449829    ### 3
grupo03st [ grupo03st$Asp__x <= 0,999998808  grupo03st$Asp__y <= 0,283673793  grupo03st$DEM >= 707,5119629 & grupo03st$DEM <= 2182,869873 & grupo03st$NDMI <= 0,540558517 grupo03st$Slope <= 65,78953552 grupo03st$TWI <= 8,836701393    ### 4
grupo03st [ grupo03st$Asp__x <= 0,999999702  grupo03st$Asp__y <= 0,122750051  grupo03st$DEM >= 784,071228  & grupo03st$DEM <= 2186,263672 & grupo03st$NDMI <= 0,453215539 grupo03st$Slope <= 63,79925919 grupo03st$TWI <= 9,337724686    ### 5
grupo03st [ grupo03st$Asp__x <= 0,52505976   grupo03st$Asp__y <= 0,999993265  grupo03st$DEM >= 748,269104  & grupo03st$DEM <= 2159,689209 & grupo03st$NDMI <= 0,534754276 grupo03st$Slope <= 67,02374268 grupo03st$TWI <= 8,788881302    ### 6
grupo03st [ grupo03st$Asp__x <= 1            grupo03st$Asp__y <= 0,999970436  grupo03st$DEM >= 722,7106934 & grupo03st$DEM <= 2147,799316 & grupo03st$NDMI <= 0,498770535 grupo03st$Slope <= 64,56455994 grupo03st$TWI <= 8,993455887    ### 7
grupo03st [ grupo03st$Asp__x <= 0,740009427  grupo03st$Asp__y <= 0,999996006  grupo03st$DEM >= 730,4025269 & grupo03st$DEM <= 2121,851563 & grupo03st$NDMI <= 0,411882401 grupo03st$Slope <= 64,36872864 grupo03st$TWI <= 9,521368027    ### 8
### min     Asp__x            Asp__y            DEM              NDMI              Slope            TWI            ###   Cluster
grupo03st [ grupo03st$Asp__x >= -1           grupo03st$Asp__y >= -1           grupo03st$DEM >= 704,1091309 grupo03st$NDMI >= -0,11003878  grupo03st$Slope >= 0,105025001 grupo03st$TWI >= 5,452611446 ### 1
grupo03st [ grupo03st$Asp__x >= -0,356091321 grupo03st$Asp__y >= -0,910426795 grupo03st$DEM >= 730,5629272 grupo03st$NDMI >= -0,209887162 grupo03st$Slope >= 2,839555979 grupo03st$TWI >= 3,499361515 ### 2
grupo03st [ grupo03st$Asp__x >= -1           grupo03st$Asp__y >= -1           grupo03st$DEM >= 1004,816345 grupo03st$NDMI >= -0,224033639 grupo03st$Slope >= 0,159881279 grupo03st$TWI >= 4,287699699 ### 3
grupo03st [ grupo03st$Asp__x >= -0,999999344 grupo03st$Asp__y >= -1           grupo03st$DEM >= 707,5119629 grupo03st$NDMI >= -0,108029313 grupo03st$Slope >= 4,649438381 grupo03st$TWI >= 3,483205318 ### 4
grupo03st [ grupo03st$Asp__x >= -0,953163803 grupo03st$Asp__y >= -1           grupo03st$DEM >= 784,071228  grupo03st$NDMI >= -0,186940163 grupo03st$Slope >= 2,072696686 grupo03st$TWI >= 3,466426373 ### 5
grupo03st [ grupo03st$Asp__x >= -1           grupo03st$Asp__y >= -0,653975546 grupo03st$DEM >= 748,269104  grupo03st$NDMI >= -0,156315833 grupo03st$Slope >= 4,199210167 grupo03st$TWI >= 3,262893438 ### 6
grupo03st [ grupo03st$Asp__x >= -0,247253627 grupo03st$Asp__y >= -0,999895513 grupo03st$DEM >= 722,7106934 grupo03st$NDMI >= -0,197995827 grupo03st$Slope >= 2,884548187 grupo03st$TWI >= 3,107019424 ### 7
grupo03st [ grupo03st$Asp__x >= -1           grupo03st$Asp__y >= -0,483753264 grupo03st$DEM >= 730,4025269 grupo03st$NDMI >= -0,190542564 grupo03st$Slope >= 2,740229607 grupo03st$TWI >= 3,542815685 ### 8

### grupo04
### Cluster 1-> Montaña de media altura, de solana (norte) (entre 1000 y 2000 msnm)
### Cluster 2-> Lomaje suave de media altura,
### Cluster 3-> Montaña de media altura, de orientación oeste (entre 1000 y 2000 msnm)
### Cluster 4-> Llanos / faldeos de lomaje suave, orientación sur-oeste
### Cluster 5-> Cursos de agua, en depresión intermedia, uso agrícola
### Cluster 6-> Fondos de quebrada, cursos de agua, del contrafuerte
### Cluster 7-> Fondos de quebrada, de umbría (sur)
### Cluster 8-> Contrafuerte, montaña de media altura, sin exposición clara.
### Cluster 9-> Fondos de quebrada, de umbría (sur)

### grupo05
### Cluster 1-> Montaña de media altura, ladera sur-oeste (entre 1000 y 2000 msnm)
### Cluster 2-> Montaña altura, ladera sur-este (sobre 2000 msnm)
### Cluster 3-> Montaña de altura, ladera not-oeste (sobre 2000 msnm)
### Cluster 4-> Montaña de media altura, ladera norte (entre 1000 y 2000 msnm)
### Cluster 5-> Montaña altura, ladera norte-oeste (sobre 2000 msnm)
### Cluster 6-> Contrafuerte, montaña de media altura, sin exposición clara.
### Cluster 7-> Fondos de quebrada de cordillera
### Cluster 8-> Montaña altura, ladera sur-oeste, húmeda (vegas?)
### Cluster 9-> Montaña altura, ladera oeste, floraciones rocosas

### grupo06
### Cluster 1-> Fondos de quebrada, morrenas glaciales
### Cluster 2-> Montaña altura 
### Cluster 3-> Fondos de quebrada, morrenas glaciales, con nieve
### Cluster 4-> Montaña altura, exposición nor-este
### Cluster 5-> Fondos de quebrada, sur-este
### Cluster 6-> Montaña altura, exposición nor-este
### Cluster 7-> Altas cimas, con nieve, exposición nor-oeste
### Cluster 8-> Montaña altura, ladera norte
### Cluster 9-> Montaña altura, ladera sur
### Cluster 10-> Montaña altura, exposición nor-oeste
