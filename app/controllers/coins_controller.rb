class CoinsController < ApplicationController
  def fetch_trending_coins
    @result =  CoinTradingApi::CoinFetchData.new.trending_coins
    render json: @result
  end

  def listed_coins
    @result = CoinTradingApi::CoinFetchData.new.coin_list
    render json: @result
  end

  def find_specific_coin
    @result = CoinTradingApi::CoinFetchData.new.single_coin(params[:id])
    render json: @result
  end

  def retrieve_historical_data
    @result = CoinTradingApi::CoinFetchData.new.historical_data
    render json: @result
  end
end
