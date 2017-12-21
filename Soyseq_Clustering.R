#Import data and transform the data so that first column is Experimental condition, Not Gene

data.soyseq <- read.csv("/Users/bgtamang/Desktop/Multivariate analysis-SOYSEQ/log2FPKM.csv", header = TRUE, na.strings = c("", "NA"))
data1 <- data.soyseq[,2:19]
names(data1) <- c("SCT-L", "S1-L", "S2-L", "S3-L", "S3R-L","SCT-R", "S1-R", "S2-R", "S3-R", "S3R-R","DCT-L", "D5-L","D6-L","D6R-L","DCT-R", "D5-R","D6-R","D6R-R")
#Apply filter to data, if needed.

#Transform data
t.data <-t(data.soyseq)

#Corrleation
c <- cor(data1, method = "spearman")
d<- as.dist(1-c) #to find distance

#Cluster based on complete linkage method.
clusters <- hclust(d, method = "complete")
tiff("Hierarchial Clustering (log(FPKM).tiff", width = 5, height = 5, units = 'in', res = 300, compression = "none")
plot(clusters, main = "Hierarchial Clustering")

dev.off()


#Cluster based on average linkage method.
clusters1 <- hclust(d, method = "average")
tiff("Hierarchial Clustering.tiff", width = 5, height = 5, units = 'in', res = 300, compression = "none")
plot(clusters1, main = "Hierarchial Clustering")

dev.off()



