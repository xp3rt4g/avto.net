class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :seller_title
      t.string :address
      t.string :phone
      t.string :email
      t.string :pass
      t.string :webpage
      t.integer :account_type_id
      t.integer :town_id
      t.integer :tax_number

      t.timestamps
    end
  end
end
