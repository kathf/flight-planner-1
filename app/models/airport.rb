class Airport < ActiveRecord::Base
  has_one :origin, class_name: 'Route', foreign_key: 'origin_id'
  has_one :destination, class_name: 'Route', foreign_key: 'destination_id'
end
