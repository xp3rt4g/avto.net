class RenameTypeToName < ActiveRecord::Migration[6.0]
  def change
    rename_column :cars, :type, :name
  end
end
