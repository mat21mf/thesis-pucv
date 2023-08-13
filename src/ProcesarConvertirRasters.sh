# ### convertir rasters tif -> grd
# parallel       --block -1 --pipepart -a   LlamarConvertirRasters.sh LANG=C bash

  ### convertir rasters tif -> nc
  parallel       --block -1 --pipepart -a   ConvertirRasters.sh       LANG=C bash

# ### resumir rasters grd
# parallel       --block -1 --pipepart -a   LlamarResumirRasters.sh   LANG=C bash

# ### exportar metadata
 #R   --slave   --args   "dfmResumenRasters"   "../xlsx/Metadatos_revision_rangos.xlsx"                "../csv/Metadatos_revision_rangos.csv"                "ResumenRasters"   <   ../../petra_darwin/src/FuncionExportarExcel.R
# R   --slave   --args   "dfmResumenRasters"   "../xlsx/Metadatos_revision_rangos_CapasFAU23_5.xlsx"   "../csv/Metadatos_revision_rangos_CapasFAU23_5.csv"   "ResumenRasters"   <   ../../petra_darwin/src/FuncionExportarExcel.R
