class AddImageUrlToPostings < ActiveRecord::Migration[5.0]
  def change
    add_column :postings, :image_url, :string
  end
end
