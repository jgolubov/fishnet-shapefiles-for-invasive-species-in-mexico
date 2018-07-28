# fishnet-shapefiles-for-invasive-species-in-mexico
This a is short R program to create fishnets based on INEGI 1:25,000 topographic maps of Mexico and create 5 x 5 minute fishnets. It was originally made in ArcView 3.2. We are working on a Java version that can be used directly in QGIS but that will take some time. Meanwhile this seems to work fine. You will need two input shapefiles, the first one is of the area you want to create a fishnet and the second has to come from the topographical maps of INEGI 1:25,000 of the area you want to fichnet. You usually have more than 1 1:25,000 topo map to fishnet into you specific polygon. I have added three files, the first one is of the Sierra Gorda Biosphere Reserve (RBSG) in Mexico, the corresponding 1:25,000 topographical maps form INEGI that correspond to the RBSG and a third map that was created with the original application for ArcView 3.0 by the Consejo Queretano de Recursos Naturales (Armando Bayona was in charge of this) just to make sure the fishnets had the same dimension, origin and such. I have also added a means of tagging each square in the new 5x5 min grid that follows a coding systema based on the original 1:25,000 maps. Now this is really experimental so dont make much of it
