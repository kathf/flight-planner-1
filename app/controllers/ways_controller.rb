class WaysController < ApplicationController

  def index
    @way ||= Way.create!(start_airport: 'SYD', end_airport: 'SYD',start_date: 4.weeks.from_now, end_date: 6.weeks.from_now)
    @airports = Airport.all
  end

  def update
    @way = Way.find(params[:id])
    if @way.update_attributes(way_params)
    else
      redirect_to ways_path, notice: "Update failed"
    end
  end

  private

  def way_params
    params.require(:way).permit(:start_airport, :end_airport, :start_date, :end_date)
  end

end
