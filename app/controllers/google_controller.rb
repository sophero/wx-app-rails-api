class GoogleController < ApplicationController

  def timezoneOffset
    url = "https://maps.googleapis.com/maps/api/timezone/json?location=#{params[:lat]},#{params[:lng]}&timestamp=#{params[:curTime]}&key=#{ENV['GOOGLE_MAPS_TIME_ZONE_API_KEY']}"
    body = RestClient.get(url)
    json = JSON.parse(body)
    toSend = {
      offset: json['dstOffset'] + json['rawOffset'],
      timezoneName: json['timeZoneName']
    }
    render json: toSend
  end

end
