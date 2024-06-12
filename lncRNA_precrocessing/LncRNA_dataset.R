library(IRanges)

library(GenomicRanges)

# import Pardis_2015 lncRNA dataset  
setwd("E:\\R_project\\LncRNA-chip\\LncRNAs\\2015")
## import antisense.csv 
Pardis_2015_antisense <- read.csv("antisense.csv", header = T, sep = ",")
Pardis_2015_antisense <- Pardis_2015_antisense[,c("Transcript.ID","Chromosome","Start","Stop","Strand")]
## import intergenic.csv
Pardis_2015_intergenic <- read.csv("intergenic.csv", header = T, sep = ",")
Pardis_2015_intergenic <- Pardis_2015_intergenic[,c("Transcript.ID","Chromosome","Start","Stop","Strand")]
## import circular.csv
Pardis_2015_circular <- read.csv("circular.csv", header = T, sep = ",")
Pardis_2015_circular <- Pardis_2015_circular[,c("circRNA_ID","Chromosome","Start","Stop","Strand")]
colnames(Pardis_2015_circular) <- c("Transcript.ID","Chromosome","Start","Stop","Strand")

## create  Pardis_2015 dataset 

Pardis_2015 <- data.frame(,5)
Pardis_2015 <- rbind(Pardis_2015_antisense, Pardis_2015_intergenic, Pardis_2015_circular)

# import 
