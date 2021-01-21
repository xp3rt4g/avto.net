require 'test_helper'

class PageControllerTest < ActionDispatch::IntegrationTest
  test "should get model_id:integer" do
    get page_model_id:integer_url
    assert_response :success
  end

  test "should get type:string" do
    get page_type:string_url
    assert_response :success
  end

  test "should get car_type_id:integer" do
    get page_car_type_id:integer_url
    assert_response :success
  end

  test "should get vehicle_status_id:integer" do
    get page_vehicle_status_id:integer_url
    assert_response :success
  end

  test "should get has_warranty:boolean" do
    get page_has_warranty:boolean_url
    assert_response :success
  end

  test "should get has_guarranty:boolean" do
    get page_has_guarranty:boolean_url
    assert_response :success
  end

  test "should get oldtimer:boolean" do
    get page_oldtimer:boolean_url
    assert_response :success
  end

  test "should get first_registration:date" do
    get page_first_registration:date_url
    assert_response :success
  end

  test "should get manufacture_year:integer{4}" do
    get page_manufacture_year:integer{4}_url
    assert_response :success
  end

  test "should get inspection_expiry:date" do
    get page_inspection_expiry:date_url
    assert_response :success
  end

  test "should get mileage:integer" do
    get page_mileage:integer_url
    assert_response :success
  end

  test "should get number_of_owner_id:integer" do
    get page_number_of_owner_id:integer_url
    assert_response :success
  end

  test "should get vin:string" do
    get page_vin:string_url
    assert_response :success
  end

  test "should get price:integer" do
    get page_price:integer_url
    assert_response :success
  end

  test "should get cash_discount:boolean" do
    get page_cash_discount:boolean_url
    assert_response :success
  end

  test "should get last_price:boolean" do
    get page_last_price:boolean_url
    assert_response :success
  end

  test "should get driveable:boolean" do
    get page_driveable:boolean_url
    assert_response :success
  end

  test "should get damaged:boolean" do
    get page_damaged:boolean_url
    assert_response :success
  end

  test "should get crashed:boolean" do
    get page_crashed:boolean_url
    assert_response :success
  end

  test "should get service_book:boolean" do
    get page_service_book:boolean_url
    assert_response :success
  end

  test "should get slovenian:boolean" do
    get page_slovenian:boolean_url
    assert_response :success
  end

  test "should get garaged:boolean" do
    get page_garaged:boolean_url
    assert_response :success
  end

  test "should get never_crashed:boolean" do
    get page_never_crashed:boolean_url
    assert_response :success
  end

  test "should get fuel_type_id:integer" do
    get page_fuel_type_id:integer_url
    assert_response :success
  end

  test "should get gearbox_id:integer" do
    get page_gearbox_id:integer_url
    assert_response :success
  end

  test "should get power:integer" do
    get page_power:integer_url
    assert_response :success
  end

  test "should get ccm:integer" do
    get page_ccm:integer_url
    assert_response :success
  end

  test "should get doors:integer{1}" do
    get page_doors:integer{1}_url
    assert_response :success
  end

  test "should get seats:integer" do
    get page_seats:integer_url
    assert_response :success
  end

  test "should get color_id:integer" do
    get page_color_id:integer_url
    assert_response :success
  end

  test "should get metallic:boolean" do
    get page_metallic:boolean_url
    assert_response :success
  end

  test "should get consumption:decimal" do
    get page_consumption:decimal_url
    assert_response :success
  end

  test "should get abs:boolean" do
    get page_abs:boolean_url
    assert_response :success
  end

  test "should get fourwheel:boolean" do
    get page_fourwheel:boolean_url
    assert_response :success
  end

  test "should get airbags:integer" do
    get page_airbags:integer_url
    assert_response :success
  end

  test "should get xenon:boolean" do
    get page_xenon:boolean_url
    assert_response :success
  end

  test "should get led:boolean" do
    get page_led:boolean_url
    assert_response :success
  end

  test "should get automatic_lights:boolean" do
    get page_automatic_lights:boolean_url
    assert_response :success
  end

  test "should get alarm:boolean" do
    get page_alarm:boolean_url
    assert_response :success
  end

  test "should get headup:boolean" do
    get page_headup:boolean_url
    assert_response :success
  end

  test "should get emergency_brake:boolean" do
    get page_emergency_brake:boolean_url
    assert_response :success
  end

  test "should get ac:boolean" do
    get page_ac:boolean_url
    assert_response :success
  end

  test "should get digital_ac:boolean" do
    get page_digital_ac:boolean_url
    assert_response :success
  end

  test "should get keyless_go:boolean" do
    get page_keyless_go:boolean_url
    assert_response :success
  end

  test "should get start_stop:boolean" do
    get page_start_stop:boolean_url
    assert_response :success
  end

  test "should get cruise_control:boolean" do
    get page_cruise_control:boolean_url
    assert_response :success
  end

  test "should get electric_parking_brake:boolean" do
    get page_electric_parking_brake:boolean_url
    assert_response :success
  end

  test "should get cd_player:boolean" do
    get page_cd_player:boolean_url
    assert_response :success
  end

  test "should get mp3_player:boolean" do
    get page_mp3_player:boolean_url
    assert_response :success
  end

  test "should get usb:boolean" do
    get page_usb:boolean_url
    assert_response :success
  end

  test "should get dab:boolean" do
    get page_dab:boolean_url
    assert_response :success
  end

  test "should get navigation:boolean" do
    get page_navigation:boolean_url
    assert_response :success
  end

  test "should get rear_camera:boolean" do
    get page_rear_camera:boolean_url
    assert_response :success
  end

  test "should get towing_hook:boolean" do
    get page_towing_hook:boolean_url
    assert_response :success
  end

  test "should get hill_assist:boolean" do
    get page_hill_assist:boolean_url
    assert_response :success
  end

  test "should get pdc:boolean" do
    get page_pdc:boolean_url
    assert_response :success
  end

  test "should get comment:text" do
    get page_comment:text_url
    assert_response :success
  end

  test "should get avaliable:boolean" do
    get page_avaliable:boolean_url
    assert_response :success
  end

end
