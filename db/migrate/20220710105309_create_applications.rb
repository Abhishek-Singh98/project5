class CreateApplications < ActiveRecord::Migration[6.0]
  def change
    create_table :applications do |t|
      t.string :status
      t.timestamps
      t.belongs_to :trainee
      t.belongs_to :trainer
      t.belongs_to :gym
    end
  end
end
