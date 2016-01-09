class CreatePlaygrounds < ActiveRecord::Migration
  def self.up
    create_table :playgrounds do |t|
      t.string :name
      t.string :address
      t.float :latitude
      t.float :longitude
      t.string :street_number
      t.string :route
      t.string :city
      t.string :state
      t.string :country
      t.string :postal_code
      t.string :address_bar_index
      t.boolean :gmaps
      t.integer :myadd_type_id
      t.string :hint
      t.references :user
      t.date :myadd_added_date
      t.date :myadd_approved_date
      t.integer :status_id
      t.integer :created_by
      t.integer :last_updated_by
      t.timestamps
    end
  end

  def self.down
    drop_table :playgrounds do |t|
      t.string :name
      t.string :address
      t.float :latitude
      t.float :longitude
      t.string :street_number
      t.string :route
      t.string :city
      t.string :state
      t.string :country
      t.string :postal_code
      t.string :address_bar_index
      t.boolean :gmaps
      t.integer :myadd_type_id
      t.string :hint
      t.integer :user_id
      t.date :myadd_added_date
      t.date :myadd_approved_date
      t.integer :status_id
      t.integer :created_by
      t.integer :last_updated_by
      t.timestamps
    end
  end

end
