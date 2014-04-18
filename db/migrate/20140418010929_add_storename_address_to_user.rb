class AddStorenameAddressToUser < ActiveRecord::Migration
  def change
    add_column :users, :storename, :string
    add_column :users, :address, :string
  end
end
