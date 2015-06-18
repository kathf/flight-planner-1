class Way < ActiveRecord::Base
  has_many :flights

  def first_way
    @way = Way.create!(start_airport: 'SYD', end_airport: 'SYD',start_date: 4.weeks.from_now, end_date: 6.weeks.from_now)
    return Way.last.id
  end

end
