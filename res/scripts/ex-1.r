#' Evaluate power and type 1 error rate for the t-test when
#' variances are unequal total sample size is always 20
devtools::load_all(quiet = TRUE)

# Define options
opt <- list(
  rep = 1:1000,
  sd1 = 1,
  sd2 = 1:3,
  n1 = seq(2, 18, 2),
  delta = c(0, 1))

# Set up results frame
res <- expand.grid(opt)
res$n2 <- 20 - res$n1
res$p <- NA_real_
res$width <- NA_real_

# Loop
pb <- txtProgressBar(0, nrow(res), style=3)
for (i in 1:nrow(res)) {
  # Generate
  dat <- do.call(generate, res[i,])

  # Analyze
  out <- t.test(dat$x, dat$y, var.equal = TRUE)

  # Summarize
  res$p[i] <- out$p.value
  res$width[i] <-   out$conf.int[2] - out$conf.int[1]

  setTxtProgressBar(pb, i)
}
close(pb)

# Save
write.csv(res, 'cache/ex-1.csv', row.names = FALSE)
