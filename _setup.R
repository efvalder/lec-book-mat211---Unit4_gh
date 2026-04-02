# _setup.R
options(repos = c(CRAN = "https://cloud.r-project.org"))

ensure_pkg <- function(pkg) {
  if (!requireNamespace(pkg, quietly = TRUE)) install.packages(pkg)
  suppressPackageStartupMessages(library(pkg, character.only = TRUE))
}

pkgs <- c("demodelr",
          "TidyDensity","kableExtra", "gridExtra", "gtools",
          "tidyverse",  "leaflet",    "data.tree", "DiagrammeRsvg",
          "rsvg",       "venn",       "combinat",  "VennDiagram",
          "rim",        "Ryacas",     "probs",     "diagram",
          "DiagrammeR", "tolerance", "ggstatsplot")
invisible(lapply(pkgs, ensure_pkg))