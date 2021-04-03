class CreateTours < ActiveRecord::Migration[6.1]
  def change
    create_table :tours do |t|
      t.references :categories, null: false, foreign_key: true
      t.string :name
      t.string :img
      t.string :desc
      t.integer :price
      t.integer :rating
      t.integer :day
      t.timestamps
    end
  end
end
