class CreateMessages < ActiveRecord::Migration[5.0]
  def change
    create_table :messages do |t|
      t.integer :user_id
      t.integer :posting_id
      t.integer :conversation_id
      t.string :body

      t.timestamps

    end
  end
end
