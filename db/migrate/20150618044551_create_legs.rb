class CreateLegs < ActiveRecord::Migration
  def change
    create_table :legs do |t|
      t.timestamp :departure
      t.timestamp :arrival
      t.integer :origin, as: :airport_id
      t.integer :destination, as: :airport_id    
      t.timestamps null: false
    end
  end
end
