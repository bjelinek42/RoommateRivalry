class Group < ApplicationRecord
  has_many :users
  has_many :bets

  def self.new_group(params)
    group = Group.new(
      name: params[:name]
    )
    return group
  end

end
