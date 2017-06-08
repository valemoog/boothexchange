class AddVenmoUsernameToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :venmo_username, :string
  end
end
