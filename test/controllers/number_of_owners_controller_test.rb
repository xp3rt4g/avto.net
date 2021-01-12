require 'test_helper'

class NumberOfOwnersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @number_of_owner = number_of_owners(:one)
  end

  test "should get index" do
    get number_of_owners_url
    assert_response :success
  end

  test "should get new" do
    get new_number_of_owner_url
    assert_response :success
  end

  test "should create number_of_owner" do
    assert_difference('NumberOfOwner.count') do
      post number_of_owners_url, params: { number_of_owner: {  } }
    end

    assert_redirected_to number_of_owner_url(NumberOfOwner.last)
  end

  test "should show number_of_owner" do
    get number_of_owner_url(@number_of_owner)
    assert_response :success
  end

  test "should get edit" do
    get edit_number_of_owner_url(@number_of_owner)
    assert_response :success
  end

  test "should update number_of_owner" do
    patch number_of_owner_url(@number_of_owner), params: { number_of_owner: {  } }
    assert_redirected_to number_of_owner_url(@number_of_owner)
  end

  test "should destroy number_of_owner" do
    assert_difference('NumberOfOwner.count', -1) do
      delete number_of_owner_url(@number_of_owner)
    end

    assert_redirected_to number_of_owners_url
  end
end
