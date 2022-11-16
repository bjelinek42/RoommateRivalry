class GroupsController < ApplicationController

  def create
    group = Group.new_group(params)
    if group.save
      render json: { message: "group created successfully" }, status: :created
    else
      render json: { errors: group.errors.full_messages }, status: :bad_request
    end
  end

end
