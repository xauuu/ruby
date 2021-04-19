class AddColumn < ActiveRecord::Migration[6.1]
  def change
    add_column :blogs, :view, :integer, default: 1, :after => "desc"
    #Ex:- add_column("admin_users", "username", :string, :limit =>25, :after => "email")
  end
end
