  FuncionGraficarMetricaR2 <- function( strfle , strdfm , strmnn ){
    png( filename = strfle , width=480 , height=480 )
    par( mar = c(5,5,4,2) + 0.1 ) ## default is c(5,4,4,2) + 0.1
    plot( R2 ~ k , data = strdfm , type="l" , lty=2 , xaxt="none" , ylim=c( 0 , 100 ) , ann=FALSE )
    axis( 1 , at=seq( 2 ,  31 ,  1 ) , las=1 , cex.axis=.8 )
   #axis( 2 , at=seq( 0 , 100 , 20 ) , las=1 , cex.axis=.7 ) ## seq() no funciona
    title( ylab="Porcentaje R2"           , line=4 )
    title( xlab="Número de agrupamientos" , line=3 )
    title( main=strmnn )
    abline( v = 10 , col="red" )
    dev.off()
  }

  FuncionGraficarMetricaEl <- function( strfle , strdfm , strmnn ){
    png( filename = strfle , width=480 , height=480 )
    par( mar = c(5,5,4,2) + 0.1 ) ## default is c(5,4,4,2) + 0.1
    plot( Elbow ~ k , data = strdfm , type="l" , lty=2 , xaxt="none" , ylim=c( 0 , 100 ) , ann=FALSE )
    axis( 1 , at=seq( 2 ,  31 ,  1 ) , las=1 , cex.axis=.8 )
   #axis( 2 , at=seq( 0 , 100 , 20 ) , las=1 , cex.axis=.7 ) ## seq() no funciona
    title( ylab="Porcentaje Elbow"        , line=4 )
    title( xlab="Número de agrupamientos" , line=3 )
    title( main=strmnn )
    abline( v = 10 , col="red" )
    dev.off()
  }

  FuncionGraficarMetricadEl <- function( strfle , strdfm , strmnn ){
    png( filename = strfle , width=480 , height=480 )
    par( mar = c(5,5,4,2) + 0.1 ) ## default is c(5,4,4,2) + 0.1
    plot( dElbow ~ k , data = strdfm , type="l" , lty=2 , xaxt="none"                     , ann=FALSE )
    axis( 1 , at=seq( 2 ,  31 ,  1 ) , las=1 , cex.axis=.8 )
   #axis( 2 , at=seq( 0 , 100 , 20 ) , las=1 , cex.axis=.7 ) ## seq() no funciona
    title( ylab="Porcentaje dElbow"        , line=4 )
    title( xlab="Número de agrupamientos" , line=3 )
    title( main=strmnn )
   #abline( v = 10 , col="red" )
    dev.off()
  }

  FuncionGraficarMetricaddEl <- function( strfle , strdfm , strmnn ){
    png( filename = strfle , width=480 , height=480 )
    par( mar = c(5,5,4,2) + 0.1 ) ## default is c(5,4,4,2) + 0.1
    plot( ddElbow ~ k , data = strdfm , type="l" , lty=2 , xaxt="none"                     , ann=FALSE )
    axis( 1 , at=seq( 2 ,  31 ,  1 ) , las=1 , cex.axis=.8 )
   #axis( 2 , at=seq( 0 , 100 , 20 ) , las=1 , cex.axis=.7 ) ## seq() no funciona
    title( ylab="Porcentaje ddElbow"        , line=4 )
    title( xlab="Número de agrupamientos" , line=3 )
    title( main=strmnn )
   #abline( v = 10 , col="red" )
    dev.off()
  }

  FuncionGraficarMetricatEl <- function( strfle , strdfm , strmnn ){
    png( filename = strfle , width=480 , height=480 )
    par( mar = c(5,5,4,2) + 0.1 ) ## default is c(5,4,4,2) + 0.1
    plot( tElbow ~ k , data = strdfm , type="l" , lty=2 , xaxt="none"                     , ann=FALSE )
    axis( 1 , at=seq( 2 ,  31 ,  1 ) , las=1 , cex.axis=.8 )
   #axis( 2 , at=seq( 0 , 100 , 20 ) , las=1 , cex.axis=.7 ) ## seq() no funciona
    title( ylab="Porcentaje tElbow"        , line=4 )
    title( xlab="Número de agrupamientos" , line=3 )
    title( main=strmnn )
   #abline( v = 10 , col="red" )
    dev.off()
  }

  FuncionGraficarMetricattEl <- function( strfle , strdfm , strmnn ){
    png( filename = strfle , width=480 , height=480 )
    par( mar = c(5,5,4,2) + 0.1 ) ## default is c(5,4,4,2) + 0.1
    plot( ttElbow ~ k , data = strdfm , type="l" , lty=2 , xaxt="none"                     , ann=FALSE )
    axis( 1 , at=seq( 2 ,  31 ,  1 ) , las=1 , cex.axis=.8 )
   #axis( 2 , at=seq( 0 , 100 , 20 ) , las=1 , cex.axis=.7 ) ## seq() no funciona
    title( ylab="Porcentaje ttElbow"        , line=4 )
    title( xlab="Número de agrupamientos" , line=3 )
    title( main=strmnn )
   #abline( v = 10 , col="red" )
    dev.off()
  }

  FuncionGraficarMetricaCH <- function( strfle , strdfm , strmnn ){
    png( filename = strfle , width=480 , height=480 )
    par( mar = c(5,5,4,2) + 0.1 ) ## default is c(5,4,4,2) + 0.1
    plot( CH ~ k , data = strdfm , type="l" , lty=2 , xaxt="none" , yaxt="none" , ann=FALSE )
    axis( 1 , at=seq( 2 , 31 , 1 )                                      , las=1 , cex.axis=.8 )
    axis( 2 , at=axTicks( 2 ) , labels=sprintf( "%2.2E", axTicks( 2 ) ) , las=1 , cex.axis=.7 )
    title( ylab="Valor CH"                , line=4 )
    title( xlab="Número de agrupamientos" , line=3 )
    title( main=strmnn )
    abline( v = 10 , col="red" )
    dev.off()
  }

  FuncionGraficarPromedioCluster <- function( strfle , strdfm01 , strvar01 , strdfm02 , strvar02 , strmnn , straxt ){
    png( filename = strfle , width=480 , height=480 )
    par( mar = c(5,5,4,2) + 0.1 ) ## default is c(5,4,4,2) + 0.1
    plot( eval( parse( text=strvar01 ) ) ~ Cluster , data = strdfm01 , type="l" , lty=2 , xaxt="none" , yaxt="none" , ann=FALSE , col="blue" , pch=19 )
    axis( 1 , at=seq( 1 , straxt , 1 )                                      , las=1 , cex.axis=.8 )
    axis( 2                                                                 , las=1 , cex.axis=.7 )
    arrows( strdfm01[,"Cluster"]                      ,
            strdfm01[,strvar01] - 10 * strdfm02[,strvar02] ,
            strdfm01[,"Cluster"]                      ,
            strdfm01[,strvar01] + 10 * strdfm02[,strvar02] ,
            code=3 , length=0.1 , angle=90 , col='red' )
    title( ylab="Valor promedio"          , line=4 )
    title( xlab="Número de agrupamientos" , line=3 )
    title( main=strmnn )
   #abline( v = 10 , col="red" )
    dev.off()
  }

# plot( Asp__x ~ Cluster , data = grupo00_bigkmeans_kmn0010_grp00_var08_cluster_mean , type="l" , lty=2 , xaxt="none" , yaxt="none", ann=FALSE , col="blue" , pch=19 )
# arrows( grupo00_bigkmeans_kmn0010_grp00_var08_cluster_mean[,"Cluster"] ,
#         grupo00_bigkmeans_kmn0010_grp00_var08_cluster_mean[,"Asp__x"]  - 5 * grupo00_bigkmeans_kmn0010_grp00_var08_cluster_ci[,"Asp__x"] ,
#         grupo00_bigkmeans_kmn0010_grp00_var08_cluster_mean[,"Cluster"] ,
#         grupo00_bigkmeans_kmn0010_grp00_var08_cluster_mean[,"Asp__x"]  + 5 * grupo00_bigkmeans_kmn0010_grp00_var08_cluster_ci[,"Asp__x"] ,
#         code=3,length=0.10,angle=90,col='red')

# print(  as.data.frame( cbind(
#      Asp__x_mean  =   grupo00_bigkmeans_kmn0010_grp00_var08_cluster_mean[,"Asp__x"]                                                                ,
#      Asp__x_lolim =   grupo00_bigkmeans_kmn0010_grp00_var08_cluster_mean[,"Asp__x"]  - 5 * grupo00_bigkmeans_kmn0010_grp00_var08_cluster_ci[,"Asp__x"] ,
#      Asp__x_uplim =   grupo00_bigkmeans_kmn0010_grp00_var08_cluster_mean[,"Asp__x"]  + 5 * grupo00_bigkmeans_kmn0010_grp00_var08_cluster_ci[,"Asp__x"] ) ) )
