### variables entorno
if( system( "whoami" , intern = TRUE ) == "matbian" )
{
home=Sys.getenv("HOME")
srcdir=paste0(home,"/PUCV/tesis_2019/informe_2019")
#print(srcdir)
}
if( system( "whoami" , intern = TRUE ) == "matbox" )
{
home=Sys.getenv("HOME")
srcdir=paste0(home,"/Documents/TrabajosExtra/petra_biotopos/informe_2019")
#print(srcdir)
}
