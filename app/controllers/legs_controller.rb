class LegsController < ApplicationController

  def index
    @leg = Leg.create!(origin: 146, destination: 2669, departure: 4.weeks.from_now, arrival: 6.weeks.from_now)
    @airports = Airport.all
    @stopovers = Route.stopovers(@leg.origin, @leg.destination)
  end

  def update
    @leg = Leg.find(params[:id])
    if @leg.update_attributes(leg_params)
    else
      redirect_to legs_path, notice: "Update failed"
    end
  end

  private

  def way_params
    params.require(:leg).permit(:origin, :destination, :departure, :arrival)
  end

end
