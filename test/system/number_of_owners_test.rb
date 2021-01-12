require "application_system_test_case"

class NumberOfOwnersTest < ApplicationSystemTestCase
  setup do
    @number_of_owner = number_of_owners(:one)
  end

  test "visiting the index" do
    visit number_of_owners_url
    assert_selector "h1", text: "Number Of Owners"
  end

  test "creating a Number of owner" do
    visit number_of_owners_url
    click_on "New Number Of Owner"

    click_on "Create Number of owner"

    assert_text "Number of owner was successfully created"
    click_on "Back"
  end

  test "updating a Number of owner" do
    visit number_of_owners_url
    click_on "Edit", match: :first

    click_on "Update Number of owner"

    assert_text "Number of owner was successfully updated"
    click_on "Back"
  end

  test "destroying a Number of owner" do
    visit number_of_owners_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Number of owner was successfully destroyed"
  end
end
