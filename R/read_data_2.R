#' Download and read the data we will need
#' 
#' I CHANGED THIS
#' 
#' @description
#' Download and read the data we will need for this project 
#' 
#' @param overwrite logical: either overwrite or not if the file already exists
#' 
read_data <- function(overwrite = FALSE) {
  
  ## Destination ---- 
  path <- here::here("data", "wildfinder")
  
  ## File name ----
  filename <- "wildfinder-ecoregions_list.csv"
  
  ## GitHub URL ----
  url <- paste0("https://raw.githubusercontent.com/rdatatoolbox/datarepo/main/",
                "data/wildfinder/")
  
  if (file.exists(file.path(path, filename)) && !overwrite) {
    
    ## Check if exists locally ----
    message("The filename already exists. Use 'overwrite = TRUE' to replace it")
    
  } else {
    
    ## Create destination folder ----
    dir.create(path, showWarnings = FALSE, recursive = TRUE)
    
    ## Download file ----
    utils::download.file(url      = paste0(url, filename),
                         destfile = file.path(path, filename),
                         mode     = "wb")
  }
  
  invisible(NULL) 
}