require 'rails_helper'

RSpec.describe ParseController, type: :controller do
  render_views

  describe 'GET #parse' do
    context 'with a param for a url and an XPath' do
      let!(:params) {
        {
          url: 'https://somewebsite.com/data',
          xpath: '/html/body/div/div'
        }
      }

      context 'when our website returns data' do
        let(:stubbed_body) {
          <<~HTML
            <html>
              <body>
                <div>
                  <div>I hold the magic data</div>
                </div>
              </body>
            </html>
          HTML
        }
        before { stub_request(:get, params[:url]).to_return(body: stubbed_body) }

        it 'returns a plain response with the contents of the node described by the XPath' do
          get :parse, params: params
          expect(response.body).to eq('I hold the magic data')
        end
      end
    end
  end
end
