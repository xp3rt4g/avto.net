class AddPriceMaxToSearch < ActiveRecord::Migration[6.0]
  def change
    add_column :searches, :price_max, :integer
  end
end
