#' ---
#' title: "Experience and Performance Meta-Analysis"
#' author: "Kyle Harwell"
#' date: "November 19, 2019"
#' output: github_document
#' ---

#+ r setup, include  = FALSE
# Setup -------------------------------------------------------------------

library(tidyverse)
library(irr)

#+ r readData, include  = FALSE
# Read data ---------------------------------------------------------------


# ____Data for IRR calculation for initial screening ----------------------

alex1 <- read_csv(
  "./data/experience-performance-meta-screening-search-1-alex.csv")
sofia1 <- read_csv(
  "./data/experience-performance-meta-screening-search-1-sofia.csv")
alex2 <- read_csv(
  "./data/experience-performance-meta-screening-search-2-alex.csv")
sofia2 <- read_csv(
  "./data/experience-performance-meta-screening-search-2-sofia.csv")
alex3 <- read_csv(
  "./data/experience-performance-meta-screening-search-3-alex.csv")
sofia3 <- read_csv(
  "./data/experience-performance-meta-screening-search-3-sofia.csv")

# Transform data ----------------------------------------------------------



# Visualize data ----------------------------------------------------------


#+ r analyses
# Analyze data ------------------------------------------------------------


# ____IRR for screening first search --------------------------------------

# "objective performance" + experience + years
qcMat1 <- bind_cols(alex1[, c(1,4)], sofia1[, c(1,4)])
kappa2(qcMat1[, c(2, 4)])

# "objectively" + performance + experience + years
qcMat2 <- bind_cols(alex2[, c(1,4)], sofia2[, c(1,4)])
kappa2(qcMat2[, c(2, 4)])

# objective + "of performance" + experience + years
qcMat3 <- bind_cols(alex3[, c(1,4)], sofia3[, c(1,4)])
kappa2(qcMat3[, c(2, 4)])

