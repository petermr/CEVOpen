# Author: Giulia Arsuffi
# Date: 3 February 2021
# Title: Cleaning of raw data from Phytozome to create gene list for dictionary generation

# This cleanup was done in R

# Load packages needed
library(tidyverse)

# Set working directory
setwd("./")

# Load partially cleaned data (raw file was too big for GitHub - see 'RawData_To_GeneList.R' script in this directory to see the full analysis)
# Before running this, combine 'GenesSemiRaw1.txt' and 'GenesSemiRaw2.txt' into a single file (had to upload separately to GitHub). Save the combined file as 'GenesSemiRaw.txt' in the same directory.
genes_unique <- read_tsv("./GenesSemiRaw.txt", col_types = cols(.default = "c")) # load file (all columns as characters to prevent import problem)

# remove duplicate rows
genes_unique <- genes %>% 
  distinct()

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