class CreateRoutes < ActiveRecord::Migration
  def change
    create_table :routes do |t|
      t.string :destination
      t.string :origin
      t.timestamps null: false
    end
  end
end
