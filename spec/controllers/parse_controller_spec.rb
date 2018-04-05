require 'rails_helper'

RSpec.describe ParseController, type: :controller do
  render_views

  describe 'GET #parse' do
    context 'with a param for a url and an XPath' do
      let!(:params) {
        {
          url: 'somewebsite.com/data',
          xpath: '//*[@id="yDmH0d"]/div[4]/div[2]/div/div[2]'
        }
      }

      it 'returns a plain response with the contents of the node described by the XPath' do
        get :parse
        expect(response.body).to eq('123')
      end
    end
  end
end
