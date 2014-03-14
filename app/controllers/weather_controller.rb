require 'open-uri' #Route, Controller, Action, View (RCAV)

class WeatherController < ApplicationController #names of classes are the only thing that are capitalized

  def conditions
    @city = params[:city] #must match input name on the page (see search.html)
    url = URI.escape("http://api.openweathermap.org/data/2.5/weather?q=#{@city}&units=imperial")
    @json_data = open(url).read # @sign makes it usable from other controllers (makes it global)
    @data = JSON.parse (@json_data)
                                # <%= is the syntax for ruby variable - look at conditions.html

  # url = "http://api.openweathermap.org/data/2.5/weather?q=#{city}&units=imperial"
  # safe_url = URI.escape(url)
  # json_data = open(safe_url).read
  # data = JSON.parse(json_data)
  # temperature = data['main']['temp'].to_i</p>


  end



end
