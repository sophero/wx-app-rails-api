class WxController < ApplicationController

  def curWeather
    url = "https://api.darksky.net/forecast/#{ENV['DARK_SKY_API_KEY']}/#{params[:lat]},#{params[:lng]}"
    body = RestClient.get(url)
    json = JSON.parse(body)
    cur = json['currently']
    sunTimes = json['daily']['data'][0]
    toSend = {
      curWx: {
        temp: cur['temperature'],
        dewPoint: cur['dewPoint'],
        pressure: cur['pressure'],
        windBearing: cur['windBearing'],
        windSpeed: cur['windSpeed']
      },
      curTime: cur['time'],
      sunrise: sunTimes['sunriseTime'],
      sunset: sunTimes['sunsetTime'],
    }
    render json: toSend
  end

end
