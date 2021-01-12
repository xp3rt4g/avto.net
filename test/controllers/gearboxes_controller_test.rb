require 'test_helper'

class GearboxesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @gearbox = gearboxes(:one)
  end

  test "should get index" do
    get gearboxes_url
    assert_response :success
  end

  test "should get new" do
    get new_gearbox_url
    assert_response :success
  end

  test "should create gearbox" do
    assert_difference('Gearbox.count') do
      post gearboxes_url, params: { gearbox: {  } }
    end

    assert_redirected_to gearbox_url(Gearbox.last)
  end

  test "should show gearbox" do
    get gearbox_url(@gearbox)
    assert_response :success
  end

  test "should get edit" do
    get edit_gearbox_url(@gearbox)
    assert_response :success
  end

  test "should update gearbox" do
    patch gearbox_url(@gearbox), params: { gearbox: {  } }
    assert_redirected_to gearbox_url(@gearbox)
  end

  test "should destroy gearbox" do
    assert_difference('Gearbox.count', -1) do
      delete gearbox_url(@gearbox)
    end

    assert_redirected_to gearboxes_url
  end
end
