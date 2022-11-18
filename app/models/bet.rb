class Bet < ApplicationRecord
  belongs_to :group

  def self.new_bet(params, group_id)
    bet = Bet.new(
      title: params[:title],
      description: params[:description],
      wager_object: params[:wager_object],
      wager_amount: params[:wager_amount],
      group_id: group_id
    )
    return bet
  end

end
