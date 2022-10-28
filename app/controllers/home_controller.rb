class HomeController < ApplicationController
  def index
   require 'net/http'
    require 'json'
    @url = 'https://pro-api.coinmarketcap.com/v1/cryptocurrency/listings/latest?CMC_PRO_API_KEY=fd04676f-2762-4500-9f39-c0290aa0c3c8&start=1&limit=5000&convert=USD'
    @uri = URI(@url)
    @response = Net::HTTP.get(@uri)
    @coins = JSON.parse(@response)
    @my_coins = ["BTC","ETH","USDT","BNB",]
  end
  def about

  end
end
