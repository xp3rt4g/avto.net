class AddManufacturerIdToSearch < ActiveRecord::Migration[6.0]
  def change
    add_column :searches, :manufacturer_id, :integer
  end
end
