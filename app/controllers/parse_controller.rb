class ParseController < ApplicationController
  def parse
    response = HTTParty.get(params[:url])
    document = Nokogiri::HTML(response.body)
    result = document.xpath(params[:xpath])

    render body: result.text.strip
  end
end
