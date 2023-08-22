# frozen_string_literal: true

module CoinTradingApi
  class CoinFetchData

    def trending_coins(currency = 'usd')
      render_response("/markets?vs_currency=#{currency}&order=gecko_desc&per_page=10&
        page=1&sparkline=false&price_change_percentage=24h")
    end

    def coin_list(currency = 'usd')
      render_response("/markets?vs_currency=#{currency}&order=market_cap_desc
        &per_page=100&page=1&sparkline=false")
    end

    def single_coin(id)
      render_response("/#{id}")
    end

    def historical_data(id = 'bitcoin', currency = 'usd', days = 365)
      render_response("/#{id}/market_chart?vs_currency=#{currency}&days=#{days}")
    end

    private

    def render_response(url_path)
      response = HTTParty.get(base_url + url_path)
    rescue StandardError => e
      { success: false, error: e }
    else
      { success: true, payload: response.parsed_response }
    end

    def base_url
      'https://api.coingecko.com/api/v3/coins'  
    end
  end
end
