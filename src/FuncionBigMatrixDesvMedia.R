  ### Funcion
  ### - asume que cada matrix tiene 6 variables
  ### - este codigo esta pendiente
  ### - en la documentacion de bigmemory se hace referencia a lo siguiente
  ###   en bigmemory en vez de usar "call-by-value" se usa "call-by-reference".
  ###   Esto tiene relacion con un problema de R en general. El paquete R.oo
  ###   fue creado para poder usar "call-by-reference" en R como una de las
  ###   opciones mas convenientes.

 #CalcularBigMatrixTotss <- function( grupo01stXM.totss , grupo01stXM , grupo01st , strflepth ){
  CalcularBigMatrixTotss <- function( strvecout , strmatout , strmatinp , strflepth ){

  ### librerias
  require( bigmemory )
  require( biganalytics )

  ### crear strings desde argumentos
  strfledsc <- paste0( strmatout , ".desc" )
  strflebin <- paste0( strmatout , ".bin"  )
  strpthdsc <- paste0( strflepth , "/" , strmatout , ".desc" )
  strpthbin <- paste0( strflepth , "/" , strmatout , ".bin"  )
  ### print( strflepth )
  ### print( strfledsc )
  ### print( strflebin )
  ### print( strpthdsc )
  ### print( strpthbin )

  ### retirar archivo si existe
  message( )
  message( "Verificando presencia de archivo:" )
  message( strpthdsc )
  message( )
  if( file.exists( strpthdsc ) ) file.remove( c( strpthdsc , strpthbin ) )

  ### crear matrix desviacion media no requiere cluster
  message( )
  message( "Creando archivo en disco:" )
  message( class( eval(parse(text= strmatinp ))[,1] ) )
  message( class( eval(parse(text= strmatout ))[,1] ) )
  message( )
  strmatout <- bigmemory::big.matrix( bigmemory::nrow( eval(parse(text=strmatinp)) ) , bigmemory::ncol( eval(parse(text=strmatinp)) ) , init=0 , backingpath = strflepth , backingfile = strflebin , descriptorfile = strfledsc , type = "double" , shared = T )

  ### calcular desviacion media OK
  message( )
  message( "Calculando desviacion media para:" )
  message( )
  eval(parse(text=strmatout))[,1] <- eval(parse(text=strmatinp))[,1] - as.numeric( biganalytics::colmean( eval(parse(text=strmatinp)) )[1] )
  eval(parse(text=strmatout))[,2] <- eval(parse(text=strmatinp))[,2] - as.numeric( biganalytics::colmean( eval(parse(text=strmatinp)) )[2] )
  eval(parse(text=strmatout))[,3] <- eval(parse(text=strmatinp))[,3] - as.numeric( biganalytics::colmean( eval(parse(text=strmatinp)) )[3] )
  eval(parse(text=strmatout))[,4] <- eval(parse(text=strmatinp))[,4] - as.numeric( biganalytics::colmean( eval(parse(text=strmatinp)) )[4] )
  eval(parse(text=strmatout))[,5] <- eval(parse(text=strmatinp))[,5] - as.numeric( biganalytics::colmean( eval(parse(text=strmatinp)) )[5] )
  eval(parse(text=strmatout))[,6] <- eval(parse(text=strmatinp))[,6] - as.numeric( biganalytics::colmean( eval(parse(text=strmatinp)) )[6] )

  ### se comprueba la diferencia usando las dos siguientes formulas OK
  ### bigmemory::head( strmatinp ) - bigmemory::head( strmatout )
  ### biganalytics::colmean( strmatinp )

# ### calcular totss
# strvecout <- structure( sum( biganalytics::colsum( strmatout ) ) , names = "totss" )

# ### retirar archivo auxiliar
# message( )
# message( "Retirando archivo:" )
# message( strpthdsc )
# message( )
# if( file.exists( strpthdsc ) ) file.remove( c( strpthdsc , strpthbin ) )

# return( strvecout )

  }

  ### ejecutar
 #CalcularBigMatrixTotss( "grupo00stXM.totss" , "grupo00stXM" , "grupo00st" , "../bigmatrices" )
  CalcularBigMatrixTotss( "grupo01stXM.totss" , "grupo01stXM" , "grupo01st" , "../bigmatrices" )
# CalcularBigMatrixTotss( "grupo02stXM.totss" , "grupo02stXM" , "grupo02st" , "../bigmatrices" )
# CalcularBigMatrixTotss( "grupo03stXM.totss" , "grupo03stXM" , "grupo03st" , "../bigmatrices" )
# CalcularBigMatrixTotss( "grupo04stXM.totss" , "grupo04stXM" , "grupo04st" , "../bigmatrices" )
# CalcularBigMatrixTotss( "grupo05stXM.totss" , "grupo05stXM" , "grupo05st" , "../bigmatrices" )
# CalcularBigMatrixTotss( "grupo06stXM.totss" , "grupo06stXM" , "grupo06st" , "../bigmatrices" )
