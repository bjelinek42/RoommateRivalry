class UsersController < ApplicationController
  
  def create
    user = User.new_user(params)
    if user.save
      render json: { message: "User created successfully" }, status: :created
    else
      render json: { errors: user.errors.full_messages }, status: :bad_request
    end
  end

  
end
