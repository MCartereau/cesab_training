# Download project raw data
#
# This script will download the PanTHERIA and WWF WildFinder datasets. The
# four files will be stored in `data/`.
# 
# All functions used in the script have been developed for this project
# and can be found in the folder R/.
#
# Manuel Cartereau <manuel.cartereau@gmail.com>
# 2023/11/09

## Download PanTHERIA database ----

dl_pantheria_data(overwrite = FALSE)

## Download WWF WildFinder database ----

dl_ecoregions_list_data(overwrite = FALSE)
dl_ecoregions_species_data(overwrite = FALSE)
dl_mammals_list_data(overwrite = FALSE)
