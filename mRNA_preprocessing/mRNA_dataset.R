library(GenomicRanges) 
library(rtracklayer)
library(Biostrings)
library(BSgenome)
library(Rsamtools)
setwd("E:\\GitHub_repository\\LncRNAs-prediction-by-histone-modification\\mRNA_preprocessing")

# load 3D7 genome annotation file 
gff <- import.gff("PlasmoDB-68_Pfalciparum3D7.gff")

# transfer the gff object to data frame
DF_gff <- as.data.frame(gff)

# select the mRNA part
mRNA <- DF_gff[DF_gff$type == "mRNA",]

# get sequences from gff  
IRanges_mRNA <- IRanges(mRNA$start, mRNA$end, 
                          names = mRNA$ID, 
                          seqnames = mRNA$seqnames, 
                          strand = mRNA$strand)

GRanges_mRNA <- GRanges(seqnames = mRNA$seqnames, 
                         ranges = IRanges_mRNA, 
                         strand = mRNA$strand, 
                         ID = mRNA$ID)

fa <- FaFile("PlasmoDB-68_Pfalciparum3D7_Genome.fasta")

mRNA_sequences <- getSeq(fa, GRanges_mRNA)
