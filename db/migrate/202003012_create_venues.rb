class CreateVenues < ActiveRecord::Migration[5.2]
  def change
    create_table :venues do |t|
      t.string :name
      t.string :latitude
      t.string :longitude
      t.string :url
      t.string :shop_image1
      t.string :shop_image2
      t.string :address
      t.string :tel
      t.string :opening_hours
      t.string :nearest_station
      t.integer :minutes_on_foot
      t.string :shop_description
      t.integer :party_fee
      t.timestamps
    end
  end
end