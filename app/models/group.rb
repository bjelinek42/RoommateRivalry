class Group < ApplicationRecord
  has_many :users

  def self.new_group(params)
    group = Group.new(
      name: params[:name]
    )
    return group
  end

end
