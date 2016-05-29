setwd("D:/GitHub Works/AbiesMS/DataFiles")
#### Figure 2. shift after 1900 ####
# Treeline removed, X Y scale fixed Shifting plot


library(shape)
#### Shifting Plot defining Final. 

# tiff(filename = "O:/Abies limit shift paper work/R Works Abies/shift pannel x y fixed treeline removed 1c.tiff", pointsize=5, width = 15, height = 11,
#   units = "cm", res = 800, restoreConsole = TRUE, compression= "lzw")
x11()
par(mfrow=c(2,2), cex=.8, cex.axis=1.3, cex.lab=1.5,  lwd=1, pty = "m", mar=c(4.5,4.5,1,1)  )

#### MCA1 climb plot  ####
mca1.df<-read.table('O:/Abies limit shift paper work/R Works Abies/mca1.csv', header=T, sep=',')
head(mca1.df)
names(mca1.df)
plot(mca1.df$year,mca1.df$elev,type='n',bty='n',axes=F, xlab='Recruitment Year',
     ylab='Elevation (m a.s.l.)' ,xlim=c(1900,2012), ylim=c(3580, 4005))
legend('topleft',border=NA, box.lty=0,  cex=.9,c('Tree','Sapling','Seedling'),
       col=c('black','gray','black'),pch=c(15,17,3))
axis(side=1, at=seq(1900, 2015, by=5))
axis(side=2, at=seq(3565, 4015, by=50))
points(mca1.df$year[mca1.df$type=='T'], mca1.df$elev [mca1.df$type =='T'], col = 'black',pch=15, cex=0.7)  # [ ] must be used to define sub caterogries (mca1.df$types within a column)
points(mca1.df$year[mca1.df$type =='SP'], mca1.df$elev [mca1.df$type =='SP'], col = 'gray', pch=17, cex=0.7)
points(mca1.df$year[mca1.df$type =='SD'], mca1.df$elev [mca1.df$type=='SD'], col = 'black', pch="+", cex=1)
Arrows (1901,3713, 1896,  3728,  arr.width =0.1, arr.length= 0.2, lwd= 1)
text (1902, 3733, "Treeline")


abline(v=1950, lty=3); text(1946, 3760, "1950", srt=90)
climb.mca1<-read.table('O:/Abies limit shift paper work/R Works Abies/climb mca1.csv',header=T,sep=',')
lines(climb.mca1$elev~climb.mca1$year, type='l',lty=2,lwd=1,col='black')
legend("topright", box.lty=0, "(A)", cex=1.2)   ##defining figure number in pannel diagram


#### MCA2 climb plot ####
mca2.df<-read.table('O:/Abies limit shift paper work/R Works Abies/mca2.csv', header=T, sep=',')
head(mca2.df)
names(mca2.df)
plot(mca2.df$year,mca2.df$elev,type='n', bty='n', axes=F,xlab='Recruitment Year',
     ylab='Elevation (m a.s.l.)', xlim=c(1900,2012), ylim=c(3580, 4005))
#legend('topleft',border=NA, box.lty=0,  cex=.9,c('Tree','Sapling','Seedling'),
#      col=c('black','gray','black'),pch=c(15,17,3))
axis(side=1, at=seq(1900, 2015, by=5))
axis(side=2, at=seq(3565, 4015, by=50))
points(mca2.df$year[mca2.df$type=='tree'], mca2.df$elev [mca2.df$type =='tree'], col = 'black',pch=15,cex=0.7)  # [ ] must be used to define sub caterogries (mca1.df$types within a column)
points(mca2.df$year[mca2.df$type =='sapling'], mca2.df$elev [mca2.df$type =='sapling'], col = 'gray', pch=17, ,cex=0.7)
points(mca2.df$year[mca2.df$type =='seedling'], mca2.df$elev [mca2.df$type=='seedling'], col = 'black', pch="+", cex=1)
Arrows (1901,3665, 1896,  3685, arr.width =0.1, arr.length= 0.2, lwd= 1)
text (1902, 3690, "Treeline")

abline(v=1950, lty=3); text(1946, 3720, "1950", srt=90)
climb.mca2<-read.table('O:/Abies limit shift paper work/R Works Abies/climb mca2.csv',header=T,sep=',')
lines(climb.mca2$elev~climb.mca2$year, type='l',lty=2,lwd=1,col='black')
legend("topright", box.lty=0, "(B)", cex=1.2)   ##defining figure number in pannel diagram




#### MCA3 climb plot ####
mca3.df<-read.table('O:/Abies limit shift paper work/R Works Abies/mca3.csv', header=T, sep=',')
head(mca3.df)
names(mca3.df)
plot(mca3.df$year,mca3.df$elev,type='n',bty='n', axes=F,xlab='Recruitment Year',
     ylab='Elevation (m a.s.l.)' , xlim=c(1900,2012) , ylim=c(3580, 4005))
#legend('topleft',border=NA, box.lty=0,  cex=.9,c('Tree','Sapling','Seedling'),
#      col=c('black','gray','black'),pch=c(15,17,3))
axis(side=1, at=seq(1900, 2015, by=5))
axis(side=2, at=seq(3565, 4015, by=50))
points(mca3.df$year[mca3.df$type=='tree'],   mca3.df$elev [mca3.df$type =='tree'], col = 'black',pch=15,cex=0.7)  # [ ] must be used to define sub caterogries (mca1.df$types within a column)
points(mca3.df$year[mca3.df$type =='sapling'], mca3.df$elev [mca3.df$type =='sapling'], col = 'gray', pch=17, ,cex=0.7)
points(mca3.df$year[mca3.df$type =='seedling'], mca3.df$elev [mca3.df$type=='seedling'], col = 'black', pch="+", cex=1)
Arrows (1901,3685, 1896,  3700, arr.width =0.1, arr.length= 0.2, lwd= 1)
text (1902, 3705, "Treeline")

abline(v=1950, lty=3); text(1946, 3815, "1950", srt=90)
climb.mca3<-read.table('O:/Abies limit shift paper work/R Works Abies/climb mca3.csv',header=T,sep=',')
lines(climb.mca3$elev~climb.mca3$year, type='l',lty=2,lwd=1,col='black')
legend("topright", box.lty=0, "(C)", cex=1.2)   ##defining figure number in pannel diagram



#### GCA1 climb plot ####
gca1.df<-read.table('O:/Abies limit shift paper work/R Works Abies/gca1.csv', header=T, sep=',')
head(gca1.df)
names(gca1.df)
plot(gca1.df$year,gca1.df$elev,type='n',bty = 'n', axes=F,xlab='Recruitment Year',
     ylab='Elevation (m a.s.l.)' , xlim=c(1900,2012) , ylim=c(3580, 4005))
#legend('topleft',border=NA, box.lty=0,  cex=.9,c('Tree','Sapling','Seedling'),
#       col=c('black','gray','black'),pch=c(15,17,3))
axis(side=1, at=seq(1900, 2015, by=5))
axis(side=2, at=seq(3565, 4015, by=50))
points(gca1.df$year[gca1.df$type=='tree'],   gca1.df$elev [gca1.df$type =='tree'], col = 'black',pch=15,cex=0.7)  # [ ] must be used to define sub caterogries (mca1.df$types within a column)
points(gca1.df$year[gca1.df$type =='sapling'], gca1.df$elev [gca1.df$type =='sapling'], col = 'gray', pch=17 ,cex=0.7)
points(gca1.df$year[gca1.df$type =='seedling'], gca1.df$elev [gca1.df$type=='seedling'], col = 'black', pch="+", cex=1)
Arrows (1901,3927, 1896,  3942,  arr.width =0.1, arr.length= 0.2, lwd= 1)
text (1902, 3947, "Treeline")

abline(v=1950, lty=3); text(1946, 3980, "1950", srt=90)
climb.gca1<-read.table('O:/Abies limit shift paper work/R Works Abies/climb gca1.csv',header=T,sep=',')
lines(climb.gca1$elev~climb.gca1$year, type='l',lty=2,lwd=1,col='black')
legend("topright", box.lty=0, "(D)", cex=1.2)   ##defining figure number in pannel diagram

#dev.off()


#### Figure 3. Weighted Bar histogram ####
# Individual / hectar
library(graphics)
reg.df<-read.table('O:/Abies limit shift paper work/R Works Abies/regeneration per hectar.csv', header=T, sep=',')
#wt<-c(1,1,1,1,1,   3,3,3,  6,6,6) # add weight for bar width
#reg.df<-cbind(reg.df, wt)
reg.df
#tiff(filename = "O:/Abies limit shift paper work/R Works Abies/Hist varied bar size.tiff", pointsize=5, width = 15, height = 11,
  #   units = "cm", res = 800, restoreConsole = TRUE, compression= "lzw")

x11(width = 15, height = 10)
par(mfrow=c(2,2), cex.axis=1.2, cex.lab=1.2, pty = "m", mar=c(6.5,4.5,2,1)  )

#### MCA1 ####
par (mar=c(6.5, 4.5, 1, 1) )
barplot(reg.df$agef.m1[reg.df$agef.m1>=0],las=2,  width = reg.df$wt, xlim=c(0.5,30), yaxt="n", ylim=c(0,275), 
        names.arg=c( "0-5", "5-10", "10-15", "15-20", "20-25", "25-50", "50-75", "75-100", "100-150", "150-200", "200-250"),
        ylab="Individuals/Hectare", 
        space=c(0.2, 0,0,0,0,0,0,0,0,0,0))

axis(side=2, at=seq(0, 300, by=25, las=1))
legend("top", box.lty=0, "(A)", cex=1.2)   ##defining figure number in pannel diagram

#### MCA2 ####
par (mar=c(6.5, 1, 1, 2) )
barplot(reg.df$agef.m2,las=2,  width = reg.df$wt, xlim=c(0.5,30),  yaxt="n", ylim=c(0,275), 
        names.arg=c( "0-5", "5-10", "10-15", "15-20", "20-25", "25-50", "50-75", "75-100", "100-150", "150-200", "200-250"),
        space=c(0.2, 0,0,0,0,0,0,0,0,0,0))
axis(side=2, at=seq(0, 300, by=25, las=1), labels=F)
legend("top", box.lty=0, "(B)", cex=1.2)   ##defining figure number in pannel diagram

#### MCA3 ####
par (mar=c(6.5, 4.5, 1, 1) )
barplot(reg.df$agef.m3,las=2,  width = reg.df$wt, xlim=c(0.5,30),  yaxt="n", ylim=c(0,275),  ylab="Individuals/Hectare",
        names.arg=c( "0-5", "5-10", "10-15", "15-20", "20-25", "25-50", "50-75", "75-100", "100-150", "150-200", "200-250"),
        space=c(0.2, 0,0,0,0,0,0,0,0,0,0))
axis(side=2, at=seq(0, 300, by=25, las=1))
legend("top", box.lty=0, "(C)", cex=1.2)   ##defining figure number in pannel diagram

#### GCA1 ####
par (mar=c(6.5,1, 1, 2) )
barplot(reg.df$agef.g1,las=2,  width = reg.df$wt, xlim=c(0.5,30),  yaxt="n", ylim=c(0,275), 
        names.arg=c( "0-5", "5-10", "10-15", "15-20", "20-25", "25-50", "50-75", "75-100", "100-150", "150-200", "200-250"),
        space=c(0.2, 0,0,0,0,0,0,0,0,0,0))
axis(side=2, at=seq(0, 300, by=25, las=2), labels=F)
legend("top", box.lty=0, "(D)", cex=1.2)   ##defining figure number in pannel diagram
mtext("Age Group", side = 1, line= -2, outer=T, cex=.9) # mail x lab

dev.off()


##### Figure 4. Seedling Sapling Density plot ####
# data matrix preparation
b.df<- data.frame(above.sd=c(135.8, 67.9, 45.3, 18.9), above.sp=c(117, 207.4, 5, 76.4), 
                  below.sd=c(313.2, 373.4, 215.9, 800), below.sp=c(252.8, 462, 55.4, 150))
tiff(filename = "O:/Abies limit shift paper work/R Works Abies/density plot with blank.tiff", pointsize=5, width = 10, height = 6,
     units = "cm", res = 800, restoreConsole = TRUE, compression= "lzw")
par(cex.axis=1.2, cex.lab=1.2, pty = "m", mar=c(4.5,4.5,1,1)  )

b.df 
above.df<- (b.df[,1:2]) # split matrix 
below.df<- (b.df[,3:4]) # split matrix               
above.df               

x11()
par(mfrow = c(1,2))
par(mar=c(4.5, 4.3, 1,1))                  
barplot(as.matrix(above.df), beside=T, ylim=c(0,800), density=rep(c(85,55,30,0)), angle=rep(c(45,90,150,0)), yaxt = "n", xaxt='n', ylab="Density /Hectare")
axis(side=2, at=seq(0,800, by=50)) 
legend('topleft', c('MCA-1', 'MCA-2', 'MCA-3', 'GCA-1'), bty="n", density=rep(c(85,55,30,0)),angle=rep(c(45,90,150,0)) )
mtext('Seedling', side=1, line=0.5, at=2.8)
mtext('Sapling', side=1, line=0.5, at=8)

mtext('Above Treeline', side=1, line=2, at=5.5, font =2)

par(mar=c(4.5, 1, 1,1))  
barplot(as.matrix(below.df), beside=T, ylim=c(0,800), density=rep(c(85,55,30,0)),angle=rep(c(45,90,150,0)), xaxt='n', yaxt="n")
axis(side=2, at=seq(0, 800, by=50), labels =F)                
mtext('Seedling', side=1, line=0.5, at=2.8)
mtext('Sapling', side=1, line=0.5, at=8)

mtext('Below Treeline', side=1, line=2, at=5.5, font =2)

dev.off()   
###


#### Figure 5. Temperature Trend ####
read.table('O:/Abies limit shift paper work/climate plot.csv', header=T, sep=',')->climate.df
head(climate.df)
summary(climate.df)
gca.lm<-lm(gca~year, data =climate.df)
mca.lm<-lm(mca~year, data =climate.df)

tiff(filename = "O:/Abies limit shift paper work/R Works Abies/Temp trend.tiff", pointsize=5, width = 7, height = 4,
     units = "cm", res = 800, restoreConsole = TRUE, compression= "lzw")
par(mfrow=c(1,1), cex=.8, cex.axis=1.3, cex.lab=1.5, pty = "m", mar=c(4.5,4.6,1,1.1)  )

plot(climate.df$year, climate.df$gca, type='n', xlim=c(1978,2009), ylim=c(3,6.5), 
     ylab=expression("Mean Annual Temperature " ~ (""^{o}~"C")), xlab="Year")
points(climate.df$year, climate.df$gca,pch=16)
#### GCA ####
segments(climate.df$year[1], fitted(gca.lm)[1], 
         climate.df$year[length(climate.df$year)], 
         fitted(gca.lm)[length(climate.df$year)],
         lty=1, lwd=1.5) 

#### MCA ####
points(climate.df$year, climate.df$mca,pch=17)
segments(climate.df$year[1], fitted(mca.lm)[1], 
         climate.df$year[length(climate.df$year)], 
         fitted(mca.lm)[length(climate.df$year)], lty=3, lwd=1.5) 

legend(1977,6.6, pch=c(16, 17), lty=c(1,3),c("GCA", "MCA"),border=NA, box.lty=0)

dev.off()
###