class CreatePostings < ActiveRecord::Migration[5.0]
  def change
    create_table :postings do |t|
      t.string :name
      t.date :date
      t.integer :price
      t.integer :user_id
      t.integer :event_id
      t.integer :location_id
      t.time :time
      t.string :description

      t.timestamps

    end
  end
end
