class CreateProgrammerProjects < ActiveRecord::Migration[6.0]
  def change
    create_table :programmer_projects do |t|
      t.integer :programmer_id
      t.integer :project_id

      t.timestamps
    end
  end
end
