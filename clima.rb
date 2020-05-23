require 'rest-client'   
require 'json'

dados = RestClient.get "api.openweathermap.org/data/2.5/weather?q=Natal&APPID=4aeb90d93a58763a4b59cc8316c14cc0"

dados = JSON.parse(dados.body)

puts dados 