  sil g/..\/..\/DriveBiotopos\/Matias_Rebolledo\/Raster\/CapasFAU\//s//grupo00Mask\//
  sil g/..\/..\/DriveBiotopos\/Matias_Rebolledo\/Raster\/CapasFAU\//s///
  sil g/grupo00/s/\(grupo00\)\(Mask\)/grupo00\2/
  sil g/grupo01/s/\(grupo00\)\(Mask\)/grupo01\2/
  sil g/grupo02/s/\(grupo00\)\(Mask\)/grupo02\2/
  sil g/grupo03/s/\(grupo00\)\(Mask\)/grupo03\2/
  sil g/grupo04/s/\(grupo00\)\(Mask\)/grupo04\2/
  sil g/grupo05/s/\(grupo00\)\(Mask\)/grupo05\2/
  sil g/grupo06/s/\(grupo00\)\(Mask\)/grupo06\2/
  sil g/\(grupo[0-9]\{2}\)\(Mask\/[A-z]\+\)\(\.tif\)/s//\1\2__\1_mask\3/
  sil g/\(grupo[0-9]\{2}\)\//s//\1MaskSample\//
  sil g/.*\zs\.tif/s//_mask\.tif/
  sil g/TRI/s/  \(gdalwarp\)/ #\1/
 "sil g/\(grupo[0-9]\{2}\)\//s//\1Mask\//
 "sil g/_remuestreado/s///
 "sil g/\(_grupo[0-9]\{2}\)\(\.tif\)/s//_\1_mask\2/
