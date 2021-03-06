require "application_system_test_case"

class GymsTest < ApplicationSystemTestCase
  setup do
    @gym = gyms(:one)
  end

  test "visiting the index" do
    visit gyms_url
    assert_selector "h1", text: "Gyms"
  end

  test "creating a Gym" do
    visit gyms_url
    click_on "New Gym"

    click_on "Create Gym"

    assert_text "Gym was successfully created"
    click_on "Back"
  end

  test "updating a Gym" do
    visit gyms_url
    click_on "Edit", match: :first

    click_on "Update Gym"

    assert_text "Gym was successfully updated"
    click_on "Back"
  end

  test "destroying a Gym" do
    visit gyms_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Gym was successfully destroyed"
  end
end
