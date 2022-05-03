require "application_system_test_case"

class RailwaysTest < ApplicationSystemTestCase
  setup do
    @railway = railways(:one)
  end

  test "visiting the index" do
    visit railways_url
    assert_selector "h1", text: "Railways"
  end

  test "creating a Railway" do
    visit railways_url
    click_on "New Railway"

    fill_in "Minute", with: @railway.minute
    fill_in "Name", with: @railway.name
    fill_in "Property", with: @railway.property_id
    fill_in "Station", with: @railway.station
    click_on "Create Railway"

    assert_text "Railway was successfully created"
    click_on "Back"
  end

  test "updating a Railway" do
    visit railways_url
    click_on "Edit", match: :first

    fill_in "Minute", with: @railway.minute
    fill_in "Name", with: @railway.name
    fill_in "Property", with: @railway.property_id
    fill_in "Station", with: @railway.station
    click_on "Update Railway"

    assert_text "Railway was successfully updated"
    click_on "Back"
  end

  test "destroying a Railway" do
    visit railways_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Railway was successfully destroyed"
  end
end
