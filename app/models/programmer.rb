class Programmer < ApplicationRecord
    has_many :programmer_projects
    has_many :projects, through: :programmer_projects

    validates :name, presence: true
    validates :email, presence: true
    validates :phone, presence: true
end
