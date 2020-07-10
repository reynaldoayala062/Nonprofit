class Project < ApplicationRecord
    belongs_to :nonprofit
    has_many :programmer_projects
    has_many :programmers, through: :programmer_projects
    has_many :category_projects
    has_many :categories, through: :category_projects
end
