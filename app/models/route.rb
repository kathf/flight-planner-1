class Route < ActiveRecord::Base
  has_many :flight
  has_and_belongs_to_many :airports

  def self.stopover(start, finish)
    where('origin = ?', start).pluck(:destination) && where('destination = ?', finish).pluck(:origin)
  end
end
