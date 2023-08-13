
  ### definir rutas
  if(        Sys.info()["sysname"]      == "Linux"  ) {
    rasdir <- "/home/matbox/Documents/TrabajosExtra/DriveBiotopos/Matias_Rebolledo/Raster/CapasFAU23_5"
    bakdir <- "/home/matbox/Documents/TrabajosExtra/petra_biotopos/bigmatrices"
    srcdir <- "/home/matbox/Documents/TrabajosExtra/petra_biotopos/src"
    csvdir <- "/home/matbox/Documents/TrabajosExtra/petra_biotopos/bigcsv"
  }
  if( substr(Sys.info()["sysname"],1,6) == "CYGWIN" ) {
    rasdir <- "/cygdrive/d/Matias_Rebolledo/Raster/CapasFAU23_5"
    bakdir <- "/cygdrive/d/Matias_Rebolledo/Raster/bigmatrices"
    srcdir <- "/cygdrive/d/Matias_Rebolledo/Biotopos/src"
    csvdir <- "/cygdrive/d/Matias_Rebolledo/Biotopos/bigcsv"
  }
  if( substr(Sys.info()["sysname"],1,7) == "Windows" ) {
    rasdir <- "D:/Matias_Rebolledo/Raster/CapasFAU23_5"
    bakdir <- "D:/Matias_Rebolledo/Raster/bigmatrices"
    srcdir <- "D:/Matias_Rebolledo/Biotopos/src"
    csvdir <- "D:/Matias_Rebolledo/Biotopos/bigcsv"
  }

# ### definir variables desc
# strdsc00 <- paste0( bakdir , "/" , "grupo00bm.desc" )
# strdsc01 <- paste0( bakdir , "/" , "grupo01bm.desc" )
# strdsc02 <- paste0( bakdir , "/" , "grupo02bm.desc" )
# strdsc03 <- paste0( bakdir , "/" , "grupo03bm.desc" )
# strdsc04 <- paste0( bakdir , "/" , "grupo04bm.desc" )
# strdsc05 <- paste0( bakdir , "/" , "grupo05bm.desc" )
# strdsc06 <- paste0( bakdir , "/" , "grupo06bm.desc" )

# ### definir variables bin
# strbin00 <- paste0( bakdir , "/" , "grupo00bm.bin" )
# strbin01 <- paste0( bakdir , "/" , "grupo01bm.bin" )
# strbin02 <- paste0( bakdir , "/" , "grupo02bm.bin" )
# strbin03 <- paste0( bakdir , "/" , "grupo03bm.bin" )
# strbin04 <- paste0( bakdir , "/" , "grupo04bm.bin" )
# strbin05 <- paste0( bakdir , "/" , "grupo05bm.bin" )
# strbin06 <- paste0( bakdir , "/" , "grupo06bm.bin" )

