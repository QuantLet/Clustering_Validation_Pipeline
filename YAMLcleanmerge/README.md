
[<img src="https://github.com/QuantLet/Styleguide-and-FAQ/blob/master/pictures/banner.png" width="880" alt="Visit QuantNet">](http://quantlet.de/index.php?p=info)

## [<img src="https://github.com/QuantLet/Styleguide-and-Validation-procedure/blob/master/pictures/qloqo.png" alt="Visit QuantNet">](http://quantlet.de/) **YAMLcleanmerge** [<img src="https://github.com/QuantLet/Styleguide-and-Validation-procedure/blob/master/pictures/QN2.png" width="60" alt="Visit QuantNet 2.0">](http://quantlet.de/d3/ia)

```yaml

Name of QuantLet : YAMLcleanmerge

Published in : 'GitHub-API-Driven Clustering with 5-level Text Mining Validation Pipeline: R based
Approach'

Description : 'Cleanes YAML text corpus containing Quantnet metainfo.txt files from empty fields,
merges similar fields and plots the number of documents, containing each field.'

Keywords : plot, graphical representation, data visualization, text mining, statistics

See also : YAMLnumbchars

Author : Anastasia Stepanchenko

Submitted : 04.07.2016 by Lukas Borke

Datafiles : yamlQN.RData

Example : 'number of char symbols of all different fields in a given document, number of char
symbols of all different fields in the data set'

```

![Picture1](YAMLcleanmerge.png)


### R Code:
```r
# Clear variables and close windows
rm(list = ls(all = TRUE))
graphics.off()

# Install and load packages
libraries = c("ggplot2")
lapply(libraries, function(x) if (!(x %in% installed.packages())) {
install.packages(x)
})
lapply(libraries, library, quietly = TRUE, character.only = TRUE)

# load data
options(stringsAsFactors=FALSE)
obj.names  = load("yamlQN.RData", .GlobalEnv)

# Remove empty fields
yaml.removeNulls = function(yaml_dset) {
  yaml_dset_clean = yaml_dset
  for (i in 1:length(yaml_dset)){
    ind_remove  = c()
    for (j in 1:length(yaml_dset[[i]]))
    {
      if(is.null(yaml_dset[[i]][[j]])) {
        ind_remove = c(ind_remove, j)}
    }
    for (m in sort(ind_remove, decreasing = TRUE)){ 
      yaml_dset_clean[[i]][m]  = NULL
    }
  }
  return (yaml_dset_clean)
}

corpus = yaml.removeNulls(yaml_list)

# Merge fields, only those in fields_standard are left: 
yaml.mergeFields = function(yaml_dset, fields_to_merge, fields_standard) {
  yaml_dset_merged = yaml_dset
  for (i in 1:length(yaml_dset)){
    field_names = names(yaml_dset[[i]])
    ind_remove  = c()
    for (j in 1:length(field_names)){
      for (k in 1:length(fields_to_merge)){
        if (field_names[j] %in% fields_to_merge[[k]]){
          if (fields_standard[k] %in% field_names){
            app_to     = which(field_names %in% fields_standard[k])
            yaml_dset_merged[[i]][[app_to]] = paste(yaml_dset_merged[[i]][[app_to]], ", ", yaml_dset_merged[[i]][[j]], sep = "")
            ind_remove = c(ind_remove,j)}
          else{names(yaml_dset_merged[[i]])[j] = fields_standard[k]}}
      }
    }
    for (m in sort(ind_remove, decreasing = TRUE)){ 
      yaml_dset_merged[[i]][m]  = NULL
    }
  }
  return(yaml_dset_merged)
}


fields_to_merge = list(c("Author [New]", "Author[Update]"), c("Datafiles", "Datafile[example]"), 
                         c("Keywords[new]"), c("Name of QuantLet"), c("Subfunctions"))
fields_standard = c("Author", "Datafile", "Keywords", "Name of Quantlet", "Subfunction")
  
corpus = yaml.mergeFields(corpus, fields_to_merge, fields_standard)

# Number of occurrences of all different fields
yaml.FieldNumDocs = function(yaml_dset) {
  field_names = c()
  field_ndocs = c()
  
  for (i in 1:length(yaml_dset)){
    row_names = names(yaml_dset[[i]])
    for (j in 1:length(row_names)){
      if (row_names[j] %in% field_names){
        m = match(row_names[j], field_names)
        field_ndocs[[m]] = field_ndocs[[m]]+1}
      else {
        field_names = c(field_names, row_names[j])
        field_ndocs = c(field_ndocs, 1)}
    }
  }
  Field_nDocs = data.frame(fields = field_names, ndocs  = field_ndocs)
  Field_nDocs = Field_nDocs[order(-Field_nDocs$ndocs),]
  return (Field_nDocs)
}

# Plot
yaml.plotFieldNumDocs = function(yaml_dset) {
  Field_nDocs = yaml.FieldNumDocs(yaml_dset)
  Field_nDocs = transform(Field_nDocs, fields = factor(fields, levels = Field_nDocs$fields))

  plot = ggplot(data=Field_nDocs, aes(x=fields, y=ndocs, fill=fields)) + 
    geom_bar(colour="black", fill="#DD8888", width=.8, stat="identity") + 
    guides(fill=FALSE) + xlab("Fields") + ylab("Number of documents") +
    ggtitle("Number of documents containing a given field") + theme(axis.text.x = element_text(angle = 50, hjust = 1))
  
  return(plot)
}

yaml.plotFieldNumDocs(corpus)

```
