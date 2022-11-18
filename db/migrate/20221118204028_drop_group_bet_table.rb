class DropGroupBetTable < ActiveRecord::Migration[7.0]
  def change
    drop_table :group_bets
  end
end
