
library(outliers)

tukey.outlier <- function(x, k = 1.5) {
  Q1 <- quantile(x, 0.25, na.rm = TRUE)
  Q3 <- quantile(x, 0.75, na.rm = TRUE)
  iqr_val <- Q3 - Q1
  
  (x < (Q1 - k * iqr_val)) | (x > (Q3 + k * iqr_val))
}

tukey_multiple <- function(x) {
  outliers <- array(TRUE, dim = dim(x))
  for (j in 1:ncol(x)) {
    outliers[, j] <- outliers[, j] && tukey.outlier(x[, j])
  }
  outlier.vec <- vector("logical", length = nrow(x))
  for (i in 1:nrow(x)) {
    outlier.vec[i] <- all(outliers[i, ])
  }
  return(outlier.vec)
}

set.seed(123)
test_mat <- matrix(rnorm(50), nrow = 10)

tukey_multiple(test_mat)

# Corrected function 
corrected_tukey <- function(x) {
  if (!is.matrix(x)) {
    stop("x must be a matrix.")
  }
  if (!is.numeric(x)) {
    stop("x must be a numeric matrix.")
  }
  
  outliers <- array(TRUE, dim = dim(x))
  
  for (j in seq_len(ncol(x))) {
    outliers[, j] <- outliers[, j] & tukey.outlier(x[, j])
  }
  
  outlier.vec <- logical(nrow(x))
  
  for (i in seq_len(nrow(x))) {
    outlier.vec[i] <- all(outliers[i, ])
  }
  
  return(outlier.vec)
}

corrected_tukey(test_mat)
