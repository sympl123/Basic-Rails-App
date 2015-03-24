class AddValueToVote < ActiveRecord::Migration
  def change
    add_column :votes, :value, :integer
      add_index :votes, :value
  end 
end
