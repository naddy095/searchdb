class AddAttachmentToPlayGrounds < ActiveRecord::Migration
  def change
  	add_attachment :playgrounds, :logo
  	add_attachment :playgrounds, :picture
  end
end
