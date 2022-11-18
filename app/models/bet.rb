class Bet < ApplicationRecord

  def self.new_bet(params)
    bet = Bet.new(
      title: params[:title],
      description: params[:description],
      wager_object: params[:wager_object],
      wager_amount: params[:wager_amount],
    )
    return bet
  end

end
