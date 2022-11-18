class AddGroupIdToBetsTable < ActiveRecord::Migration[7.0]
  def change
    add_column :bets, :group_id, :integer
  end
end
