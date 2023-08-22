class CoinsController < ApplicationController
  def fetch_trending_coins
    trending_coins =  CoinTradingApi::CoinFetchData.new.trending_coins
    render json: trending_coins
  end

  def listed_coins
    coins_listed = CoinTradingApi::CoinFetchData.new.coin_list
    render json: coins_listed
  end

  def find_specific_coin
    specific_coin_detail = CoinTradingApi::CoinFetchData.new.single_coin(params[:id])
    render json: specific_coin_detail
  end

  def retrieve_historical_data
    historical_data = CoinTradingApi::CoinFetchData.new.historical_data
    render json: historical_data
  end
end
