#Script for fixing 2018bathymetry .csv files up..

setwd("G:/My Drive/GIS/GIS_datasets/Bathymetry/50mMultibeamDatasetofAustralia2018")


#trying a loop

a <- (list.files(  pattern = ".csv"))
for (i in a){
  b <- as.data.frame(read.table(i))
  filename <- basename(a)
  colnames(b) <- c("Easting","Northing","Elevation")
  write.csv(b, row.names=F, file = paste(filename, ".csv", sep = ""))
}


# individual files = works

'Current <- as.data.frame((read.table(filepath<-file.choose())))
colnames(Current) <- c("Easting","Northing","Elevation")

write.csv(Current, "SC54v2.csv",row.names=F)'
