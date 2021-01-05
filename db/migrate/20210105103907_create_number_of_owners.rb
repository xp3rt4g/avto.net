class CreateNumberOfOwners < ActiveRecord::Migration[6.0]
  def change
    create_table :number_of_owners do |t|
      t.string :name

      t.timestamps
    end
  end
end
