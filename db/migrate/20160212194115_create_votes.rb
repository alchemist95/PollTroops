class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.references :person, index: true, foreign_key: true
      t.references :vote_option, index: true, foreign_key: true

      t.timestamps null: false
    end
  add_index :votes, [:vote_option_id, :person_id], unique: true  
  end
end
