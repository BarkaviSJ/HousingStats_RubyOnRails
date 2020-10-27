require "application_system_test_case"

class HousingtypepricesTest < ApplicationSystemTestCase
  setup do
    @housingtypeprice = housingtypeprices(:one)
  end

  test "visiting the index" do
    visit housingtypeprices_url
    assert_selector "h1", text: "Housingtypeprices"
  end

  test "creating a Housingtypeprice" do
    visit housingtypeprices_url
    click_on "New Housingtypeprice"

    fill_in "Area code", with: @housingtypeprice.area_code
    fill_in "Detached", with: @housingtypeprice.detached
    fill_in "Flat", with: @housingtypeprice.flat
    fill_in "Locations", with: @housingtypeprice.locations_id
    fill_in "Month", with: @housingtypeprice.month
    fill_in "Region", with: @housingtypeprice.region
    fill_in "Semidetached", with: @housingtypeprice.semidetached
    fill_in "Terraced", with: @housingtypeprice.terraced
    fill_in "Year", with: @housingtypeprice.year
    click_on "Create Housingtypeprice"

    assert_text "Housingtypeprice was successfully created"
    click_on "Back"
  end

  test "updating a Housingtypeprice" do
    visit housingtypeprices_url
    click_on "Edit", match: :first

    fill_in "Area code", with: @housingtypeprice.area_code
    fill_in "Detached", with: @housingtypeprice.detached
    fill_in "Flat", with: @housingtypeprice.flat
    fill_in "Locations", with: @housingtypeprice.locations_id
    fill_in "Month", with: @housingtypeprice.month
    fill_in "Region", with: @housingtypeprice.region
    fill_in "Semidetached", with: @housingtypeprice.semidetached
    fill_in "Terraced", with: @housingtypeprice.terraced
    fill_in "Year", with: @housingtypeprice.year
    click_on "Update Housingtypeprice"

    assert_text "Housingtypeprice was successfully updated"
    click_on "Back"
  end

  test "destroying a Housingtypeprice" do
    visit housingtypeprices_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Housingtypeprice was successfully destroyed"
  end
end
