

# converting annotation values between species

library(tidyverse)
library(janitor)
library(biomaRt)


# mouse is mmusculus
# rat is rnorvegicus
# human is hsapiens


df = read.csv('example gene conversion dataset.csv')

# the first dataset is the one you have and the second is the one you want to convert too

org.db = c("mmusculus_gene_ensembl", "hsapiens_gene_ensembl")


annotation_datasets = function(dataset_lsts){
  
  species1 = useEnsembl("ensembl",  host = "https://uswest.ensembl.org", dataset = org.db[1])
  species2 = useEnsembl("ensembl", host = "https://uswest.ensembl.org", dataset = org.db[2])
  
  lst = list(species1, species2)
}

annotation = annotation_datasets(org.db)


lst_attriubtes = lapply(annotation, function(x) listAttributes(x))

lapply(lst_attriubtes, head)


annotation_convert = function(atribute_lst ,annotation_datasets){
  
  converged = getLDS(attributes = attributes_lst[[1]], filters = attributes_lst[[1]], values = df1$gene_symbol, mart = annotation[[1]], 
                     attributesL = attributes_lst[[2]], martL = annotation[[2]], uniqueRows = T)
}

attributes_lst = lst('from' = c('mgi_symbol'),  'to' = c('hgnc_symbol', 'hgnc_id'))

convert_annotation = annotation_convert(attributes_lst, annotation)






