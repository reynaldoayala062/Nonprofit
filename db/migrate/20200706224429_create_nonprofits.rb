class CreateNonprofits < ActiveRecord::Migration[6.0]
  def change
    create_table :nonprofits do |t|

      t.string :name
      t.string :email
      t.string :address
      t.integer :phone
      t.string :category 

      t.timestamps 
    end
  end
end
