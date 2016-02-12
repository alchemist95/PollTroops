class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :name
      t.string :image_url
      t.string :uid

      t.timestamps null: false
    end
    add_index :people, :uid
  end
 
end
