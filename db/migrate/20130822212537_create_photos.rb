class CreatePhotos < ActiveRecord::Migration
  def change
  	create_table :photos do |t|
 	   t.belongs_to :album
 	   t.string     :image
 	   t.string     :title
 	   
 	   t.timestamps
  	end
  end
end
