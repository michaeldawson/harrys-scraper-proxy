class CoinbaseController < ApplicationController
  URL = 'https://www.coinbase.com/api/v2/prices/USD/spot'

  def spot_prices
    response = HTTParty.get(URL)
    @prices = JSON.parse(response.body)['data']

    render layout: false
  end
end
