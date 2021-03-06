## ----eval = FALSE-------------------------------------------------------------
#  install.packages("condir")

## ----eval = TRUE--------------------------------------------------------------
library(condir)

## ----comment = NA-------------------------------------------------------------
set.seed(1000)
cs1 <- rnorm(50, 5, 5)
cs2 <- rnorm(50, 4.5, 5)

## ----fig.width = 7.5, fig.height = 5, comment = NA----------------------------
tmp <- csCompare(cs1, cs2)
tmp

## ----fig.width = 7.5, fig.height = 4, comment = NA----------------------------
csPlot(cs1, cs2, ylab = "CRs")

## ----comment = NA-------------------------------------------------------------
csReport(tmp)

## ----fig.width = 7.5, fig.height = 4, comment=NA------------------------------
set.seed(1000)
tmp <- csSensitivity(cs1, cs2)
csRobustnessPlot(cs1, cs2, BF01 = TRUE)

## ----comment = NA-------------------------------------------------------------
csReport(csSensitivityObj = tmp)

## ----fig.width = 7.5, fig.height = 4, comment = NA----------------------------
set.seed(1000)
group <- factor(rep(1:2, length(cs1)/2))
tmp <- csCompare(cs1, cs2, group = group)
tmp
csPlot(cs1, cs2, group = group, ylab = "CRs")
csReport(csCompareObj = tmp)
tmp <- csSensitivity(cs1, cs2)
csRobustnessPlot(cs1, cs2, group, BF01 = TRUE)
csReport(csSensitivityObj = tmp)

