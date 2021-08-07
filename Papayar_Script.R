library(fslr)

setwd("~/Dropbox/MOOC/data/kirby21/visit_1/113/")

img = readnii("113-01-MPRAGE.nii.gz")

# ortho2(img)

# fslview(img)

quants = quantile(img[img > 0], probs = 0.1)

hist(c(img[img > 1e4]), breaks = 200)

library(papayar)

# install.packages("papayar")

# devtools::install_github("muschellij2/papayar")

mask = img > 5e5

# ortho2(img, img > 5e5)

papaya(list(img, mask))

devtools::install_github("muschellij2/itksnapr")

# library(itksnapr)

# itksnap(grayscale = img)
