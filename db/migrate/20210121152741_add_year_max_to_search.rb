class AddYearMaxToSearch < ActiveRecord::Migration[6.0]
  def change
    add_column :searches, :year_max, :integer
  end
end
