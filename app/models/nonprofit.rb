class Nonprofit < ApplicationRecord
    has_many :projects

    validates :name, presence: true
    validates :email, presence: true
    validates :phone, presence: true
    validates :address, presence: true
    validates :category, presence: true

end
