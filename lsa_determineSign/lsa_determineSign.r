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
