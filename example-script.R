# Example R script to compute the WID-OC-index
# Contact: James E. Barrett (james.barrett@uibk.ac.at)
# Date: 1 April 2021

# load supplmentary file 1 containing the CpGs and weights
dat <- read.csv(file='supplementary_file_1.csv')

# create a vector of weights to pass to OC_index function
w <- dat$regression_coef
names(w) <- dat$Name

# generate example beta matrix
set.seed(3141)
beta <- matrix(runif(nrow(dat)*3), nrow=nrow(dat), ncol=3)
rownames(beta) <- dat$Name
colnames(beta) <- c('Sample1','Sample2','Sample3')

# compute the WID-OC-index
index <- OC_index(beta, w)
