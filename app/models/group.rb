class Group < ApplicationRecord

  def self.new_group(params)
    group = Group.new(
      name: params[:name]
    )
    return group
  end

end
