require "application_system_test_case"

class FinancingtypesTest < ApplicationSystemTestCase
  setup do
    @financingtype = financingtypes(:one)
  end

  test "visiting the index" do
    visit financingtypes_url
    assert_selector "h1", text: "Financingtypes"
  end

  test "creating a Financingtype" do
    visit financingtypes_url
    click_on "New Financingtype"

    fill_in "Area code", with: @financingtype.area_code
    fill_in "Average price", with: @financingtype.average_price
    fill_in "Cash price", with: @financingtype.cash_price
    fill_in "Locations", with: @financingtype.locations_id
    fill_in "Month", with: @financingtype.month
    fill_in "Mortgage price", with: @financingtype.mortgage_price
    fill_in "Region", with: @financingtype.region
    fill_in "Year", with: @financingtype.year
    click_on "Create Financingtype"

    assert_text "Financingtype was successfully created"
    click_on "Back"
  end

  test "updating a Financingtype" do
    visit financingtypes_url
    click_on "Edit", match: :first

    fill_in "Area code", with: @financingtype.area_code
    fill_in "Average price", with: @financingtype.average_price
    fill_in "Cash price", with: @financingtype.cash_price
    fill_in "Locations", with: @financingtype.locations_id
    fill_in "Month", with: @financingtype.month
    fill_in "Mortgage price", with: @financingtype.mortgage_price
    fill_in "Region", with: @financingtype.region
    fill_in "Year", with: @financingtype.year
    click_on "Update Financingtype"

    assert_text "Financingtype was successfully updated"
    click_on "Back"
  end

  test "destroying a Financingtype" do
    visit financingtypes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Financingtype was successfully destroyed"
  end
end
