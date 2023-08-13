
 ## worker function to drive image as I wish it were
 mimage <- function(x, label  = TRUE, ...) {
   UseMethod("mimage")
 }
 mimage.matrix <- function(x, label = TRUE, cols, ...) {
   mat <- x
   x <- seq(0, nrow(mat))
   y <- seq(0, ncol(mat))
   image(x, y, mat, col = cols)
 }
 mimage.array <- function(x, label = TRUE, ...) {
   dn <- length(dim(x))
   if (dn < 2 | dn > 3) {
     warning("we expect a matrix or 3D array but dim(x):")
     print(dim(x))
   }
   on.exit(par(p), add = TRUE)
   p <- par(mfrow = grDevices::n2mfrow(dim(x)[3]))
   xx <- seq(0, nrow(x))
   yy <- seq(0, ncol(x))
   xy <- expand.grid(x = head(xx, -1) + 0.5,
                     y = head(yy, -1) + 0.5)
   for (i in seq_len(dim(x)[3])) {
     mimage(x[,,i, drop = TRUE], cols = cols[(1:12) + 12 * (i-1)])
   if (label) text(xy$x, xy$y, label = seq_len(nrow(xy)) + nrow(xy) * (i - 1))
 }
 }

 rb <- function(x) {
   readBin(x,"raw", n= file.info(x)$size)
 }
