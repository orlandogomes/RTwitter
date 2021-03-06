#Conectando o R com Twitter

#Instala��o da Biblioteca
install.packages("twitteR")
library("twitteR")

#Armazenando Chaves
key <- "API Key"
secret <- "API Secret"
token <- "Access Token"      
secretk <- "Access Token Secret"

#Conex�o API (selecionar op��o 1)
setup_twitter_oauth(key, secret, token, secretk)

#Tweets com a #Azure
azuretweets <- searchTwitter("#Azure", n = 100)
#Amostra
head(azuretweets)

#Tipo da Base
class(azuretweets)
#Tamanho da Base
length(azuretweets)

#Informa��o do Usu�rio 
myuser <- getUser('@seu_usuario')
#Data de Cria��o
myuser$created
#Descri��o
myuser$description
#Numero de Seguidores
myuser$followersCount

#Timeline do Usu�rio
mytime <- userTimeline('@seu_usuario')
head(mytime)

#Help da fun��o twitterR no R
?? twitteR