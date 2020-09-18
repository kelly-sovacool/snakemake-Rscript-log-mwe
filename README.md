# Using Snakemake log files with R scripts

A minimal working example.

See [`script.R`](script.R) for the R code.
It checks whether the snakemake rule includes a log directive by checking
the length of the `log` slot of the snakemake S4 object.
If the log file path is given, it writes all messages, warnings, etc to the log file.
Otherwise, this output is printed to the console like usual.

The [`Snakefile`](Snakefile) includes an example rule with a log and without a log file.
Both run without errors.
