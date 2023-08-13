### No sirve porque crear un stack de 3 bandas necesito que tenga 5
import arcpy
arcpy.env.workspace = "D:/Matias_Rebolledo/Raster/CapasFAU23_5"

arcpy.CompositeBands_management( "grupo00MaskSample/Aspect_remuestreado_grupo00_mask.tif  ; grupo00MaskSample/DEM_remuestreado_grupo00_mask.tif     ; grupo00MaskSample/NDMI_remuestreado_grupo00_mask.tif    ; grupo00MaskSample/Slope_remuestreado_grupo00_mask.tif   ; grupo00MaskSample/TWI_remuestreado_grupo00_mask.tif"    , "grupo00MaskSample_Stack.tif"                            )
arcpy.CompositeBands_management( "grupo01MaskSample/Aspect_remuestreado_grupo01_mask.tif  ; grupo01MaskSample/DEM_remuestreado_grupo01_mask.tif     ; grupo01MaskSample/NDMI_remuestreado_grupo01_mask.tif    ; grupo01MaskSample/Slope_remuestreado_grupo01_mask.tif   ; grupo01MaskSample/TWI_remuestreado_grupo01_mask.tif"    , "grupo01MaskSample_Stack.tif"                            )
arcpy.CompositeBands_management( "grupo02MaskSample/Aspect_remuestreado_grupo02_mask.tif  ; grupo02MaskSample/DEM_remuestreado_grupo02_mask.tif     ; grupo02MaskSample/NDMI_remuestreado_grupo02_mask.tif    ; grupo02MaskSample/Slope_remuestreado_grupo02_mask.tif   ; grupo02MaskSample/TWI_remuestreado_grupo02_mask.tif"    , "grupo02MaskSample_Stack.tif"                            )
arcpy.CompositeBands_management( "grupo03MaskSample/Aspect_remuestreado_grupo03_mask.tif  ; grupo03MaskSample/DEM_remuestreado_grupo03_mask.tif     ; grupo03MaskSample/NDMI_remuestreado_grupo03_mask.tif    ; grupo03MaskSample/Slope_remuestreado_grupo03_mask.tif   ; grupo03MaskSample/TWI_remuestreado_grupo03_mask.tif"    , "grupo03MaskSample_Stack.tif"                            )
arcpy.CompositeBands_management( "grupo04MaskSample/Aspect_remuestreado_grupo04_mask.tif  ; grupo04MaskSample/DEM_remuestreado_grupo04_mask.tif     ; grupo04MaskSample/NDMI_remuestreado_grupo04_mask.tif    ; grupo04MaskSample/Slope_remuestreado_grupo04_mask.tif   ; grupo04MaskSample/TWI_remuestreado_grupo04_mask.tif"    , "grupo04MaskSample_Stack.tif"                            )
arcpy.CompositeBands_management( "grupo05MaskSample/Aspect_remuestreado_grupo05_mask.tif  ; grupo05MaskSample/DEM_remuestreado_grupo05_mask.tif     ; grupo05MaskSample/NDMI_remuestreado_grupo05_mask.tif    ; grupo05MaskSample/Slope_remuestreado_grupo05_mask.tif   ; grupo05MaskSample/TWI_remuestreado_grupo05_mask.tif"    , "grupo05MaskSample_Stack.tif"                            )
arcpy.CompositeBands_management( "grupo06MaskSample/Aspect_remuestreado_grupo06_mask.tif  ; grupo06MaskSample/DEM_remuestreado_grupo06_mask.tif     ; grupo06MaskSample/NDMI_remuestreado_grupo06_mask.tif    ; grupo06MaskSample/Slope_remuestreado_grupo06_mask.tif   ; grupo06MaskSample/TWI_remuestreado_grupo06_mask.tif"    , "grupo06MaskSample_Stack.tif"                            )
