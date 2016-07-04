# Clear all variables
rm(list = ls(all = TRUE))
graphics.off()

# Install and load packages
libraries = c("gplots")
lapply(libraries, function(x) if (!(x %in% installed.packages())) {
  install.packages(x)
})
lapply(libraries, library, quietly = TRUE, character.only = TRUE)

# Load data
(obj.names  = load("YAML_lsa.RData", .GlobalEnv))

lsa.heatmap = function (space_matr){
  
    space = space_matr[[1]]  
    m_a   = space_matr[[2]]
    U     = space$tk
    V     = space$dk  
    sv    = space$sk
    d_s   = diag(sv, length(sv), length(sv))
  
    dev.new()
    heatmap.2(main = "Original matrix", m_a, trace="none", revC = FALSE, dendrogram = "none", labRow = TRUE, labCol = TRUE, Rowv = FALSE, Colv = FALSE, breaks =100)
    dev.new()
    heatmap.2(main = "U matrix", U, trace="none", revC = FALSE, dendrogram = "none", labRow = TRUE, labCol = TRUE, Rowv = FALSE, Colv = FALSE, breaks =100)
    dev.new()
    heatmap.2(main = "Diagonal matrix", d_s, trace="none", revC = FALSE, dendrogram = "none", labRow = FALSE, labCol = FALSE, Rowv = FALSE, Colv = FALSE, breaks =100)
    dev.new()
    heatmap.2(main = "Transposed V matrix", t(V), trace="none", revC = FALSE, dendrogram = "none", labRow = TRUE, labCol = TRUE, Rowv = FALSE, Colv = FALSE, breaks =100)
 }
 
 # Plot
 lsa.heatmap(space_matr_auto)
 dev.new()
 plot(main = "Weights of SV", space_matr_auto[[1]]$sk)

