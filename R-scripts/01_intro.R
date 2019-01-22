#import shapefile into R#
library(sf) #Ctrl+Enter means run#

ward86 <- st_read("data/ward1986/ward1986.shp")  #tab is a shortcut#

st_transform(ward86, "+proj=utm +zone=18 +datum=WGS84 +units=m +no_defs +ellps=WGS84 +towgs84=0,0,0")
ward86_utm <- st_transform(ward86,32616) #using epsg#
st_crs(ward86)
st_crs(ward86_utm)
ward86_eastplane <- st_transform(ward86,3435) #using epsg#
st_crs(ward86_eastplane)

plot(ward86)
plot(ward86_utm)
plot(ward86_eastplane)

library(usethis)
use_git_config(user.name = "lunarzeng", user.email = "lunarzeng@126.com")
hhh