class User < ApplicationRecord
has_secure_password
validates :email, presence: true, uniqueness: true

def self.new_user(params)
  user = User.new(
    name: params[:name],
    email: params[:email],
    password: params[:password],
    password_confirmation: params[:password_confirmation]
  )
  return user
end

end
