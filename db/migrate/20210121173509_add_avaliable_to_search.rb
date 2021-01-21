class AddAvaliableToSearch < ActiveRecord::Migration[6.0]
  def change
    add_column :searches, :avaliable, :integer
  end
end
