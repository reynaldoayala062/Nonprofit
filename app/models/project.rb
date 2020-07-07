class Project < ApplicationRecord
    belongs_to :user
    has_many :programmer_projects
    has_many :programmer, through: :programmer_projects
    has_many :category_projects
    has_many :category, through: :category_projects
end
