library(ggplot2)
library(ggfortify)
library(grid)
library(gridExtra)

data1 = read.csv(file="/Users/bgtamang/Desktop/Multivariate analysis-SOYSEQ/log2FPKM.csv", header=TRUE, stringsAsFactors = FALSE, strip.white =TRUE, sep=",", na.strings= c("NA", " ", ""))
data2 = na.omit(data1)
data2 <- data2[,2:19]
TDD2 = t(data2)

BMD = data.frame(read.table(file="/Users/bgtamang/Desktop/Multivariate analysis-SOYSEQ/metadata_soyseq.csv", sep=',', row.names=1, header=TRUE))
BMD$Treatment = factor(BMD$Treatment)

PCA = prcomp(TDD2)
PCA1 = cbind(BMD, PCA$x)
head(PCA1)
#write.table(PCA1, file = "/Users/bgtamang/Desktop/PCASoyseq.txt")


#tiff("/Users/bgtamang/Desktop/PCA plot (log2FPKM).tiff", width = 5, height = 5, units = 'in', res = 300, compression = "none")
p1 <-ggplot(PCA1,aes(x=PC1,y=PC2, color=Treatment, shape= Stress))
p1 +  ggtitle("log2FPKM")+ theme(plot.title = element_text(hjust=0.5)) + 
  theme(text = element_text(size = 15)) + geom_point(size = 2, alpha = 0.75)+ ylim(low= -400, high = 400) + xlim(low= -400, high = 400)
tiff("Hierarchial Clustering.tiff", width = 5, height = 5, units = 'in', res = 300, compression = "none")

#dev.off()



soyrna.pca <-PCA
eig.soyrna <- (soyrna.pca$sdev)^2

#Get variances in percentage
var.soyrna <- eig.soyrna*100/sum(eig.soyrna)

#Cumulative variances
cumvar.soyrna <-cumsum(var.soyrna)

#Put all together

eigen.soyrnaseq <- data.frame(eig = eig.soyrna, variance = var.soyrna,
                              cumvariance = cumvar.soyrna)

barplot(eigen.soyrnaseq[,2], names.arg=1:nrow(eigen.soyrnaseq),
        main = "VARIANCES-log2FPKM",
        xlab = "Principle Components",
        ylab = "% of variances",
        ylim = c(0, 70),
        col = "black",
        family = "Helvetica")
lines (x = 1:nrow(eigen.soyrnaseq),
       eigen.soyrnaseq[,2],
       type = "b",
       pch = 19,
       col = "red")