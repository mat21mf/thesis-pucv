# set knitr chunk options
library(knitr)
knitr::opts_chunk$set( echo=FALSE )
# set pander table-layout options
library(pander)
panderOptions('table.alignment.default', function(df)
 ifelse(sapply(df, is.numeric), 'right', 'left'))
panderOptions('table.split.table', Inf)
panderOptions('big.mark', ",")
panderOptions('keep.trailing.zeros', TRUE)
