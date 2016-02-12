class AddPersonIdToVotes < ActiveRecord::Migration
  def change
    add_column :votes, :person_id, :integer
  end
end
