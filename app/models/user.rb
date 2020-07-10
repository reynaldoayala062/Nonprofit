class User < ApplicationRecord
    has_secure_password

    validates :password, presence: true, length: 6..20 
    validates :username, uniqueness: true
end
