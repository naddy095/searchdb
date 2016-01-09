class AddImageToPlaygrounds < ActiveRecord::Migration
  def change
    add_column :playgrounds, :image, :string
    add_column :playgrounds, :image1, :string
    add_column :playgrounds, :spam_details, :string
  end
end
