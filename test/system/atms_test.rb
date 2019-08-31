require "application_system_test_case"

class AtmsTest < ApplicationSystemTestCase
  setup do
    @atm = atms(:one)
  end

  test "visiting the index" do
    visit atms_url
    assert_selector "h1", text: "Atms"
  end

  test "creating a Atm" do
    visit atms_url
    click_on "New Atm"

    fill_in "Bank", with: @atm.bank
    check "Blindness assistance" if @atm.blindness_assistance
    fill_in "City", with: @atm.city
    fill_in "Code", with: @atm.code
    fill_in "Commune", with: @atm.commune
    check "Dolars" if @atm.dolars
    fill_in "Id", with: @atm.id
    fill_in "Lat", with: @atm.lat
    fill_in "Location", with: @atm.location
    fill_in "Long", with: @atm.long
    fill_in "Neighborhood", with: @atm.neighborhood
    fill_in "Network", with: @atm.network
    fill_in "Second street", with: @atm.second_street
    fill_in "Street", with: @atm.street
    fill_in "Street number", with: @atm.street_number
    fill_in "Terminals", with: @atm.terminals
    fill_in "Zipcode", with: @atm.zipcode
    click_on "Create Atm"

    assert_text "Atm was successfully created"
    click_on "Back"
  end

  test "updating a Atm" do
    visit atms_url
    click_on "Edit", match: :first

    fill_in "Bank", with: @atm.bank
    check "Blindness assistance" if @atm.blindness_assistance
    fill_in "City", with: @atm.city
    fill_in "Code", with: @atm.code
    fill_in "Commune", with: @atm.commune
    check "Dolars" if @atm.dolars
    fill_in "Id", with: @atm.id
    fill_in "Lat", with: @atm.lat
    fill_in "Location", with: @atm.location
    fill_in "Long", with: @atm.long
    fill_in "Neighborhood", with: @atm.neighborhood
    fill_in "Network", with: @atm.network
    fill_in "Second street", with: @atm.second_street
    fill_in "Street", with: @atm.street
    fill_in "Street number", with: @atm.street_number
    fill_in "Terminals", with: @atm.terminals
    fill_in "Zipcode", with: @atm.zipcode
    click_on "Update Atm"

    assert_text "Atm was successfully updated"
    click_on "Back"
  end

  test "destroying a Atm" do
    visit atms_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Atm was successfully destroyed"
  end
end
