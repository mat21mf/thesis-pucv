import arcpy
arcpy.env.workspace = "D:/BIOTOPOS/Rasters/Resultados_Kmeans"

arcpy.MakeRasterLayer_management( "grupo00/grupo00MaskSample_Coord_kmn0010_var08_cluster_gdal.tif" , "grupo00MaskSample_Coord_kmn0010_var08_cluster_gdal" )
arcpy.MakeRasterLayer_management( "grupo01/grupo01MaskSample_Coord_kmn0010_var08_cluster_gdal.tif" , "grupo01MaskSample_Coord_kmn0010_var08_cluster_gdal" )
arcpy.MakeRasterLayer_management( "grupo02/grupo02MaskSample_Coord_kmn0010_var08_cluster_gdal.tif" , "grupo02MaskSample_Coord_kmn0010_var08_cluster_gdal" )
arcpy.MakeRasterLayer_management( "grupo03/grupo03MaskSample_Coord_kmn0010_var08_cluster_gdal.tif" , "grupo03MaskSample_Coord_kmn0010_var08_cluster_gdal" )
arcpy.MakeRasterLayer_management( "grupo04/grupo04MaskSample_Coord_kmn0010_var08_cluster_gdal.tif" , "grupo04MaskSample_Coord_kmn0010_var08_cluster_gdal" )
arcpy.MakeRasterLayer_management( "grupo05/grupo05MaskSample_Coord_kmn0010_var08_cluster_gdal.tif" , "grupo05MaskSample_Coord_kmn0010_var08_cluster_gdal" )
arcpy.MakeRasterLayer_management( "grupo06/grupo06MaskSample_Coord_kmn0010_var08_cluster_gdal.tif" , "grupo06MaskSample_Coord_kmn0010_var08_cluster_gdal" )

arcpy.ApplySymbologyFromLayer_management( "grupo00MaskSample_Coord_kmn0010_var08_cluster_gdal" , "Cyan to Purple" )
arcpy.ApplySymbologyFromLayer_management( "grupo01MaskSample_Coord_kmn0010_var08_cluster_gdal" , "Cyan to Purple" )
arcpy.ApplySymbologyFromLayer_management( "grupo02MaskSample_Coord_kmn0010_var08_cluster_gdal" , "Cyan to Purple" )
arcpy.ApplySymbologyFromLayer_management( "grupo03MaskSample_Coord_kmn0010_var08_cluster_gdal" , "Cyan to Purple" )
arcpy.ApplySymbologyFromLayer_management( "grupo04MaskSample_Coord_kmn0010_var08_cluster_gdal" , "Cyan to Purple" )
arcpy.ApplySymbologyFromLayer_management( "grupo05MaskSample_Coord_kmn0010_var08_cluster_gdal" , "Cyan to Purple" )
arcpy.ApplySymbologyFromLayer_management( "grupo06MaskSample_Coord_kmn0010_var08_cluster_gdal" , "Cyan to Purple" )
