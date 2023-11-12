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




maps$Longitude<-as.numeric(maps$Longitude)
maps$Latitude<-as.numeric(maps$Latitude)







# Year sütununu sayısal tipe çevirme (Eğer daha önce yapılmadıysa)
maps$Year <- as.numeric(gsub("AD", "", maps$Year))

# Histogram çizme
#hist(maps$Year, breaks = 10, main = "Histogram of Years", xlab = "Year", ylab = "Frequency", col = "skyblue", border = "black")





# idx değişkeninde adı geçen satırların değerlerini -1 ile çarpma
maps$Longitude[idx] <- maps$Longitude[idx] * -1
