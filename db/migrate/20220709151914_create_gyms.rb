class CreateGyms < ActiveRecord::Migration[6.0]
  def change
    create_table :gyms do |t|

      t.string :name
      t.string :email
      t.string :city
      t.string :contact
      t.string :description
      t.string :fees
      t.string :owner_name
      
      t.timestamps
    end
  end
end
