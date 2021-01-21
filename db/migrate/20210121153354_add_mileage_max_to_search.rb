class AddMileageMaxToSearch < ActiveRecord::Migration[6.0]
  def change
    add_column :searches, :mileage_max, :integer
  end
end
