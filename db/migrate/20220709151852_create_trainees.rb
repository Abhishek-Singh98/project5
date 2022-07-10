class CreateTrainees < ActiveRecord::Migration[6.0]
  def change
    create_table :trainees do |t|
      t.string :name
      t.string :email
      t.string :city
      t.string :contact
      t.string :description

      t.timestamps
    end
  end
end
