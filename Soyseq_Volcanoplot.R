#file.list <- list.files(pattern= 'Rawdata/.*.txt')  #to read multiple files

#df.list <- lapply (file.list, read_excel)


#genelist <- read.table("Rawdata/18.DrRecSevroot.txt", header = TRUE)

#If we want multiple panels in same plot, use par(mfrow = c(2,2)) function for 2 by 2 matrix.

#tiff("18.DrRecSevroot.tiff", width = 6, height = 6, units = 'in', res = 300, compression = "none")


#with(genelist, plot(log2fold,-log10(padj),family = "Helvetica", pch=20, type = "p", main = "D6R*-R", xlab = "Log2Fold Change", ylab = "-log10(adjusted p-value)", cex.axis = 1.5, cex.lab = 1.5, cex.main = 1.5))
#abline(v=0, col = "black", lwd = 1, lty = 2)


#with(subset(genelist, padj <0.0001 & log2fold >1.5 & cpm1 >4 & cpm2 >4), points(log2fold, -log10(padj), pch = 20, col = "red"))

#with(subset(genelist, padj <0.0001 & log2fold <(-1.5) & cpm1 >4 & cpm2 >4), points(log2fold, -log10(padj), pch = 20, col = "blue"))

#par(xpd= TRUE) #1default is FALSE which doesnot allow to put legend outside plot, so keep it TRUE.
#legend(x= -11, y= 350, legend = "Downregulated", pch = 20, col = "blue", bty = "n")
#legend(x= 3, y= 350, legend = "Upregulated", pch = 20, col = "red", bty = "n")


#legend(x= -13, y= 400 , legend = c("Up", "Down"), pch = 20, col = c("red","blue"), bt = "n") #pch can take different values as per the legend type. Eg, 0  is for square box, bt = n gives legend without lines

#dev.off()

##################################################################################################################
genelist1 <- read.table("Rawdata/1.Sub1dLeaf.txt", header = TRUE)
tiff("1.Sub1dLeaf.tiff", width = 6, height = 6, units = 'in', res = 200, compression = "none")
with(genelist1, plot(log2fold,-log10(padj),family = "Helvetica", pch=20, type = "p", cex.axis = 2.5, cex.lab = 2.5, cex.main = 2.5, ann = FALSE))
abline(v=0, col = "black", lwd = 1, lty = 2)
with(subset(genelist1, padj <0.0001 & log2fold >1.5 & cpm1 >4 & cpm2 >4), points(log2fold, -log10(padj), pch = 20, col = "red"))
with(subset(genelist1, padj <0.0001 & log2fold <(-1.5) & cpm1 >4 & cpm2 >4), points(log2fold, -log10(padj), pch = 20, col = "blue"))
dev.off()

##################################################################################################################
genelist2 <- read.table("Rawdata/2.Sub2dLeaf.txt", header = TRUE)
tiff("2.Sub2dLeaf.tiff", width = 6, height = 6, units = 'in', res = 200, compression = "none")
with(genelist2, plot(log2fold,-log10(padj),family = "Helvetica", pch=20, type = "p", cex.axis = 2.5, cex.lab = 2.5, cex.main = 2.5, ann = FALSE))
abline(v=0, col = "black", lwd = 1, lty = 2)
with(subset(genelist2, padj <0.0001 & log2fold >1.5 & cpm1 >4 & cpm2 >4), points(log2fold, -log10(padj), pch = 20, col = "red"))
with(subset(genelist2, padj <0.0001 & log2fold <(-1.5) & cpm1 >4 & cpm2 >4), points(log2fold, -log10(padj), pch = 20, col = "blue"))
dev.off()

##################################################################################################################
genelist3 <- read.table("Rawdata/3.Sub3dLeaf.txt", header = TRUE)
tiff("3.Sub3dLeaf.tiff", width = 6, height = 6, units = 'in', res = 200, compression = "none")
with(genelist3, plot(log2fold,-log10(padj),family = "Helvetica", pch=20, type = "p", cex.axis = 2.5, cex.lab = 2.5, cex.main = 2.5, ann = FALSE))
abline(v=0, col = "black", lwd = 1, lty = 2)
with(subset(genelist3, padj <0.0001 & log2fold >1.5 & cpm1 >4 & cpm2 >4), points(log2fold, -log10(padj), pch = 20, col = "red"))
with(subset(genelist3, padj <0.0001 & log2fold <(-1.5) & cpm1 >4 & cpm2 >4), points(log2fold, -log10(padj), pch = 20, col = "blue"))
dev.off()

##################################################################################################################
genelist4 <- read.table("Rawdata/4.Sub3dRLeaf.txt", header = TRUE)
tiff("4.Sub3dRLeaf.tiff", width = 6, height = 6, units = 'in', res = 200, compression = "none")
with(genelist4, plot(log2fold,-log10(padj),family = "Helvetica", pch=20, type = "p", ylim = c(0,300), cex.axis = 2.5, cex.lab = 2.5, cex.main = 2.5, ann = FALSE))
abline(v=0, col = "black", lwd = 1, lty = 2)
with(subset(genelist4, padj <0.0001 & log2fold >1.5 & cpm1 >4 & cpm2 >4), points(log2fold, -log10(padj), pch = 20, col = "red"))
with(subset(genelist4, padj <0.0001 & log2fold <(-1.5) & cpm1 >4 & cpm2 >4), points(log2fold, -log10(padj), pch = 20, col = "blue"))
dev.off()

##################################################################################################################
genelist5 <- read.table("Rawdata/5.sub3dR_3dleaf.txt", header = TRUE)
tiff("5.Sub3dR_3dleaf.tiff", width = 6, height = 6, units = 'in', res = 200, compression = "none")
with(genelist5, plot(log2fold,-log10(padj),family = "Helvetica", pch=20, type = "p", cex.axis = 2.5, cex.lab = 2.5, cex.main = 2.5, ann = FALSE))
abline(v=0, col = "black", lwd = 1, lty = 2)
with(subset(genelist5, padj <0.0001 & log2fold >1.5 & cpm1 >4 & cpm2 >4), points(log2fold, -log10(padj), pch = 20, col = "red"))
with(subset(genelist5, padj <0.0001 & log2fold <(-1.5) & cpm1 >4 & cpm2 >4), points(log2fold, -log10(padj), pch = 20, col = "blue"))
dev.off()

##################################################################################################################
genelist6 <- read.table("Rawdata/6.sub1droot.txt", header = TRUE)
tiff("6.sub1droot.tiff", width = 6, height = 6, units = 'in', res = 200, compression = "none")
with(genelist6, plot(log2fold,-log10(padj),family = "Helvetica", pch=20, type = "p", cex.axis = 2.5, cex.lab = 2.5, cex.main = 2.5, ann = FALSE))
abline(v=0, col = "black", lwd = 1, lty = 2)
with(subset(genelist6, padj <0.0001 & log2fold >1.5 & cpm1 >4 & cpm2 >4), points(log2fold, -log10(padj), pch = 20, col = "red"))
with(subset(genelist6, padj <0.0001 & log2fold <(-1.5) & cpm1 >4 & cpm2 >4), points(log2fold, -log10(padj), pch = 20, col = "blue"))
dev.off()

##################################################################################################################
genelist7 <- read.table("Rawdata/7.sub2droot.txt", header = TRUE)
tiff("7.sub2droot.tiff", width = 6, height = 6, units = 'in', res = 200, compression = "none")
with(genelist7, plot(log2fold,-log10(padj),family = "Helvetica", pch=20, type = "p", cex.axis = 2.5, cex.lab = 2.5, cex.main = 2.5, ann = FALSE))
abline(v=0, col = "black", lwd = 1, lty = 2)
with(subset(genelist7, padj <0.0001 & log2fold >1.5 & cpm1 >4 & cpm2 >4), points(log2fold, -log10(padj), pch = 20, col = "red"))
with(subset(genelist7, padj <0.0001 & log2fold <(-1.5) & cpm1 >4 & cpm2 >4), points(log2fold, -log10(padj), pch = 20, col = "blue"))
dev.off()

##################################################################################################################
genelist8 <- read.table("Rawdata/8.sub3droot.txt", header = TRUE)
tiff("8.sub3droot.tiff", width = 6, height = 6, units = 'in', res = 200, compression = "none")
with(genelist8, plot(log2fold,-log10(padj),family = "Helvetica", pch=20, type = "p", cex.axis = 2.5, cex.lab = 2.5, cex.main = 2.5, ann = FALSE))
abline(v=0, col = "black", lwd = 1, lty = 2)
with(subset(genelist8, padj <0.0001 & log2fold >1.5 & cpm1 >4 & cpm2 >4), points(log2fold, -log10(padj), pch = 20, col = "red"))
with(subset(genelist8, padj <0.0001 & log2fold <(-1.5) & cpm1 >4 & cpm2 >4), points(log2fold, -log10(padj), pch = 20, col = "blue"))
dev.off()

##################################################################################################################
genelist9 <- read.table("Rawdata/9.sub3dRroot.txt", header = TRUE)
tiff("9.sub3dRroot.tiff", width = 6, height = 6, units = 'in', res = 200, compression = "none")
with(genelist9, plot(log2fold,-log10(padj),family = "Helvetica", pch=20, type = "p", ylim = c(0,300),cex.axis = 2.5, cex.lab = 2.5, cex.main = 2.5, ann = FALSE))
abline(v=0, col = "black", lwd = 1, lty = 2)
with(subset(genelist9, padj <0.0001 & log2fold >1.5 & cpm1 >4 & cpm2 >4), points(log2fold, -log10(padj), pch = 20, col = "red"))
with(subset(genelist9, padj <0.0001 & log2fold <(-1.5) & cpm1 >4 & cpm2 >4), points(log2fold, -log10(padj), pch = 20, col = "blue"))
dev.off()

##################################################################################################################
genelist10 <- read.table("Rawdata/10.sub3dR_3droot.txt", header = TRUE)
tiff("10.sub3dR_3droot.tiff", width = 6, height = 6, units = 'in', res = 200, compression = "none")
with(genelist10, plot(log2fold,-log10(padj),family = "Helvetica", pch=20, type = "p", cex.axis = 2.5, cex.lab = 2.5, cex.main = 2.5, ann = FALSE))
abline(v=0, col = "black", lwd = 1, lty = 2)
with(subset(genelist10, padj <0.0001 & log2fold >1.5 & cpm1 >4 & cpm2 >4), points(log2fold, -log10(padj), pch = 20, col = "red"))
with(subset(genelist10, padj <0.0001 & log2fold <(-1.5) & cpm1 >4 & cpm2 >4), points(log2fold, -log10(padj), pch = 20, col = "blue"))
dev.off()

##################################################################################################################
genelist11 <- read.table("Rawdata/11.DrModLeaf.txt", header = TRUE)
tiff("11.DrModLeaf.tiff", width = 6, height = 6, units = 'in', res = 200, compression = "none")
with(genelist11, plot(log2fold,-log10(padj),family = "Helvetica", pch=20, type = "p", cex.axis = 2.5, cex.lab = 2.5, cex.main = 2.5, ann = FALSE))
abline(v=0, col = "black", lwd = 1, lty = 2)
with(subset(genelist11, padj <0.0001 & log2fold >1.5 & cpm1 >4 & cpm2 >4), points(log2fold, -log10(padj), pch = 20, col = "red"))
with(subset(genelist11, padj <0.0001 & log2fold <(-1.5) & cpm1 >4 & cpm2 >4), points(log2fold, -log10(padj), pch = 20, col = "blue"))
dev.off()

##################################################################################################################
genelist12 <- read.table("Rawdata/12.DrSevLeaf.txt", header = TRUE)
tiff("12.DrSevLeaf.tiff", width = 6, height = 6, units = 'in', res = 200, compression = "none")
with(genelist12, plot(log2fold,-log10(padj),family = "Helvetica", pch=20, type = "p", cex.axis = 2.5, cex.lab = 2.5, cex.main = 2.5, ann = FALSE))
abline(v=0, col = "black", lwd = 1, lty = 2)
with(subset(genelist12, padj <0.0001 & log2fold >1.5 & cpm1 >4 & cpm2 >4), points(log2fold, -log10(padj), pch = 20, col = "red"))
with(subset(genelist12, padj <0.0001 & log2fold <(-1.5) & cpm1 >4 & cpm2 >4), points(log2fold, -log10(padj), pch = 20, col = "blue"))
dev.off()

##################################################################################################################
genelist13 <- read.table("Rawdata/13.DrRecleaf.txt", header = TRUE)
tiff("13.DrRecLeaf.tiff", width = 6, height = 6, units = 'in', res = 200, compression = "none")
with(genelist13, plot(log2fold,-log10(padj),family = "Helvetica", pch=20, type = "p", ylim = c(0,300), cex.axis = 2.5, cex.lab = 2.5, cex.main = 2.5, ann = FALSE))
abline(v=0, col = "black", lwd = 1, lty = 2)
with(subset(genelist13, padj <0.0001 & log2fold >1.5 & cpm1 >4 & cpm2 >4), points(log2fold, -log10(padj), pch = 20, col = "red"))
with(subset(genelist13, padj <0.0001 & log2fold <(-1.5) & cpm1 >4 & cpm2 >4), points(log2fold, -log10(padj), pch = 20, col = "blue"))
dev.off()

##################################################################################################################
genelist14 <- read.table("Rawdata/14.DrRecSevleaf.txt", header = TRUE)
tiff("14.DrRecSevLeaf.tiff", width = 6, height = 6, units = 'in', res = 200, compression = "none")
with(genelist14, plot(log2fold,-log10(padj),family = "Helvetica", pch=20, type = "p", cex.axis = 2.5, cex.lab = 2.5, cex.main = 2.5, ann = FALSE))
abline(v=0, col = "black", lwd = 1, lty = 2)
with(subset(genelist14, padj <0.0001 & log2fold >1.5 & cpm1 >4 & cpm2 >4), points(log2fold, -log10(padj), pch = 20, col = "red"))
with(subset(genelist14, padj <0.0001 & log2fold <(-1.5) & cpm1 >4 & cpm2 >4), points(log2fold, -log10(padj), pch = 20, col = "blue"))
dev.off()

##################################################################################################################
genelist15 <- read.table("Rawdata/15.DrModroot.txt", header = TRUE)
tiff("15.DrModRoot.tiff", width = 6, height = 6, units = 'in', res = 200, compression = "none")
with(genelist15, plot(log2fold,-log10(padj),family = "Helvetica", pch=20, type = "p", cex.axis = 2.5, cex.lab = 2.5, cex.main = 2.5, ann = FALSE))
abline(v=0, col = "black", lwd = 1, lty = 2)
with(subset(genelist15, padj <0.0001 & log2fold >1.5 & cpm1 >4 & cpm2 >4), points(log2fold, -log10(padj), pch = 20, col = "red"))
with(subset(genelist15, padj <0.0001 & log2fold <(-1.5) & cpm1 >4 & cpm2 >4), points(log2fold, -log10(padj), pch = 20, col = "blue"))
dev.off()

##################################################################################################################
genelist16 <- read.table("Rawdata/16.DrSevroot.txt", header = TRUE)
tiff("16.DrSevRoot.tiff", width = 6, height = 6, units = 'in', res = 200, compression = "none")
with(genelist16, plot(log2fold,-log10(padj),family = "Helvetica", pch=20, type = "p", cex.axis = 2.5, cex.lab = 2.5, cex.main = 2.5, ann = FALSE))
abline(v=0, col = "black", lwd = 1, lty = 2)
with(subset(genelist16, padj <0.0001 & log2fold >1.5 & cpm1 >4 & cpm2 >4), points(log2fold, -log10(padj), pch = 20, col = "red"))
with(subset(genelist16, padj <0.0001 & log2fold <(-1.5) & cpm1 >4 & cpm2 >4), points(log2fold, -log10(padj), pch = 20, col = "blue"))
dev.off()

##################################################################################################################
genelist17 <- read.table("Rawdata/17.DrRecroot.txt", header = TRUE)
tiff("17.DrRecRoot.tiff", width = 6, height = 6, units = 'in', res = 200, compression = "none")
with(genelist17, plot(log2fold,-log10(padj),family = "Helvetica", pch=20, type = "p", ylim = c(0,300), cex.axis = 2.5, cex.lab = 2.5, cex.main = 2.5, ann = FALSE))
abline(v=0, col = "black", lwd = 1, lty = 2)
with(subset(genelist17, padj <0.0001 & log2fold >1.5 & cpm1 >4 & cpm2 >4), points(log2fold, -log10(padj), pch = 20, col = "red"))
with(subset(genelist17, padj <0.0001 & log2fold <(-1.5) & cpm1 >4 & cpm2 >4), points(log2fold, -log10(padj), pch = 20, col = "blue"))
dev.off()

##################################################################################################################
genelist18 <- read.table("Rawdata/18.DrRecSevroot.txt", header = TRUE)
tiff("18.DrRecSevRoot.tiff", width = 6, height = 6, units = 'in', res = 200, compression = "none")
with(genelist18, plot(log2fold,-log10(padj),family = "Helvetica", pch=20, type = "p", cex.axis = 2.5, cex.lab = 2.5, cex.main = 2.5, ann = FALSE))
abline(v=0, col = "black", lwd = 1, lty = 2)
with(subset(genelist18, padj <0.0001 & log2fold >1.5 & cpm1 >4 & cpm2 >4), points(log2fold, -log10(padj), pch = 20, col = "red"))
with(subset(genelist18, padj <0.0001 & log2fold <(-1.5) & cpm1 >4 & cpm2 >4), points(log2fold, -log10(padj), pch = 20, col = "blue"))
dev.off()