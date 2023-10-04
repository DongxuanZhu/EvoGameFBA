#!/bin/envs/Rscript

#Desc: This script search and count for keywords in zotero pdfs

#### imports ####
require(pdfsearch)
require(tidyverse)
# keyword <- read.csv("../data/keyword-network_properties.csv")

zotero_folder <- "/home/dondon//Downloads/ref-cooperation/files"

#### process ####
#initialize dataframe to store output of text around selected keywords
res_total <- data.frame()
#obtain list of subfolder names under Zotero's exported folder
sub_folder <- list.dirs(zotero_folder)
#exclude the listed parent dir
sub_folder <- sub_folder[-1]

#loop through zotero's output subfolders, retrieve pdf under this folder and search for keywords
for (folder in sub_folder){

    #get name of pdf under this subfolder
    file <- list.files(folder)[1]
    print(paste("searching in", file))

    #set filepath for pdfsearch
    filepath <- paste0(folder, "/", file)

    #keyword search using pdfsearch
    res <- keyword_search(filepath,
                           keyword = c('fitness'),
                           path = TRUE,token_results = FALSE)
    #record name of this paper                       
    res["paper"] <- rep(file,dim(res)[1])

    #concatenate results
    res_total <- rbind(res_total,res)
}
print("Keyword searching done!")
#### analysis ####
## count occurrence and sort by popularity among papers
summary <- res_total %>% count(keyword,paper, sort=TRUE)
summary <- summary %>% count(keyword, sort=TRUE)
str(summary)

## examine detailed surrounding text

#(optional)filter only interesting keywords
interest <- c('fitness')
#(optional)filter keyword search output                           
res_total_interest <- subset(res_total, res_total$keyword %in% interest)

#clean keyword search dataframe and transform text surrounding keywords to strings
res_total_interest <- subset(res_total_interest,select= - token_text)
res_total_interest$line_text <-data.frame(lapply(res_total_interest, as.character), stringsAsFactors=FALSE)
str(res_total_interest)

#transform relevant lines into txt file
res_data <- read.table(file = "../../results/tsv/interest_fitness.tsv", sep = "\t", header = TRUE, fill=TRUE,  quote = "")
prefix <- seq(1,length(res_data$line_text.line_text))
res_lineTxt <- paste0(prefix,". ",res_data$line_text.line_text)
#select first matched line for each paper
paper_name <- unique(res_data$paper)
idx_first_match <- sapply(1:length(paper_name), function(x) which(res_data$paper == paper_name[x])[1])
res_first_match = res_lineTxt[idx_first_match]
res_first_match[1:3]


#### exports ####
writeLines(res_first_match, "../../results/txt/line_text_fitness.txt")
save(res_total, file="../../data/archived/rdata/res_total_cooperation_intro.rdata")
write.csv(summary, "../results/summary_cooperation_intro.csv")
write.table(res_total_interest, file = "../../results/tsv/interest_fitness.tsv", sep = "\t", quote = FALSE, row.names = FALSE)
