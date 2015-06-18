class Flight < ActiveRecord::Base
  belongs_to :route
  belongs_to :carrier
  belongs_to :way
end
