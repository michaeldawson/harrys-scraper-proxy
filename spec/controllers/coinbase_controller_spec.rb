require 'rails_helper'

RSpec.describe CoinbaseController do
  render_views

  describe '#spot_prices' do
    context 'when the coinbase API returns some spot prices' do
      let(:stubbed_body) {
        {
          'data' => [
            { 'base' => 'BTC', 'currency' => 'USD', 'amount' => '8060.48' },
            { 'base' => 'BCH', 'currency' => 'USD', 'amount' => '756.61' },
            { 'base' => 'ETH', 'currency' => 'USD', 'amount' => '512.26' },
            { 'base' => 'LTC', 'currency' => 'USD', 'amount' => '130.67' },
            { 'base' => 'EUR', 'currency' => 'USD', 'amount' => '1.23' },
            { 'base' => 'GBP', 'currency' => 'USD', 'amount' => '1.43' },
            { 'base' => 'CAD', 'currency' => 'USD', 'amount' => '0.80' }
          ]
        }
      }
      before { stub_request(:get, CoinbaseController::URL).to_return(body: stubbed_body.to_json) }

      # Just a smoke test to make sure it's rendering
      it 'renders a view with the results' do
        get :spot_prices
        expect(response.body).to include('BTC')
        expect(response.body).to include('8060.48')
      end
    end
  end
end
