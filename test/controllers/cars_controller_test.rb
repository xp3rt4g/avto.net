require 'test_helper'

class CarsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @car = cars(:one)
  end

  test "should get index" do
    get cars_url
    assert_response :success
  end

  test "should get new" do
    get new_car_url
    assert_response :success
  end

  test "should create car" do
    assert_difference('Car.count') do
      post cars_url, params: { car: { abs: @car.abs, ac: @car.ac, airbags: @car.airbags, alarm: @car.alarm, automatic_lights: @car.automatic_lights, avaliable: @car.avaliable, car_type_id: @car.car_type_id, cash_discount: @car.cash_discount, ccm: @car.ccm, cd_player: @car.cd_player, color_id: @car.color_id, comment: @car.comment, consumption: @car.consumption, crashed: @car.crashed, cruise_control: @car.cruise_control, dab: @car.dab, damaged: @car.damaged, digital_ac: @car.digital_ac, doors: @car.doors, driveable: @car.driveable, electric_parking_brake: @car.electric_parking_brake, emergency_brake: @car.emergency_brake, first_registration: @car.first_registration, fourwheel: @car.fourwheel, fuel_type_id: @car.fuel_type_id, garaged: @car.garaged, gearbox_id: @car.gearbox_id, has_guarranty: @car.has_guarranty, has_warranty: @car.has_warranty, headup: @car.headup, hill_assist: @car.hill_assist, inspection_expiry: @car.inspection_expiry, keyless_go: @car.keyless_go, last_price: @car.last_price, led: @car.led, manufacture_year: @car.manufacture_year, metallic: @car.metallic, mileage: @car.mileage, model_id: @car.model_id, mp3_player: @car.mp3_player, navigation: @car.navigation, never_crashed: @car.never_crashed, number_of_owner_id: @car.number_of_owner_id, oldtimer: @car.oldtimer, pdc: @car.pdc, power: @car.power, price: @car.price, rear_camera: @car.rear_camera, seats: @car.seats, service_book: @car.service_book, slovenian: @car.slovenian, start_stop: @car.start_stop, towing_hook: @car.towing_hook, type: @car.type, usb: @car.usb, user_id: @car.user_id, vehicle_status_id: @car.vehicle_status_id, vin: @car.vin, xenon: @car.xenon } }
    end

    assert_redirected_to car_url(Car.last)
  end

  test "should show car" do
    get car_url(@car)
    assert_response :success
  end

  test "should get edit" do
    get edit_car_url(@car)
    assert_response :success
  end

  test "should update car" do
    patch car_url(@car), params: { car: { abs: @car.abs, ac: @car.ac, airbags: @car.airbags, alarm: @car.alarm, automatic_lights: @car.automatic_lights, avaliable: @car.avaliable, car_type_id: @car.car_type_id, cash_discount: @car.cash_discount, ccm: @car.ccm, cd_player: @car.cd_player, color_id: @car.color_id, comment: @car.comment, consumption: @car.consumption, crashed: @car.crashed, cruise_control: @car.cruise_control, dab: @car.dab, damaged: @car.damaged, digital_ac: @car.digital_ac, doors: @car.doors, driveable: @car.driveable, electric_parking_brake: @car.electric_parking_brake, emergency_brake: @car.emergency_brake, first_registration: @car.first_registration, fourwheel: @car.fourwheel, fuel_type_id: @car.fuel_type_id, garaged: @car.garaged, gearbox_id: @car.gearbox_id, has_guarranty: @car.has_guarranty, has_warranty: @car.has_warranty, headup: @car.headup, hill_assist: @car.hill_assist, inspection_expiry: @car.inspection_expiry, keyless_go: @car.keyless_go, last_price: @car.last_price, led: @car.led, manufacture_year: @car.manufacture_year, metallic: @car.metallic, mileage: @car.mileage, model_id: @car.model_id, mp3_player: @car.mp3_player, navigation: @car.navigation, never_crashed: @car.never_crashed, number_of_owner_id: @car.number_of_owner_id, oldtimer: @car.oldtimer, pdc: @car.pdc, power: @car.power, price: @car.price, rear_camera: @car.rear_camera, seats: @car.seats, service_book: @car.service_book, slovenian: @car.slovenian, start_stop: @car.start_stop, towing_hook: @car.towing_hook, type: @car.type, usb: @car.usb, user_id: @car.user_id, vehicle_status_id: @car.vehicle_status_id, vin: @car.vin, xenon: @car.xenon } }
    assert_redirected_to car_url(@car)
  end

  test "should destroy car" do
    assert_difference('Car.count', -1) do
      delete car_url(@car)
    end

    assert_redirected_to cars_url
  end
end
