class CreateMemeCreatorListings < ActiveRecord::Migration[6.1]
  def change
    create_table :meme_creator_listings do |t|
      t.string :creator_name
      t.string :speciality
      t.string :description
      t.integer :hourly_price
      t.references :user

      t.timestamps
    end
  end
end
