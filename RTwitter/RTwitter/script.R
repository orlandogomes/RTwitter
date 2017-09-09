#Conectando o R com Twitter

#Instalação da Biblioteca
install.packages("twitteR")
library("twitteR")

#Armazenando Chaves
key <- "API Key"
secret <- "API Secret"
token <- "Access Token"      
secretk <- "Access Token Secret"

#Conexão API (selecionar opção 1)
setup_twitter_oauth(key, secret, token, secretk)

#Tweets com a #Azure
azuretweets <- searchTwitter("#Azure", n = 100)
#Amostra
head(azuretweets)

#Tipo da Base
class(azuretweets)
#Tamanho da Base
length(azuretweets)

#Informação do Usuário 
myuser <- getUser('@seu_usuario')
#Data de Criação
myuser$created
#Descrição
myuser$description
#Numero de Seguidores
myuser$followersCount

#Timeline do Usuário
mytime <- userTimeline('@seu_usuario')
head(mytime)

#Help da função twitterR no R
?? twitteR