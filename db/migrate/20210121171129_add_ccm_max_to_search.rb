class AddCcmMaxToSearch < ActiveRecord::Migration[6.0]
  def change
    add_column :searches, :ccm_max, :integer
  end
end
