class User < ApplicationRecord
  has_secure_password   #password and password_confirmation

  has_many :trips

end
