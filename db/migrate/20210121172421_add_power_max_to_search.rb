class AddPowerMaxToSearch < ActiveRecord::Migration[6.0]
  def change
    add_column :searches, :power_max, :integer
  end
end
