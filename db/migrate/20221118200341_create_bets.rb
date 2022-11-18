class CreateBets < ActiveRecord::Migration[7.0]
  def change
    create_table :bets do |t|
      t.string :title
      t.string :description
      t.string :wager_object
      t.integer :wager_amount
      t.string :winner

      t.timestamps
    end
  end
end
