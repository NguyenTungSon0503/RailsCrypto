class HomeController < ApplicationController
  def index
    require 'net/http'
    require 'json'
    @url = 'https://pro-api.coinmarketcap.com/v1/cryptocurrency/listings/latest?CMC_PRO_API_KEY=YOURKEYHERE&start=1&limit=5000&convert=USD'
    @uri = URI(@url)
    @response = NET::HTTP.get(@uri)
    @coins = JSON.parse(@response)
  end
  
  def about
  end
end
