class Route < ActiveRecord::Base
  belongs_to :origin, class_name: "Airport", foreign_key: 'origin_id'
  belongs_to :destination, class_name: "Airport", foreign_key: 'destination_id'
  belongs_to :carrier
  has_many :legs

  validates :destination_id, :origin_id, :carrier_id, presence: true

  #returns an array of airport ids which connects the start airport and finish airport (entered as ids)
  def self.stopovers(start, finish)
    airport_array = where('origin_id = ?', start).pluck(:destination_id) & where('destination_id = ?', finish).pluck(:origin_id)
    if airport_array.empty?
      ["No stopovers for this selection"]
    else
      return airport_array
    end
  end

end
