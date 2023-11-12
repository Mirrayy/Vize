# Dosyayı İndirme 1.1
url <- "https://raw.githubusercontent.com/scizmeli/Red/master/MapsThatChangedOurWorld_StoryMap_Data.csv"
download.file(url, destfile = "MapsThatChangedOurWorld_StoryMap_Data.csv", mode = "wb")







# Dosyayı Okuma ve Data Frame Oluşturma
df <- read.csv("./MapsThatChangedOurWorld_StoryMap_Data.csv", sep = ";")

maps <- data.frame(df)






# Latitude sütunundaki "N" harflerini silme
maps$Latitude <- gsub("N", "", maps$Latitude)
maps$Latitude<-as.numeric(maps$Latitude)



# Longitude sütunundaki "W" harfi içeren satırların indekslerini bulma 1.4
idx <- grep("W", maps$Longitude)



# Longitude sütunundaki "E" ve "W" harflerini silme
maps$Longitude <- gsub("[EW]", "",maps$Longitude)


# Year sütunundaki "AD" harflerini silme
maps$Year <- gsub("AD","",maps$Year)





