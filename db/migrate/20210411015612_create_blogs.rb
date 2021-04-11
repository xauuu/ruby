class CreateBlogs < ActiveRecord::Migration[6.1]
  def change
    create_table :blogs do |t|
      t.references :blog_category, null: false, foreign_key: true
      t.string :title
      t.string :img
      t.string :date
      t.text :desc
      t.text :content
      t.timestamps
    end
  end
end
