# Web Data Extraction, Web Harvesting etc.)
is a technique employed to extract large amounts of data from websites whereby the data is extracted and saved to a local file in your computer or to a database in table (spreadsheet) format.

# web scraping saves you the trouble of manually downloading or copying any data and automates the whole process.

# Data displayed by most websites can only be viewed using a web browser. 
They do not offer the functionality to save a copy of this data for personal use.
The only option then is to manually copy and paste the data - a very tedious job which can take many hours or sometimes days to complete. 
Web Scraping is the technique of automating this process, so that instead of manually copying the data from websites, 
the Web Scraping software will perform the same task within a fraction of the time.

# The problem with most generic web scraping software is that they are very difficult to setup and use. 
There is a steep learning curve involved. WebHarvy was designed to solve this problem. 
With a very intuitive, point and click interface, using WebHarvy you can start extracting data within minutes from any website.

install.packages("rvest")
install.packages("magrittr") 
install.Packages("XML") 
a = 10 # allocation of pages or counts u need to extract
rev = 10

Url1 = " paste your review page url here for extraction" 
Url2 = " Break the link into 2 and then assigning as url2 " 
for(i in 0:25){
url = read_html(as.character(paste(url1, i*a, url2, sep =''))) 
ping = url %>% 
html_nodes(" your Html Node")%>% 
html_text()

rev = c(rev, ping) } 

rev write.table(rev, " Your_text.txt")
