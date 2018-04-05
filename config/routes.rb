Rails.application.routes.draw do
  # Handle requests to the URL path '/parse', passing them to the 'parse' controller and 'parse'
  # action
  get '/parse', to: 'parse#parse'
end
