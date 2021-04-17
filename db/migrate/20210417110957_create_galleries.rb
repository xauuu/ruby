class CreateGalleries < ActiveRecord::Migration[6.1]
  def change
    create_table :galleries do |t|
      t.references :tour, null: false, foreign_key: true
      t.string :img
      t.timestamps
    end
  end
end
