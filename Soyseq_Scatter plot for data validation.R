#Attempt to create scatter plot with color codes based on group.
#First import your data. In our case, we have four column,1=SN, 2=qPCR,3=RNASeq,4=Exp. Use import function
#File name was validation and changed to data.
head (data)
#Then convert the Exp column into factor variable as the coloring is based on the Exp column.
data$Exp <- as.factor(data$Exp)
library("ggplot2") #To load the package ggplot2.
ggplot(data, aes(x=qPCR, y=RNASeq,color=Exp, shape=Exp)) +
  geom_point(aes(shape=Exp, color=Exp), size=2) +
   scale_shape_manual(values = c(3, 16, 17, 19)) +
  scale_color_manual(values = c('#999999', '#E69F00', '#56B4E9', '#000000')) + 
  theme(legend.position='top')
  