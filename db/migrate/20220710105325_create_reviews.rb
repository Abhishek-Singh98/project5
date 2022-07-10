class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.string :description
      t.timestamps
      t.belongs_to :application
      t.belongs_to :gym
      t.belongs_to :trainer
    end
  end
end
