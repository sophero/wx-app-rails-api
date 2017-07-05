Rails.application.routes.draw do

  get '/api/wx', to: 'wx#curWeather'
  get '/api/timezone_offset', to: 'google#timezoneOffset'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
