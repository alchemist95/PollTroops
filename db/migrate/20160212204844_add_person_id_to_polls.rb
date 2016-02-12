class AddPersonIdToPolls < ActiveRecord::Migration
  def change
    add_column :polls, :person_id, :integer
  end
end
