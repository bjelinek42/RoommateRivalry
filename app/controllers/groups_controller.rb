class GroupsController < ApplicationController

  def show
    group = Group.find_by(id: params[:id])
    render json: group
  end

  def create
    group = Group.new_group(params)
    if group.save
      render json: { message: "group created successfully" }, status: :created
    else
      render json: { errors: group.errors.full_messages }, status: :bad_request
    end
  end

end
