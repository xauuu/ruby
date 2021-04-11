class RemoveRefrences < ActiveRecord::Migration[6.1]
  def change
    remove_column :tours, :categories_id
    add_reference :tours, :category, index: true, foreign_key: true
  end
end
