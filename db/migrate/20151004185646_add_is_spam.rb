class AddIsSpam < ActiveRecord::Migration
  def change
  	add_column :playgrounds, :is_spam, :boolean
  end
end
