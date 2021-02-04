# Load packages needed
library(tidyverse)

# Set working directory
setwd("./")

# load and clean data. raw data file is 175 MB, too big for GitHub
genes <- read_csv("./martquery_0201024241_860.txt", col_types = cols(.default = "c")) %>% # load file (all columns as characters to prevent import problem)
  rename(GeneName = `Gene Name`, TranscriptName = `Transcript Name`, PFAM_ID = `PFAM ID`, PFAMDescription = `PFAM Description`, OrganismName = `Organism Name`) %>% # rename columns
  select(-PFAM_ID, -PFAMDescription, -Description,) # remove PFAM, gene description info - we can make other dictionaries for those.

# check how many rows are lost if NAs are removed
genes_NoNAs <- genes %>% 
  filter(!is.na(GeneName)) # no rows lost

# remove duplicate rows
genes_unique <- genes %>% 
  distinct()

write_tsv(genes_unique, col_names = FALSE, "./GenesRaw.txt") # partially cleaned data for GitHub upload

# look at structure of table - are there issues with gene names?
genes_unique %>% 
  group_by(OrganismName) %>% 
  slice(1) %>% 
  print(n = 21)

# Selaginella has gene names that are just numbers. This is incorrect and they are going to be problematic for semantic searches. Remove Selaginella from the gene dictionary
genes_unique <- genes_unique %>% 
  filter(!OrganismName == "Smoellendorffii_v1.0")

genes_unique %>% 
  group_by(OrganismName) %>% 
  slice(1) %>% 
  print(n = 21) # rest of organisms seem to have sensible gene names. For all instances, gene name = locus name. Many genes have multiple names, either because of the family they belong to or because they changed names when a new genome version was released. We'll need to either find a way to integrate common name (e.g. AT5G47500 will show up as PME5 in papers, unless the authors mention the locus in the Materials and Methods section). Maybe we can just use regex for that?

genes_unique <- genes_unique %>%
  select(-TranscriptName) # remove Transcript name, we don't need this level of detail

genes_unique %>% 
  group_by(OrganismName) %>% 
  slice(1) %>% 
  print(n = 20)

genes_unique <- genes_unique %>%
  select(-OrganismName) # leave only gene names

genes_unique # gene least is ready to use for making the gene dictionary

write_tsv(genes_unique, col_names = FALSE, "./GeneList.txt") # save gene list as text file