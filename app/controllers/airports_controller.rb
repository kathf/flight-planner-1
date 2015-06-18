class AirportsController < ApplicationController

  def index
    @way = Way.find(params[:id])
    @stopovers = Route.stopover(@way.start_airport, @way.end_airport)
    render layout: false
  end

end
