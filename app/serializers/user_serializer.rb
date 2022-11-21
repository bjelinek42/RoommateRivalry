class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :bets
  has_many :user_groups

  def bets
    user_groups = UserGroup.where(user_id: current_user.id)
    bets = {}
    user_groups.each do |ug|
      group = Group.find_by(id: ug.group_id)
      bets[group.name] = Bet.where(group_id: ug.group_id)
    end
    return bets
  end
  

end
