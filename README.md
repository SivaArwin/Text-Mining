# Text-Mining
The codes which is uploaded here is generally based on extracting the customer reviews of a travel website called tripadvisor, most of the websites doesn't provide their customer data but websites/platforms like tripadvisor, amazon, twitter,imdb, etc are much helpful for data science students, similarly all these data's can be processed and used for model validation as well as visualization, we can also perform sentimental analysis which I haven't done in this repository , these codes are used in various websites which works based on the html nodes and link which is specifically used as per user concern, all these reviews will be extracted and saved in text file format so that's it



library(rvest)
library(magrittr)
library(XML)
a<-10
rev<-NULL
url1<-"https://www.tripadvisor.in/Restaurant_Review-g297639-d1994810-Reviews"
url2<-"-Abba_Restaurant_and_Everest_German_Bakery-Varkala_Thiruvananthapuram_District_Ker.html"
for(i in 0:8){
  url<-read_html(as.character(paste(url1,i*a,url2,sep="")))
  ping<-url %>%
    html_nodes(".Each_entry") %>%
    html_text() 
  rev<-c(rev,ping)
}
rev
write.table(rev,"travel.txt")
