####Esto es un cuadriculador

library(rgdal)
library(raster)
library(rgeos)
library(dismo)
library(sp)
library(sf)


###Load the shapefile

####Shapefile de la reserva de Metztitlan
RBmetztitlan <- readOGR("anpnov17gw.shp") 
plot(RBmetztitlan)

##Shapefile de la carta 1: 50,000 de INEGI de estado de Hidalgo
cartas.1.50000 <- readOGR("15x20_hidalgo.shp")
plot(cartas.1.50000)
plot(RBmetztitlan,add=TRUE)
####Check coordinate reference system
crs(cartas.1.50000)
crs(RBmetztitlan)

##Assign coordinate reference system
#proj4string(cartas.1.50000)<-proj4string(RBmetztitlan)
#crs(cartas.1.50000)
#Clipping


plot(cartas.1.50000)
grid.5x5 <- raster(extent(cartas.1.50000))
res(grid.5x5) <- 0.0833333

proj4string(grid.5x5)<-proj4string(RBmetztitlan)
gridpolygon <- rasterToPolygons(grid.5x5)
plot(gridpolygon)
plot(RBmetztitlan,add=TRUE)


####Esto intersecta los cuadros de la cuadricula de 5x5 y la reserva
dry.grid <- intersect(gridpolygon, RBmetztitlan)
plot(dry.grid,col="blue")

####Esta seccion selecciona los cuadros del mapa de 5x5 que se encuentran en la reserva
poligonos.completos <-gridpolygon[dry.grid,]
plot(poligonos.completos)
plot(poligonos.completos,col="blue")
plot(RBmetztitlan,add=TRUE)




####Este es la salida del programa reticular que sabemos si funciona.
carta5x5.reticular <- readOGR(choose.files())
#carta5x5.reticular <- crs("+proj=longlat +datum=WGS84 +no_defs +ellps=WGS84 +towgs84=0,0,0")
str(carta5x5.reticular)
plot(carta5x5.reticular,add=TRUE,col="red")





