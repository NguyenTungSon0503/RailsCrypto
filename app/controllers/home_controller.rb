class HomeController < ApplicationController
  def index #show infor 100 coins
    require 'net/http'
    require 'json'
    @url = 'https://pro-api.coinmarketcap.com/v1/cryptocurrency/listings/latest?CMC_PRO_API_KEY=fd04676f-2762-4500-9f39-c0290aa0c3c8&start=1&limit=100&convert=USD'
    @uri = URI(@url)
    @response = Net::HTTP.get(@uri)
    @coins = JSON.parse(@response)
    @my_coins = ["BTC","ETH","USDT","BNB","ADA"]
  end


  def lookup #search by symbol
    require 'net/http'
    require 'json'
    @url = 'https://pro-api.coinmarketcap.com/v1/cryptocurrency/listings/latest?CMC_PRO_API_KEY=fd04676f-2762-4500-9f39-c0290aa0c3c8&start=1&limit=100&convert=USD'
    @uri = URI(@url)
    @response = Net::HTTP.get(@uri)
    @lookup_coin = JSON.parse(@response)
    @input = params[:name_or_sym]
    @error = "Not found coin"
    @a = 0
    if @input 
      @input = @input.downcase
    end

  end
  def table #show table 100 rows
    require 'net/http'
    require 'json'
    @url = 'https://pro-api.coinmarketcap.com/v1/cryptocurrency/listings/latest?CMC_PRO_API_KEY=fd04676f-2762-4500-9f39-c0290aa0c3c8&start=1&limit=100&convert=USD'
    @uri = URI(@url)
    @response = Net::HTTP.get(@uri)
    @coins = JSON.parse(@response)
    @my_coins = ["BTC","ETH","USDT","BNB","ADA"]
    @details 
  end
end

