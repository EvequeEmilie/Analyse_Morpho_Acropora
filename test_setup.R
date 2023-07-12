################################################################################
#                     ANALYZE MORPHOANATO ACROPORA CORAL                       #
#                                                                              #
#                                                                              #
#______________________________________________________________________________#
#                                                                              #
#                             Project setup script                             # 
#                                                                              #
################################################################################


############################# CLEANUP & CO #####################################
rm(list = ls())                                                                #
################################################################################



################################ PATHS #########################################
#                                                                              # 
################################################################################

# Define where is the project folder

dir_media <- getwd()

# for data, scripts and results

dir_data   <- paste0("data/")
dir_res    <- paste0("res/")
dir_script <- paste0("script/")
dir_reminder <- paste0("R/")

dir.create(dir_data)
dir.create(dir_res)
dir.create(dir_script)
dir.create(dir_reminder)

##################### DEFINE WORKING DIRECTORIES ###############################
#	                                                                             #
################################################################################

# for each result folder

dir_list <- list( dir_res_01 = paste0(dir_res, "01_indiv_HG_Tahitipasse/"),
                  dir_res_02 = paste0(dir_res, "02_branche_HG_Tahihtipasse/"),
                  dir_res_03 = paste0(dir_res, "03_indiv_HD_Tahitipasse/"),
                  dir_res_04 = paste0(dir_res, "04_branche_HD_Tahitipasse/"),
                  dir_res_05 = paste0(dir_res, "05_Rugo_HG+HD+BG/"),
                  dir_res_06 = paste0(dir_res, "06_Rugo_branche_HG+HD/"),
                  dir_res_07 = paste0(dir_res, "07_indiv_BG_Tahitipasse/"),
                  dir_res_08 = paste0(dir_res, "08_branche_BG_Tahitipasse/"),
                  dir_res_09 = paste0(dir_res, "09_Attenuation/"),
                  dir_res_10 = paste0(dir_res, "10_prepa_big_data/"),
                  dir_rem = paste0(dir_reminder, "reminder_R/"))


lapply(dir_list, dir.create, showWarnings = FALSE)
lapply(names(dir_list), function(x) {
  assign(x, dir_list[[x]], envir = .GlobalEnv)
})


######################### LIBRAIRIES ###########################################
#                                                                              #
################################################################################

libs <- c("base", "car", "cardata", "datasets", "dbplyr", "dplyr", "dtplyr", "FSA", "tibble", 
          "dunn.test", "ggplot2", "ggpubr", "graphics", "grDevices", "knitr", 
          "markdown", "plyr","PMCMRplus", "png", "rlang", "rmarkdown", "rstatix", "stats",
          "tidyverse", "xmL2", "writexl", "plotrix", "vegan")

install.packages(libs)

library(libs)


############################# GLOBAL VARIABLES #################################
#                                                                              #
################################################################################

# Define category colors
colors_category <- c("#7435C7","#E21712","#ED6615","#DAD40D","#43BB1B",
                     "#1C841D", "#06B0BC","#2948D1", "#14122B")










#################################### SAVE AS ###################################
#                                                                              #
################################################################################
# define the direcctory to save the results

dir_save <- dir_script

#______________________________________________________________________________#
#                                                                              #
################################################################################
#                             END OF SCRIPT                                    #
################################################################################



