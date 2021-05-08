class Addstatus < ActiveRecord::Migration[6.1]
  def change
    add_column :orders, :status, :integer, :after => "note", :default => 0
    #Ex:- :default =>''
    #Ex:- add_column("admin_users", "username", :string, :limit =>25, :after => "email")
  end
end
