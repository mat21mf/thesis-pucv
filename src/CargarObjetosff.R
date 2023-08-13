
removeTmpFiles(h=0)
dt <- "byte"

# crear objeto frarr desde tif raster clasificado
strfletif <- "../previos/Clas_geo_clip.tif"
strobjtif <- system.file( strfletif , package = "raster" )
strobjgrd <- brick( raster( strfletif ) )
strflegrd <- "../grd/Clas_geo_clip.grd"
ffraster:::.writeGRD( strobjtif , dataType = dt , filename = strobjgrd )
strobjarr <- ffrarr( dim( strobjgrd ) , mode = dt , filename = strflegrd , readonly = T )
ini_file( strobjgrd )

# crear objeto ffrarr desde tif raster referencia (DEM)
strfledem <- "../previos/dem30_final.tif"
strobjdem <- system.file( strfledem , package = "raster" )
strbrcdem <- brick( raster( strobjdem ) )
strgrddem <- "../grd/dem30_final.grd"
ffraster:::.writeGRD( strobjdem , dataType = dt , filename = strbrcdem )
strarrdem <- ffrarr( dim( strbrcdem ) , mode = dt , file.info = strgrddem , readonly = T )
ini_file( strbrcdem )

# cargar solo como raster para normalizar
library(raster)
dem <- raster( "../previos/Transf_ dem30_final .tif" )
nem <- raster( "../previos/dem30_resample.tif" )
cla <- raster( "../previos/Clas_geo_clip.tif" )
ndem <- resample(dem, cla, method="ngb") # lento
mdem <- velox::aggregate( dem , factor = c( 1.003204, 1.195239) , aggtype = "mean" )
strndem <- system.file( "../previos/dem30_resample.grd" , package = "raster" )
rwndem <- writeRaster(ndem, filename = strndem , datatype='INT4S', overwrite=F)

# crear objeto grd de cluster + clip
clagrd <- "../previos/Clas_geo_clip.grd"
ffraster:::.writeGRD( cla , dataType = "byte" , filename = clagrd , overwrite = T )
