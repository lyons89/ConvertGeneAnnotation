# Update
Had an issue with the biomaRt library not creating a database with the useEnsembl function. Turns out there was an issue with the host argument. After looking around oneline I discovered I had to use an archieved host website. I updated the script to reflect the change.

# ConvertAnnotation
Converts gene names or symbols from one species to another

I put together these few functions because as a person who works mostley with mouse data, I sometimes need to convert to human gene symbol or accession ID's in order to get pathway analysis functions to work that don't natively incorporate mouse pathway terms. I'll include a reference link, but none of this is super novel. I just wanted to make it more straightforward to use. I find myself rummaging through the biomaRt literature everytime i need to convert a mouse gene symbol to a human gene symbol because I can never remember the names of the functions. So here I made a very straightforward method, using condensed functions, to convert from one gene/protein annotation type to another; either in the same species or another.


The basis of this function was referenced by the following r-bloggers post
https://www.r-bloggers.com/2016/10/converting-mouse-to-human-gene-names-with-biomart-package/
