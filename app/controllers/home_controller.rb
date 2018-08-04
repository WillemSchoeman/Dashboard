class HomeController < ApplicationController
  def index
          
      
  end
  
  def prices
      require 'net/http'
      require 'json'
      
      @url = 'https://api.coinmarketcap.com/v1/ticker/?limit=500'
      @uri = URI(@url)
      @response = Net::HTTP.get(@uri)
      @all_coins = JSON.parse(@response) 
  end
  
  def search
      require 'net/http'
      require 'json'
      
      @url = 'https://api.coinmarketcap.com/v1/ticker/?limit=500'
      @uri = URI(@url)
      @response = Net::HTTP.get(@uri)
      @searched_coins = JSON.parse(@response)
      
      @symbol = params[:sym]
      
      # Add some simple error feedback
      
      if @symbol 
          @symbol = @symbol.upcase
      end
      
      if @symbol == ""
          @symbol = "Did you forget to add a currency?"
      end    
  end
  
  
  def about
  end
end
