class RemoveColumnEmail < ActiveRecord::Migration[7.0]
  def change
    remove_column :users, :email_address
  end
end
