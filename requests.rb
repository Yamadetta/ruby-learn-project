require "faraday"
require "json"

response = JSON.parse(Faraday.get("https://rickandmortyapi.com/api/character").body)

names = response["results"].map { |item| item["name"] }

puts names.inspect
