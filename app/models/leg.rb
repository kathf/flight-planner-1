class Leg < ActiveRecord::Base
  belongs_to :routes

  #picks one stopover (airport_id) from an array of possibilities
  def random_stopover(start, finish)
    array = Route.stopovers(start, finish)
    route_id = array[rand(array.size)]
    Route.find(route_id)
  end

  #not using this anymore I think
  def first_and_last_leg(start, finish)
    stopover = random_stopover(start, finish)
    Leg.create!(
      route_id: stopover.origin,
      departure: 4.weeks.from_now,
      arrival: 5.weeks.from_now
    )
  end

end
