class UsersController < ApplicationController
  
  def show
    user = User.find_by(id: current_user.id)
    render json: user
  end

  def create
    user = User.new_user(params)
    if user.save
      render json: { message: "User created successfully" }, status: :created
    else
      render json: { errors: user.errors.full_messages }, status: :bad_request
    end
  end

  def update
    user = User.update_user(params)
    if user.save
      render json: { message: "User updated successfully" }, status: :accepted
    else
      render json: { errors: user.errors.full_messages }, status: :bad_request
    end
  end

end
