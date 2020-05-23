require 'rest-client'   
require 'json'

dados = RestClient.get "https://olinda.bcb.gov.br/olinda/servico/PTAX/versao/v1/odata/CotacaoDolarPeriodo(dataInicial=@dataInicial,dataFinalCotacao=@dataFinalCotacao)?@dataInicial=%2705-22-2020%27&@dataFinalCotacao=%2705-23-2020%27&$top=100&$format=json"

dados = JSON.parse(dados.body)

puts dados.fetch("value")