library(IRanges)

library(GenomicRanges)

# import Pardis_2015 lncRNA dataset  
setwd("E:\\GitHub_repository\\LncRNAs-prediction-by-histone-modification\\lncRNA_preprocessing")
## import antisense.csv 
Pardis_2015_antisense <- read.csv("Pardis_2015_antisense.csv", header = T, sep = ",")
Pardis_2015_antisense <- Pardis_2015_antisense[,c("Transcript.ID","Chromosome","Start","Stop","Strand")]
## import intergenic.csv
Pardis_2015_intergenic <- read.csv("Pardis_2015_intergenic.csv", header = T, sep = ",")
Pardis_2015_intergenic <- Pardis_2015_intergenic[,c("Transcript.ID","Chromosome","Start","Stop","Strand")]
## import circular.csv
Pardis_2015_circular <- read.csv("Pardis_2015_circular.csv", header = T, sep = ",")
Pardis_2015_circular <- Pardis_2015_circular[,c("circRNA_ID","Chromosome","Start","Stop","Strand")]
colnames(Pardis_2015_circular) <- c("Transcript.ID","Chromosome","Start","Stop","Strand")

## create  Pardis_2015 dataset 

Pardis_2015 <- data.frame()
Pardis_2015 <- rbind(Pardis_2015_antisense, Pardis_2015_intergenic, Pardis_2015_circular)

# import Karine_2022 lncRNA dataset  
setwd("E:\\GitHub_repository\\LncRNAs-prediction-by-histone-modification\\lncRNA_preprocessing")
## import karine_2022 lncRNA dataset
Karine_2023 <- read.csv("Karine_2023.csv", header = T, sep = ",")
Karine_2023 <- Karine_2023[,c("Transcript_ID","Chrm","Start","End","Strand")]
colnames(Karine_2023) <- c("Transcript.ID","Chromosome","Start","Stop","Strand")


# import Marcus_2022 dataset 

Marcus_2022 <- read.csv("Marcus_2022.csv", header = T, sep = ",")
Marcus_2022 <- Marcus_2022[,c("lncRNA_ID","chromosome","start","end","strand")]
colnames(Marcus_2022) <- c("Transcript.ID","Chromosome","Start","Stop","Strand")


# merge all three dataset 
All_lncRNA <- data.frame( )
All_lncRNA <- rbind(Pardis_2015, Karine_2023, Marcus_2022)



