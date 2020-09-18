if (length(snakemake@log) != 0) {
  log <- file(snakemake@log[1][[1]], open = "wt")
  sink(log, append = TRUE)
  sink(log, append = TRUE, type = "message")
}

message('Hello World')
file.create(snakemake@output[['txt']])