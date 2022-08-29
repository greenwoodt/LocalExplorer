class AddColumnToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :username, :string
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :description, :text
    add_column :users, :drivers_license, :string
    add_column :users, :email_address, :string
  end
end
