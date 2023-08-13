  ### usamos un ejemplo para obtener estadigrafos y aplicarlos al datos del estudio
  if( file.exists( "../ejemplos/bmfood02.RData" ) ) {
    load( "../ejemplos/bmfood02.RData" )
  } else {
  url = 'http://www.biz.uiowa.edu/faculty/jledolter/DataMining/protein.csv'
  food <- read.csv(url)
  }

  ### seleccionamos variables
  if( exists("food02") ) rm(food02)
  food02 <- food[,c("WhiteMeat","RedMeat")]
  food02 <- as.data.frame( scale( food02 ) )

  ### stats::kmeans
  set.seed(123456789)
  grpMeat <- kmeans( food02 , centers=4, nstart=7 )
  ###  ( grpMeat )

  ### creamos dataframe con clusters y centros OK
  food02 <- cbind(food02,cluster=grpMeat$cluster)
  food02$WMeatCl <- numeric(length=nrow(food))
  food02$RMeatCl <- numeric(length=nrow(food))
  food02$WMeatCl[ food02$cluster == 1 ] <- grpMeat$centers[ rownames( grpMeat$centers )[1],1]
  food02$RMeatCl[ food02$cluster == 1 ] <- grpMeat$centers[ rownames( grpMeat$centers )[1],2]
  food02$WMeatCl[ food02$cluster == 2 ] <- grpMeat$centers[ rownames( grpMeat$centers )[2],1]
  food02$RMeatCl[ food02$cluster == 2 ] <- grpMeat$centers[ rownames( grpMeat$centers )[2],2]
  food02$WMeatCl[ food02$cluster == 3 ] <- grpMeat$centers[ rownames( grpMeat$centers )[3],1]
  food02$RMeatCl[ food02$cluster == 3 ] <- grpMeat$centers[ rownames( grpMeat$centers )[3],2]
  food02$XMWMeatCl <- ( food02$WhiteMeat  - food02$WMeatCl )^2
  food02$XMRMeatCl <- ( food02$RedMeat    - food02$RMeatCl )^2

  ### verificamos withinss OK
  print( aggregate( XMWMeatCl + XMRMeatCl ~ cluster , FUN = "sum" , data = food02 )[-1] )
  print( as.data.frame(grpMeat$withinss) )

  ### agregamos totss y verificamos OK
  food02$WMeatCl <- NULL
  food02$RMeatCl <- NULL
  food02$XTWMeat <- ( food02$WhiteMeat  - mean( food02$WhiteMeat ) )^2
  food02$XTRMeat <- ( food02$RedMeat    - mean( food02$RedMeat   ) )^2
  food02
  print( sum( food02$XTWMeat ) + sum( food02$XTRMeat ) )
  print( grpMeat$totss )

  ### grabar
  save.image( "../ejemplos/bmfood02.RData" )

  ### comparar con bigkmeans
  library(bigmemory)
  library(biganalytics)
  if( file.exists( "../ejemplos/bmfood02.desc" ) ) file.remove( c( "../ejemplos/bmfood02.desc" , "../ejemplos/bmfood02.bin" ) )
  mfood02 <- scale( food02[,1:2] )
  bmfood02 <- bigmemory::as.big.matrix( mfood02 , backingpath = "../ejemplos" , backingfile = "bmfood02.bin" , descriptorfile = "bmfood02.desc" , type = "double" , shared = T )
  set.seed(123456789)
  grpMeat02 <- biganalytics::bigkmeans( bmfood02 , centers=4 , nstart=7 , dist = "euclid" )
  print( grpMeat02$withinss ) # identico usando misma semilla
  ###  ( grpMeat02$totss    ) # bigkmeans no calcula totss
  ###  ( bigmemory::head( bmfood02 ) )

  ### comparamos asignaciones
  print( grpMeat$cluster )
  print( grpMeat02$cluster )
