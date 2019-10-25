# Text-Mining
#####The codes which is uploaded here is generally based on extracting the customer reviews of a travel website called tripadvisor, most of the websites doesn't provide their customer data but websites/platforms like tripadvisor, amazon, twitter,imdb, etc are much helpful for data science students, similarly all these data's can be processed and used for model validation as well as visualization, we can also perform sentimental analysis which I haven't done in this repository , these codes are used in various websites which works based on the html nodes and link which is specifically used as per user concern, all these reviews will be extracted and saved in text file format which is later used as for analysis and hence this mining technique is very useful for sorting out the business solutions, it also helps us to identify the customer needs as well as the trend which is used for the betterment of future prediction of products, raw materials, Budget, etc.....The codes which is represented below is a simple code which I personally recommend you for extracting any kind of text in specific webistes as per user defined..##################### 

Issues which you will face while running it :::::::::::::: 
1) While extracting the reviews you wont get full extracted review...to fix this we are using a chrome extension called selector gadget... it helps to select and acquire the proper html nodes which consists of texts and other special characters.
2 ) there are multiple Scrapping tools which is available as an extension in chrome most of the websites are encrypted but few websites are very helpful in order to get text analysis done.
3) follow the codes which I have given below, #I have learned this code from my instructor and made few changes to make it more efficient 
4) most of the people will suggest you to get the html nodes from developer console tool or window whatever.... but it wont extract you the text properly I mean it will extract but in a improper way or mostly it wont extract the text fully, that's why I use Selector gadget

Lets get our Hands-on 

install.packages("rvest")
install.packages("magrittr")
install.Packages("XML")
a = 10
rev = 10
Url1 = " paste your review page url here for extraction"
Url2 = " Break the link into 2 and then assigning as url2 "
for(i in 0:25){ 
  url = read_html(as.character(paste(url1, i*a, url2, sep ='')))
  ping = url %>%
    html_nodes(" your Html Node")%>%
    html_text()
    
   rev = c(rev, ping)
   }
   rev
   write.table(rev, " Your_text.txt")
   
  
  
  
  How to Use selector Gadget :
  1) go to chrome extension store and then search for selector gadget and then add it 
  2) go to website which you need to extract the html ie (text) ...
  3) click on the review or rating or whatever text you need 
  4) Now click on the selector gadget , now one box like cursor will appear you need to select the text which is shown below as review or whateever you need to scrap...after clicking it the box will be highlighted in green color, if it is done leave it if it shows in red color you have reselect it 
  5) after this on the rightside (bottom of the page) you will see a tab in that you will a text "" click and copy it and that is your html node.
  6) you are done now 
  
  for loop is most important i have assigned and scrapped for just 25 pages 
  due to my computer spec "LOOOL"...
  
