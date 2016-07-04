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

lsa.heatmapErr = function (space_matr){
    space = space_matr[[1]]
    m_a   = space_matr[[2]]
    m_lsa = as.textmatrix(space)
    m_lsa = as.matrix(m_lsa)
    fehler_matrix = m_a - m_lsa

    heatmap.2(main = "Original matrix", m_a, trace="none", revC = FALSE, dendrogram = "none", labRow = FALSE, labCol = FALSE, Rowv = FALSE, Colv = FALSE, breaks =100,col = bluered)
    dev.new()
    heatmap.2(main = "Truncated matrix", m_lsa, trace="none", revC = FALSE, dendrogram = "none", labRow = FALSE, labCol = FALSE, Rowv = FALSE, Colv = FALSE, breaks =100,col = bluered)
    dev.new()
    heatmap.2(main = "Error matrix", fehler_matrix, trace="none", revC = FALSE, dendrogram = "none", labRow = FALSE, labCol = FALSE, Rowv = FALSE, Colv = FALSE, breaks =100,col = bluered)
}

 # Plot
 lsa.heatmapErr(space_matr_auto)
