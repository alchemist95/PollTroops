class CreatePolls < ActiveRecord::Migration
  def change
    create_table :polls do |t|
      t.text :topic
      t.string :category

      t.timestamps null: false
    end
  end
end
