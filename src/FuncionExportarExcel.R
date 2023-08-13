# #!/usr/bin/env R
# args = commandArgs(trailingOnly=TRUE)
# if (length(args)==0) {
#   stop("Al menos un argumento debe ser suministrado.\n", call.=FALSE)
# }

#### Crear Excel con formato simple {{{
# ExportarDataframeReporteSimple <- function( strdfm , strxls , strsht ) {
#   strdfm <- read.csv( strcsv , header = T , sep = '@' )
#   suppressPackageStartupMessages(require( openxlsx ))
#   numberStyle <- createStyle( numFmt = "#,#0" )
#   texttoStyle <- createStyle( numFmt = "TEXT"    )
#   headerStyle <- createStyle(
#   fontSize = 12 ,
#   fontColour = "#FFFFFF" ,
#   halign = "center" ,
#   fgFill = "#4F81BD" ,
#   border = "TopBottom" ,
#   borderColour = "#4F81BD" ,
#   wrapText = FALSE )
#   dfmsht = strdfm
#   rpnup = strxls
#   if( nchar( strsht ) > 31 ){
#     spnup  = substr( quote( strsht ) , 1 , 28 )
#   }else{
#     spnup  = quote( strsht )
#   }
#   if( file.exists( rpnup ) ) file.remove( rpnup )
#   wbnup <- createWorkbook( rpnup )
#   addWorksheet( wbnup , spnup           )
#   writeData(    wbnup , spnup            , dfmsht      , startCol = 1 )
#   addStyle(     wbnup ,  1 , headerStyle , rows = 1 , cols = 1:ncol( dfmsht )          , gridExpand = TRUE )
#  #addStyle(     wbnup ,  1 , numberStyle , rows = 2:nrow( dfmsht ) , cols = c(3,4,5)   , gridExpand = TRUE )
#  #addStyle(     wbnup ,  1 , texttoStyle , rows = 2:nrow( dfmsht ) , cols = c(1,2,6,7) , gridExpand = TRUE )
#   addFilter(    wbnup ,  spnup , rows = 1    , cols = 1:(ncol( strdfm )+1) )
#   freezePane(   wbnup ,  1 , firstActiveRow = 2 )
#   setColWidths( wbnup ,  1 , cols = c(1,2,3,4,5,6,7,8,9,10,11) , widths = c(60,10,10,10,10,10,10,10,10,10,10) )
#   saveWorkbook( wbnup , file = rpnup , overwrite = TRUE )
# }
# if(!interactive()){
#   strdfm     <-
#   ExportarDataframeReporteSimple(
#   strdfm     = args[1]
#  ,strxls     = args[2]
#  ,strcsv     = args[3]
#  ,strsht     = args[4]
#   )
# }
#### }}}

#### Crear Excel con formato extendido {{{
  ExportarDataframeEstadigrafosKmeans <- function( strdfm , strxls , strcsv , strsht , strdic , strpng01 , strpng02 , strpng03 , strpng04 , strpng05 , strpng06 , strpng07 ) {
    strdfm <- read.csv( strcsv , header = T , sep = '@' )
    suppressPackageStartupMessages(require( openxlsx ))
    redStyle    <- createStyle(fontColour = "#9C0006", bgFill = "#FFC7CE")
    numberStyle <- createStyle( numFmt = "#,#0" )
    texttoStyle <- createStyle( numFmt = "TEXT"    )
    headerStyle <- createStyle(
    fontSize = 11 ,
    fontColour = "#FFFFFF" ,
    halign = "center" ,
    fgFill = "#4F81BD" ,
    border = "TopBottom" ,
    borderColour = "#4F81BD" ,
    wrapText = FALSE )
    dfmsht = strdfm
    rpnup = strxls
    strsht = sub( "_xlsx2csv" , "" , strsht )
    if( nchar( strsht ) > 31 ){
      spnup  = substr( as.character( strsht ) , 1 , 31 )
    }else{
      spnup  = as.character( strsht )
    }
    ### print( spnup )
    if( file.exists( rpnup ) ){
      wbnup <- loadWorkbook( rpnup )
    }else{
      wbnup <- createWorkbook( rpnup )
    }
    if( any(wbnup$sheet_names == spnup) ) removeWorksheet( wbnup , spnup )
    addWorksheet( wbnup ,  spnup )
    writeData(    wbnup ,  spnup               , dfmsht   , startCol = 1 , rowNames = TRUE )
    writeData(    wbnup ,  spnup               , strdic   , startCol = 19 , rowNames = FALSE )
    addFilter(    wbnup ,  spnup ,               rows = 1 , cols = 1:(ncol( strdfm )+1) )
    addStyle(     wbnup ,  spnup , headerStyle , rows = 1 , cols = 1:(ncol( dfmsht )+1)      , gridExpand = TRUE )
   #addStyle(     wbnup ,  spnup , numberStyle , rows = 2:nrow( dfmsht ) , cols = c(3,4,5)   , gridExpand = TRUE )
   #addStyle(     wbnup ,  spnup , texttoStyle , rows = 2:nrow( dfmsht ) , cols = c(1,2,6,7) , gridExpand = TRUE )
    freezePane(   wbnup ,  spnup , firstActiveRow = 2 , firstActiveCol = 3 )
    setColWidths( wbnup ,  spnup , cols = c(1,2,3,4,5,6,7,8,9,10) , widths = c(2,10,10,10,8,8,8,8,10,10) )
    insertImage( wbnup , spnup , file = strpng01 , width = 6 , height = 5 , startCol = 15 , startRow = 7 )
    insertImage( wbnup , spnup , file = strpng02 , width = 6 , height = 5 , startCol = 15 , startRow = 33 )
    insertImage( wbnup , spnup , file = strpng03 , width = 6 , height = 5 , startCol = 15 , startRow = 59 )
    insertImage( wbnup , spnup , file = strpng04 , width = 6 , height = 5 , startCol =  2 , startRow = 33 )
    insertImage( wbnup , spnup , file = strpng05 , width = 6 , height = 5 , startCol =  8 , startRow = 33 )
    insertImage( wbnup , spnup , file = strpng06 , width = 6 , height = 5 , startCol =  2 , startRow = 59 )
    insertImage( wbnup , spnup , file = strpng07 , width = 6 , height = 5 , startCol =  8 , startRow = 59 )
    conditionalFormatting(wbnup , spnup , cols=11 , rows=2:31 , rule="O2==TRUE"  , style = redStyle)
    conditionalFormatting(wbnup , spnup , cols=12 , rows=2:31 , rule="P2==TRUE"  , style = redStyle)
    conditionalFormatting(wbnup , spnup , cols=13 , rows=2:31 , rule="Q2==TRUE"  , style = redStyle)
    conditionalFormatting(wbnup , spnup , cols=14 , rows=2:31 , rule="R2==TRUE"  , style = redStyle)
    saveWorkbook( wbnup ,  file = rpnup , overwrite = TRUE )
    return( strdfm )
  }

#### Crear Excel con imagen variacion  {{{
  ExportarDataframeVariacionPromedio <- function( strdfm , strxls , strcsv , strsht , strpng01 ) {
    strdfm <- read.csv( strcsv , header = T , sep = '@' )
    suppressPackageStartupMessages(require( openxlsx ))
    numberStyle <- createStyle( numFmt = "#,#0" )
    texttoStyle <- createStyle( numFmt = "TEXT"    )
    headerStyle <- createStyle(
    fontSize = 11 ,
    fontColour = "#FFFFFF" ,
    halign = "center" ,
    fgFill = "#4F81BD" ,
    border = "TopBottom" ,
    borderColour = "#4F81BD" ,
    wrapText = FALSE )
    dfmsht = strdfm
    rpnup = strxls
    strsht = sub( "_xlsx2csv" , "" , strsht )
    if( nchar( strsht ) > 31 ){
      spnup  = substr( as.character( strsht ) , 1 , 31 )
    }else{
      spnup  = as.character( strsht )
    }
    ### print( spnup )
    if( file.exists( rpnup ) ){
      wbnup <- loadWorkbook( rpnup )
    }else{
      wbnup <- createWorkbook( rpnup )
    }
    if( any(wbnup$sheet_names == spnup) ) removeWorksheet( wbnup , spnup )
    addWorksheet( wbnup ,  spnup )
    writeData(    wbnup ,  spnup               , dfmsht   , startCol = 1 , rowNames = TRUE )
    addFilter(    wbnup ,  spnup ,               rows = 1 , cols = 1:(ncol( strdfm )+1) )
    addStyle(     wbnup ,  spnup , headerStyle , rows = 1 , cols = 1:(ncol( dfmsht )+1)      , gridExpand = TRUE )
   #addStyle(     wbnup ,  spnup , numberStyle , rows = 2:nrow( dfmsht ) , cols = c(3,4,5)   , gridExpand = TRUE )
   #addStyle(     wbnup ,  spnup , texttoStyle , rows = 2:nrow( dfmsht ) , cols = c(1,2,6,7) , gridExpand = TRUE )
    freezePane(   wbnup ,  spnup , firstActiveRow = 2 , firstActiveCol = 3 )
    setColWidths( wbnup ,  spnup , cols = c(1,2,3,4,5,6,7,8,9,10) , widths = c(2,10,10,10,8,8,8,8,10,10) )
    if( strpng01 != "" ){
    insertImage( wbnup , spnup , file = strpng01 , width = 6 , height = 5 , startCol = 12 , startRow = 7 )
    }
    saveWorkbook( wbnup ,  file = rpnup , overwrite = TRUE )
    return( strdfm )
  }

# if(!interactive()){
#   strdfm     <-
#   ExportarDataframeEstadigrafosKmeans(
#   strdfm     = args[1]
#  ,strxls     = args[2]
#  ,strcsv     = args[3]
#  ,strsht     = args[4]
#   )
# }
#### }}}
