class CreateBookings < ActiveRecord::Migration[6.1]
  def change
    create_table :bookings do |t|
      t.references :user, null: false, foreign_key: true
      t.references :meme_creator_listings, null: false, foreign_key: true
      t.string :status
      t.string :date_booked
      t.string :hours_booked
      t.string :total_price

      t.timestamps
    end
  end
end
