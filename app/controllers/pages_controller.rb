class PagesController < ApplicationController
  def home
    location = JSON.parse(RestClient.get("https://reallyfreegeoip.org/json/90.84.73.13"))
    session[:current_latitude] = location["latitude"]
    session[:current_longitude] = location["longitude"]
  end
  def about
  end
end
