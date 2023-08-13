  ### aplicar estadigrafos a dataframe
  ### pendiente
  tab.R2 <- function( strdfm , strest ){
    strdfm[[strest]]  <- ( strdfm[,totss] - strdfm[,tot.withinss] ) / strdfm[,totss] * 100
  }

  tab.elbow <- function( strdfm ){
    strdfm$elbow <-   strdfm$tot.withinss / strdfm$totss * 100
  }
