class AddColumnToPlayground < ActiveRecord::Migration
  def change
  	add_column :playgrounds, :place_id, :string
  end
end
