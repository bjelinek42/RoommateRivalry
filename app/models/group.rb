class Group < ApplicationRecord
  has_many :user_groups
  has_many :users, through: :user_groups
  has_many :bets

  def self.new_group(params)
    group = Group.new(
      name: params[:name]
    )
    return group
  end

end
