require "application_system_test_case"

class GearboxesTest < ApplicationSystemTestCase
  setup do
    @gearbox = gearboxes(:one)
  end

  test "visiting the index" do
    visit gearboxes_url
    assert_selector "h1", text: "Gearboxes"
  end

  test "creating a Gearbox" do
    visit gearboxes_url
    click_on "New Gearbox"

    click_on "Create Gearbox"

    assert_text "Gearbox was successfully created"
    click_on "Back"
  end

  test "updating a Gearbox" do
    visit gearboxes_url
    click_on "Edit", match: :first

    click_on "Update Gearbox"

    assert_text "Gearbox was successfully updated"
    click_on "Back"
  end

  test "destroying a Gearbox" do
    visit gearboxes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Gearbox was successfully destroyed"
  end
end
