require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:one)
  end

  test "should get index" do
    get users_url
    assert_response :success
  end

  test "should get new" do
    get new_user_url
    assert_response :success
  end

  test "should create user" do
    assert_difference('User.count') do
      post users_url, params: { user: { account_type_id: @user.account_type_id, address: @user.address, email: @user.email, name: @user.name, pass: @user.pass, phone: @user.phone, seller_title: @user.seller_title, tax_number: @user.tax_number, town_id: @user.town_id, webpage: @user.webpage } }
    end

    assert_redirected_to user_url(User.last)
  end

  test "should show user" do
    get user_url(@user)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_url(@user)
    assert_response :success
  end

  test "should update user" do
    patch user_url(@user), params: { user: { account_type_id: @user.account_type_id, address: @user.address, email: @user.email, name: @user.name, pass: @user.pass, phone: @user.phone, seller_title: @user.seller_title, tax_number: @user.tax_number, town_id: @user.town_id, webpage: @user.webpage } }
    assert_redirected_to user_url(@user)
  end

  test "should destroy user" do
    assert_difference('User.count', -1) do
      delete user_url(@user)
    end

    assert_redirected_to users_url
  end
end
