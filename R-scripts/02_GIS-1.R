library(sf)
library(dplyr)
#import data#
ward86 <- st_read("data/ward1986/ward1986.shp")
#transform the projection to UTM#
ward86 <- st_transform(ward86,32616) #using epsg#
plot(ward86)

st_geometry(ward86)
plot(st_geometry(ward86))#get the outline#
?st_centroid #get the help documentation#

centroids <- st_centroid(ward86)
plot(st_geometry(centroids),cex=0.1)
plot(st_geometry(centroids),cex=0.5)
plot(st_geometry(ward86))
plot(st_geometry(ward86),add=T)

ward1 <- filter(ward86,WARDNO =="01")
centroids1 <- filter(centroids,WARDNO =="01")
#get the coordinates of something#
st_coordinates(centroids)

#figuring out how to set up a bounding box#
st_bbox(centroids)
ward_bbox <- st_bbox(ward86)

st_bbox(centroids,)

#make the buffer#
st_crs(centroids)
buffers <- st_buffer(centroids,1000)
plot(st_geometry(centroids),cex=0.5)
plot(buffers)
plot(st_geometry(ward86),add=T)

buffers <- st_buffer(centroids,1000)
plot(st_geometry(centroids),cex=0.5)
plot(st_geometry(buffers))
plot(st_geometry(ward86),add=T)

plot(st_geometry(ward86),add=T)
plot(st_geometry(centroids),cex=0.5)
plot(st_geometry(buffers))

plot(st_geometry(buffers))
plot(st_geometry(centroids),cex=0.5,add=T)
plot(st_geometry(ward86),add=T)

#put together, change the sequence# 
plot(st_geometry(ward86))
plot(st_geometry(centroids),cex=0.5,col="red",add=T)
plot(st_geometry(buffers), add=T)

st_centroids
st_buffer
st_geometry
st_bbox
st_coordinates

