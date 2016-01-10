
setwd("C:/repoGit/ADA2015/Lectura")

PACKAGES<- read.table("Paquetes.txt")
#Cargar los paquetes necesarios si éstos no han sido cargados.
for (package in PACKAGES ) {
paquete<-toString(package)
  if (!require(paquete, character.only=T, quietly=T)) {
     #Instalar   
    install.packages(paquete)
    #Cargar     
    library(paquete, character.only = TRUE)
  }
}

#Establecer el directorio de trabajo.
setwd("C:/repoGit/ADA2015/Lectura")

FILES<- read.table("FILES_DESC.txt")


#Validar la existencia y crear un directorio de descarga
if( !file.exists("C:/repoGit/ADA2015/Lectura") ) {.....
  dir.create(file.path("C:/repoGit/ADA2015/Lectura"), recursive=TRUE) 
  if( !dir.exists("C:/repoGit/ADA2015/Lectura") ) {
    stop("No existe directorio")
  }
}

#Si el archivo no está presente en el directorio de datos deberá buscarse en el directorio de descarga, si no está presente deberá descargarse.
#Una vez descargado el archivo, y ya presente en el sistema deberá descompactarse dejando el archivo de datos en el directorio apropiado. 
for( varFile in FILES ){
		x<-toString(varFile)
		xgz<-paste(toString(varFile),"gz",sep=".")
	  # Se valida si el archivo descompactado ya existe en el ??rea de datos.
	  if( ! file.exists(x)) {
		# Si no existe se busca el archivo compactado en el ??rea de descarga.
		if( ! file.exists( x) ){
		  #URL <- "http://www1.ncdc.noaa.gov/pub/data/swdi/stormevents/csvfiles/StormEvents_fatalities-ftp_v1.0_d1950_c20150826.csv.gz"
		  URL <- "http://www1.ncdc.noaa.gov/pub/data/swdi/stormevents/csvfiles"
		  URLCompleta<-paste(URL,xgz,sep="/")
		  download.file(URLCompleta,destfile=xgz,method="libcurl")
		}
		gunzip(  xgz )
  }
}


if( exists("Fatalities") ){
    rm(Fatalities)
}

FILES_DESC<- read.table("FILES_DESC.txt")
# Todos los archivos se fusionan en la estructura de datos Fatalities
for( fileDesc in FILES_DESC ){
	xDesc<-toString(fileDesc)
    if( !exists("Fatalities" ) ) {
        Fatalities<-read.csv( xDesc, header=T, sep=",", na.strings="")
    } 
    else {
        data<-read.csv(xDesc, header=T, sep=",", na.strings="")
        Fatalities<-rbind(Fatalities,data)
    }
}
#Eliminar la variable temporal.
rm(data)

#Mostrar en pantalla todos los datos.
print(Fatalities)