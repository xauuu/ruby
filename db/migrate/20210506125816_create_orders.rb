class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.references :user, null: false, foreign_key: true
      t.references :tour, null: false, foreign_key: true
      t.string :name
      t.string :phone
      t.string :date
      t.string :address
      t.string :email
      t.string :note
      t.timestamps
    end
  end
end
