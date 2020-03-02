class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :title, null: false
      t.date :date, null: false
      t.time :start_time
      t.time :end_time
      t.integer :fee
      t.references :venue, foreign_key: true
      t.references :organizer, null: false, foreign_key: { to_table: :users }
      t.timestamps
    end
  end
end
