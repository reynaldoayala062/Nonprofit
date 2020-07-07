class Programmer < ApplicationRecord
    has_many :programmer_projects
    has_many :projects, through: :programmer_projects
end
