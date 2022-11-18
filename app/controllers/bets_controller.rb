class BetsController < ApplicationController

  def create
    if current_user
      bet = Bet.new_bet(params, current_user.group_id)
      if bet.save
        render json: { message: "Bet created successfully" }, status: :created
      else
        render json: { errors: bet.errors.full_messages }, status: :bad_request
      end
    else
      render json: "You must be logged in to create a bet"
    end
  end

end
