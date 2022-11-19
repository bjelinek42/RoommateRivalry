class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: true

  has_many :user_groups
  has_many :groups, through: :user_groups

  def self.new_user(params)
    user = User.new(
      name: params[:name],
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:password_confirmation]
    )
    return user
  end

  def self.update_user(params)
    user = User.find_by(id: [params[:id]])
    p user, "*******"
    user.group_id = params[:group_id] || user.group_id
    return user
  end

end
