z <- rbind(replicate(30, rnorm(1e5, 2)),
           replicate(30, rnorm(1e5, -1)),
           replicate(30, rnorm(1e5, 5)))

library(ClusterR)
km_model <- MiniBatchKmeans(z, clusters = 3, batch_size = 20, num_init = 5, max_iters = 100,
                         init_fraction = 0.2, initializer = 'kmeans++', early_stop_iter = 10,
                         verbose = F)

pred <- predict_MBatchKMeans(z, km_model$centroids)

source("kappa.R")
source("kw.R")
source("tau.R")

ciw(z)
kappa(z)
summary.kappa(z)


