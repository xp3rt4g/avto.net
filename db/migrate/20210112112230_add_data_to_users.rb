class AddDataToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :name, :string
    add_column :users, :seller_title, :string
    add_column :users, :address, :string
    add_column :users, :phone, :string
    add_column :users, :webpage, :string
    add_column :users, :account_type_id, :integer
    add_column :users, :town_id, :integer
    add_column :users, :tax_number, :string
  end
end
