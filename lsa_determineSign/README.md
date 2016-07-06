
[<img src="https://github.com/QuantLet/Styleguide-and-FAQ/blob/master/pictures/banner.png" width="880" alt="Visit QuantNet">](http://quantlet.de/index.php?p=info)

## [<img src="https://github.com/QuantLet/Styleguide-and-Validation-procedure/blob/master/pictures/qloqo.png" alt="Visit QuantNet">](http://quantlet.de/) **lsa_determineSign** [<img src="https://github.com/QuantLet/Styleguide-and-Validation-procedure/blob/master/pictures/QN2.png" width="60" alt="Visit QuantNet 2.0">](http://quantlet.de/d3/ia)

```yaml

Name of QuantLet : lsa_determineSign

Published in : 'GitHub-API-Driven Clustering with 5-level Text Mining Validation Pipeline: R based
Approach'

Description : 'Determines the proper sign of LSA components and extracts the top words of each
component for YAML text corpus. The (positive and accordingly negative) part is chosen from those
terms, where the biggest subtotal is concentrated. At the end top 3 words are taken, the sign is
always changed to +, their values are multiplied by the singular value for the proper scaling and
then rounded. Returns a list.'

Keywords : text mining, svd, singular value, cluster-analysis, clustering

See also : lsa_heatmapsvd, lsa_heatmaperr

Author : Lukas Borke, Anastasia Stepanchenko

Submitted : 04.07.2016 by Lukas Borke

Datafiles : YAML_lsa.RData

```


### R Code:
```r
# Clear all variables
rm(list = ls(all = TRUE))
graphics.off()

# Install and load packages
libraries = c("lsa", "gplots")
lapply(libraries, function(x) if (!(x %in% installed.packages())) {
  install.packages(x)
})
lapply(libraries, library, quietly = TRUE, character.only = TRUE)

# Load data
(obj.names  = load("YAML_lsa.RData", .GlobalEnv))

lsa.determineSign = function(U, sv, n = 10){

    pc_labels_norm = c()
    for (i in 1:n) {
        PC = U[,i]
		
        if (sum(PC[PC > 0]) + sum(PC[PC < 0]) >= 0) {
            res = sort(PC[PC > 0], decreasing=TRUE)[1:3] * sv[i]
            res = round(res, 2)
            pc_labels_norm = c(pc_labels_norm, list(res))
        } else {
            res = sort(-PC[PC < 0], decreasing=TRUE)[1:3] * sv[i]
            res = round(res, 2)
            pc_labels_norm = c(pc_labels_norm, list(res))
        }
    }
    return(pc_labels_norm)
}

(pc_labels_norm = lsa.determineSign(space_matr_auto[[1]]$tk, space_matr_auto[[1]]$sk))

```
