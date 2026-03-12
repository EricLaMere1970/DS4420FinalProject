# TODO: Uncomment these lines on first run to install packages
# install.packages("mclust")      # Gaussian mixture models
# install.packages("caret")       # train/test splitting, evaluation utilities
# install.packages("ggplot2")     # visualization
# install.packages("dplyr")       # data wrangling
# install.packages("reshape2")    # for melting confusion matrix into long format

library(mclust)
library(caret)
library(ggplot2)
library(dplyr)
library(reshape2)


# STEP 1: Load the feature CSV (will need to be created using python for MFCC extraction)
csv_path <- "gmm_features.csv"
df <- read.csv(csv_path)

# Sanity checks
cat("Dimensions:", dim(df), "\n")
cat("Column names:\n")
print(names(df))
cat("\nAccent distribution:\n")
print(table(df$accent))
cat("\nNumber of unique speakers:", length(unique(df$speaker_id)), "\n")


# Separate features from metadata
# feature_cols <- paste0("feat_", 1:78)   # columns named feat_1 through feat_78
# X <- as.matrix(df[, feature_cols])       # 78-dim feature matrix
# labels <- df$accent                       # accent ground truth
# speakers <- df$speaker_id                 # for speaker-aware splitting
# genders <- df$gender                      # for per-gender analysis later