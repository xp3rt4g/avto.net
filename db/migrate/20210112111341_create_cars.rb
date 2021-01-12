class CreateCars < ActiveRecord::Migration[6.0]
  def change
    create_table :cars do |t|
      t.integer :user_id
      t.integer :model_id
      t.string :type
      t.integer :car_type_id
      t.integer :vehicle_status_id
      t.boolean :has_warranty
      t.boolean :has_guarranty
      t.boolean :oldtimer
      t.date :first_registration
      t.integer :manufacture_year, limit: 4
      t.date :inspection_expiry
      t.integer :mileage
      t.integer :number_of_owner_id
      t.string :vin
      t.integer :price
      t.boolean :cash_discount
      t.boolean :last_price
      t.boolean :driveable
      t.boolean :damaged
      t.boolean :crashed
      t.boolean :service_book
      t.boolean :slovenian
      t.boolean :garaged
      t.boolean :never_crashed
      t.integer :fuel_type_id
      t.integer :gearbox_id
      t.integer :power
      t.integer :ccm
      t.integer :doors, limit: 1
      t.integer :seats
      t.integer :color_id
      t.boolean :metallic
      t.decimal :consumption
      t.boolean :abs
      t.boolean :fourwheel
      t.integer :airbags
      t.boolean :xenon
      t.boolean :led
      t.boolean :automatic_lights
      t.boolean :alarm
      t.boolean :headup
      t.boolean :emergency_brake
      t.boolean :ac
      t.boolean :digital_ac
      t.boolean :keyless_go
      t.boolean :start_stop
      t.boolean :cruise_control
      t.boolean :electric_parking_brake
      t.boolean :cd_player
      t.boolean :mp3_player
      t.boolean :usb
      t.boolean :dab
      t.boolean :navigation
      t.boolean :rear_camera
      t.boolean :towing_hook
      t.boolean :hill_assist
      t.boolean :pdc
      t.text :comment
      t.boolean :avaliable

      t.timestamps
    end
  end
end
