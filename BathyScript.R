#Script for fixing 2018bathymetry .csv files up..


Current <- as.data.frame((read.table(filepath<-file.choose())))
colnames(Current) <- c("Easting","Northing","Elevation")

write.csv(Current, "SC54v2.csv",row.names=F)
