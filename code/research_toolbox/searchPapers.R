#!/bin/envs/Rscript

#Desc: This script search and count for keywords in pdfs under the same folder

#### imports ####
require(pdfsearch)
require(tidyverse)
# >> 1. Change your keywords here
keyword <- c('communities','preference','genom','metabol','simulat','compare','matrix')

# >> 2. Specify your folder containing the targeted papers
search_folder <- "/home/dondon/Downloads/gore"

#### process ####
#initialize dataframe to store output of text around selected keywords
search_result <- data.frame()

#obtain list of filenames under the target folder
file_list <- list.files(search_folder)

#retrieve pdf under this folder and search for keywords
for (filename in file_list){

    print(paste("searching in", filename))

    #set filepath for pdfsearch
    filepath <- paste0(search_folder, "/", filename)

    #keyword search using pdfsearch
    res <- keyword_search(filepath,
                           keyword = keyword,
                           path = TRUE,token_results = FALSE)
    #record name of this paper in loop (?redundant?)
    res["paper"] <- rep(filename,dim(res)[1])

    #concatenate results
    search_result <- rbind(search_result,res)
}
print("Keyword searching done! Result stored in 'search_result'.")


#### analysis ####
## count occurrence and sort by popularity among papers
summary <- search_result %>% count(keyword,paper, sort=TRUE)
summary <- summary %>% count(keyword, sort=TRUE)

print("\n Keyword occurrence sorted by popularity:")
summary


## examine detailed surrounding text
# #(optional)filter only interesting keywords
# interest <- c('power-law','cut set','shortest paths','diameter',
#                            'diffusion constant','centrality','cliques','transitivity','reciprocity',
#                            'assortative')
# #(optional)filter keyword search output                           
# search_result <- subset(search_result, search_result$keyword %in% interest)


## clean keyword search dataframe and transform text surrounding keywords to strings
search_result_detail <- search_result
search_result_detail$line_text <-data.frame(lapply(search_result_detail, as.character), stringsAsFactors=FALSE)

print("Snapshot of text surrounding keywords:")
str(search_result_detail)


#### exports ####
print("Saving data...")
save(search_result, file="../../data/rdata/search_result_gore.rdata")
# write.table(summary, file="../../results/summary_gore.tsv",row.names=FALSE,sep="\t")
write.table(search_result_detail, file="../../results/detail_gore.tsv",row.names=FALSE,sep="\t")
print("All done!")