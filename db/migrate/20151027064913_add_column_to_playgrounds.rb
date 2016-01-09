class AddColumnToPlaygrounds < ActiveRecord::Migration
  def change
  	add_column :playgrounds, :myadd_type, :string
  end
end
