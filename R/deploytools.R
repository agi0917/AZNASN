###
###
###
###   Purpose:   Deployment of material
###   started:   2016/02/04 (pvr)
###
### #################################### ###

deploy_website <- function(psFrom = "vignettes/index.Rmd", psToDir = NULL){
  ### # check that psFrom exists
  stopifnot(file.exists(psFrom))
  ### # psToDir must be specified
  stopifnot(!is.null(psToDir))
  ### # if to dir does not exist, then create it
  if (!dir.exists(psToDir))
    dir.create(psToDir, recursive = TRUE)
  ### # translate rmd to md
  knitr::knit(input = psFrom, output = file.path(psToDir, "index.md"))
  invisible(TRUE)
}
