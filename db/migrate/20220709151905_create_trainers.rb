class CreateTrainers < ActiveRecord::Migration[6.0]
  def change
    create_table :trainers do |t|

      t.string :name
      t.string :email
      t.string :city
      t.string :experience
      t.string :fees
      t.string :description
      
      t.timestamps
    end
  end
end
