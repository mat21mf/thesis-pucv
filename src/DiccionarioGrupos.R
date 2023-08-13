# ( "grupo00.shp" , '"CODIGO" = \'P34\' OR "CODIGO" = \'P39\' OR "CODIGO" = \'P40\' OR "CODIGO" = \'P46\' OR "CODIGO" = \'P110\' OR "CODIGO" = \'P32\' OR "CODIGO" = \'P33\' OR "CODIGO" = \'P41\' OR "CODIGO" = \'P27\' OR "CODIGO" = \'P38\' OR "CODIGO" = \'P111\' OR "CODIGO" = \'P112\' OR "CODIGO" = \'P118\' OR "CODIGO" = \'SV\'' )
# ( "grupo01.shp" , '"CODIGO" = \'P34\''                                                )
# ( "grupo02.shp" , '"CODIGO" = \'P39\'  OR "CODIGO" = \'P40\''                         )
# ( "grupo03.shp" , '"CODIGO" = \'P46\'  OR "CODIGO" = \'P110\''                        )
# ( "grupo04.shp" , '"CODIGO" = \'P32\'  OR "CODIGO" = \'P33\'  OR "CODIGO" = \'P41\' OR "CODIGO" = \'P27\'' )
# ( "grupo05.shp" , '"CODIGO" = \'P38\'  OR "CODIGO" = \'P111\' OR "CODIGO" = \'P112\'' )
# ( "grupo06.shp" , '"CODIGO" = \'P118\' OR "CODIGO" = \'SV\''                          )

### GRUPO CODIGO PISO
strgrp00 <- data.frame( grupo00 = c( "TODOS: Superficie total equivalente a la suma de todos los códigos de área" ) )
strgrp01 <- data.frame( grupo01 = c( "P34: Bosque espinoso mediterráneo costero de Acacia caven - Maytenus boaria" ) )
strgrp02 <- data.frame( grupo02 = c( "P39: Bosque esclerofilo mediterráneo costero de Cryptocarya alba - Peumus boldus"
                                   , "P40: Bosque esclerofilo mediterráneo costero de Lithrea caustica - Cryptocarya alba" ) )
strgrp03 <- data.frame( grupo03 = c( "P110: Matorral bajo mediterráneo costero de Chuquiraga oppositifolia - Mulinum spinosum"
                                   , "P46: Bosque caducifolio mediterráneo costero de Nothofagus macrocarpa / Ribes punctatum" ) )
strgrp04 <- data.frame( grupo04 = c( "P27: Matorral espinoso mediterráneo interior de Trevoa quinquinervia - Colliguaja odorifera"
                                   , "P32: Bosque espinoso mediterráneo interior de Acacia caven - Prosopis chilensis"
                                   , "P33: Bosque espinoso mediterráneo andino de Acacia caven / Baccharis paniculata"
                                   , "P41: Bosque esclerofilo mediterráneo andino de Quillaja saponaria - Lithrea caustica" ) )
strgrp05 <- data.frame( grupo05 = c( "P111: Matorral bajo mediterráneo andino de Chuquiraga oppositifolia - Nardophyllum lanatum"
                                   , "P112: Matorral bajo mediterráneo andino de Laretia acaulis - Berberis empetrifolia"
                                   , "P38: Bosque esclerofilo mediterráneo andino de Kageneckia angustifolia / Guindilia trinervis" ) )
strgrp06 <- data.frame( grupo06 = c( "P118: Herbazal mediterráneo andino de Nastanthus spathulatus - Menonvillea spathulata"
                                   , "SV: Sin vegetación" ) )

### unir grupos y descripciones
dfmgrp <- data.frame( matrix(ncol=2) )
colnames( dfmgrp ) <- c( "Grupo" , "Descripción" )
dfmgrp[1 ,1] <- "grupo00" ; dfmgrp[1 ,2] <- as.character(strgrp00[1,1])
dfmgrp[2 ,1] <- "grupo01" ; dfmgrp[2 ,2] <- as.character(strgrp01[1,1])
dfmgrp[3 ,1] <- "grupo02" ; dfmgrp[3 ,2] <- as.character(strgrp02[1,1])
dfmgrp[4 ,1] <- ""        ; dfmgrp[4 ,2] <- as.character(strgrp02[2,1])
dfmgrp[5 ,1] <- "grupo03" ; dfmgrp[5 ,2] <- as.character(strgrp03[1,1])
dfmgrp[6 ,1] <- ""        ; dfmgrp[6 ,2] <- as.character(strgrp03[2,1])
dfmgrp[7 ,1] <- "grupo04" ; dfmgrp[7 ,2] <- as.character(strgrp04[1,1])
dfmgrp[8 ,1] <- ""        ; dfmgrp[8 ,2] <- as.character(strgrp04[2,1])
dfmgrp[9 ,1] <- ""        ; dfmgrp[9 ,2] <- as.character(strgrp04[3,1])
dfmgrp[10,1] <- ""        ; dfmgrp[10,2] <- as.character(strgrp04[4,1])
dfmgrp[11,1] <- "grupo05" ; dfmgrp[11,2] <- as.character(strgrp05[1,1])
dfmgrp[12,1] <- ""        ; dfmgrp[12,2] <- as.character(strgrp05[2,1])
dfmgrp[13,1] <- ""        ; dfmgrp[13,2] <- as.character(strgrp05[3,1])
dfmgrp[14,1] <- "grupo06" ; dfmgrp[14,2] <- as.character(strgrp06[1,1])
dfmgrp[15,1] <- ""        ; dfmgrp[15,2] <- as.character(strgrp06[2,1])

### ruta absoluta archivo csv
csvpth <- "/home/matbox/Documents/TrabajosExtra/petra_biotopos/informe_2019/tabs/tabdesc.csv"

### exportar csv
write.table( dfmgrp , file = csvpth , col.names=T , row.names=F , sep="," , quote=F )

### print( ascii::ascii( dfmgrp , include.rownames=F , type="rest" ) )
