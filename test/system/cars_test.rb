require "application_system_test_case"

class CarsTest < ApplicationSystemTestCase
  setup do
    @car = cars(:one)
  end

  test "visiting the index" do
    visit cars_url
    assert_selector "h1", text: "Cars"
  end

  test "creating a Car" do
    visit cars_url
    click_on "New Car"

    check "Abs" if @car.abs
    check "Ac" if @car.ac
    fill_in "Airbags", with: @car.airbags
    check "Alarm" if @car.alarm
    check "Automatic lights" if @car.automatic_lights
    check "Avaliable" if @car.avaliable
    fill_in "Car type", with: @car.car_type_id
    check "Cash discount" if @car.cash_discount
    fill_in "Ccm", with: @car.ccm
    check "Cd player" if @car.cd_player
    fill_in "Color", with: @car.color_id
    fill_in "Comment", with: @car.comment
    fill_in "Consumption", with: @car.consumption
    check "Crashed" if @car.crashed
    check "Cruise control" if @car.cruise_control
    check "Dab" if @car.dab
    check "Damaged" if @car.damaged
    check "Digital ac" if @car.digital_ac
    fill_in "Doors", with: @car.doors
    check "Driveable" if @car.driveable
    check "Electric parking brake" if @car.electric_parking_brake
    check "Emergency brake" if @car.emergency_brake
    fill_in "First registration", with: @car.first_registration
    check "Fourwheel" if @car.fourwheel
    fill_in "Fuel type", with: @car.fuel_type_id
    check "Garaged" if @car.garaged
    fill_in "Gearbox", with: @car.gearbox_id
    check "Has guarranty" if @car.has_guarranty
    check "Has warranty" if @car.has_warranty
    check "Headup" if @car.headup
    check "Hill assist" if @car.hill_assist
    fill_in "Inspection expiry", with: @car.inspection_expiry
    check "Keyless go" if @car.keyless_go
    check "Last price" if @car.last_price
    check "Led" if @car.led
    fill_in "Manufacture year", with: @car.manufacture_year
    check "Metallic" if @car.metallic
    fill_in "Mileage", with: @car.mileage
    fill_in "Model", with: @car.model_id
    check "Mp3 player" if @car.mp3_player
    check "Navigation" if @car.navigation
    check "Never crashed" if @car.never_crashed
    fill_in "Number of owner", with: @car.number_of_owner_id
    check "Oldtimer" if @car.oldtimer
    check "Pdc" if @car.pdc
    fill_in "Power", with: @car.power
    fill_in "Price", with: @car.price
    check "Rear camera" if @car.rear_camera
    fill_in "Seats", with: @car.seats
    check "Service book" if @car.service_book
    check "Slovenian" if @car.slovenian
    check "Start stop" if @car.start_stop
    check "Towing hook" if @car.towing_hook
    fill_in "Type", with: @car.type
    check "Usb" if @car.usb
    fill_in "User", with: @car.user_id
    fill_in "Vehicle status", with: @car.vehicle_status_id
    fill_in "Vin", with: @car.vin
    check "Xenon" if @car.xenon
    click_on "Create Car"

    assert_text "Car was successfully created"
    click_on "Back"
  end

  test "updating a Car" do
    visit cars_url
    click_on "Edit", match: :first

    check "Abs" if @car.abs
    check "Ac" if @car.ac
    fill_in "Airbags", with: @car.airbags
    check "Alarm" if @car.alarm
    check "Automatic lights" if @car.automatic_lights
    check "Avaliable" if @car.avaliable
    fill_in "Car type", with: @car.car_type_id
    check "Cash discount" if @car.cash_discount
    fill_in "Ccm", with: @car.ccm
    check "Cd player" if @car.cd_player
    fill_in "Color", with: @car.color_id
    fill_in "Comment", with: @car.comment
    fill_in "Consumption", with: @car.consumption
    check "Crashed" if @car.crashed
    check "Cruise control" if @car.cruise_control
    check "Dab" if @car.dab
    check "Damaged" if @car.damaged
    check "Digital ac" if @car.digital_ac
    fill_in "Doors", with: @car.doors
    check "Driveable" if @car.driveable
    check "Electric parking brake" if @car.electric_parking_brake
    check "Emergency brake" if @car.emergency_brake
    fill_in "First registration", with: @car.first_registration
    check "Fourwheel" if @car.fourwheel
    fill_in "Fuel type", with: @car.fuel_type_id
    check "Garaged" if @car.garaged
    fill_in "Gearbox", with: @car.gearbox_id
    check "Has guarranty" if @car.has_guarranty
    check "Has warranty" if @car.has_warranty
    check "Headup" if @car.headup
    check "Hill assist" if @car.hill_assist
    fill_in "Inspection expiry", with: @car.inspection_expiry
    check "Keyless go" if @car.keyless_go
    check "Last price" if @car.last_price
    check "Led" if @car.led
    fill_in "Manufacture year", with: @car.manufacture_year
    check "Metallic" if @car.metallic
    fill_in "Mileage", with: @car.mileage
    fill_in "Model", with: @car.model_id
    check "Mp3 player" if @car.mp3_player
    check "Navigation" if @car.navigation
    check "Never crashed" if @car.never_crashed
    fill_in "Number of owner", with: @car.number_of_owner_id
    check "Oldtimer" if @car.oldtimer
    check "Pdc" if @car.pdc
    fill_in "Power", with: @car.power
    fill_in "Price", with: @car.price
    check "Rear camera" if @car.rear_camera
    fill_in "Seats", with: @car.seats
    check "Service book" if @car.service_book
    check "Slovenian" if @car.slovenian
    check "Start stop" if @car.start_stop
    check "Towing hook" if @car.towing_hook
    fill_in "Type", with: @car.type
    check "Usb" if @car.usb
    fill_in "User", with: @car.user_id
    fill_in "Vehicle status", with: @car.vehicle_status_id
    fill_in "Vin", with: @car.vin
    check "Xenon" if @car.xenon
    click_on "Update Car"

    assert_text "Car was successfully updated"
    click_on "Back"
  end

  test "destroying a Car" do
    visit cars_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Car was successfully destroyed"
  end
end
