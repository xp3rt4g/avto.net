require "application_system_test_case"

class TownsTest < ApplicationSystemTestCase
  setup do
    @town = towns(:one)
  end

  test "visiting the index" do
    visit towns_url
    assert_selector "h1", text: "Towns"
  end

  test "creating a Town" do
    visit towns_url
    click_on "New Town"

    click_on "Create Town"

    assert_text "Town was successfully created"
    click_on "Back"
  end

  test "updating a Town" do
    visit towns_url
    click_on "Edit", match: :first

    click_on "Update Town"

    assert_text "Town was successfully updated"
    click_on "Back"
  end

  test "destroying a Town" do
    visit towns_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Town was successfully destroyed"
  end
end
