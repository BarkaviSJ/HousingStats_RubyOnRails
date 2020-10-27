require 'test_helper'

class HousingtypepricesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @housingtypeprice = housingtypeprices(:one)
  end

  test "should get index" do
    get housingtypeprices_url
    assert_response :success
  end

  test "should get new" do
    get new_housingtypeprice_url
    assert_response :success
  end

  test "should create housingtypeprice" do
    assert_difference('Housingtypeprice.count') do
      post housingtypeprices_url, params: { housingtypeprice: { area_code: @housingtypeprice.area_code, detached: @housingtypeprice.detached, flat: @housingtypeprice.flat, locations_id: @housingtypeprice.locations_id, month: @housingtypeprice.month, region: @housingtypeprice.region, semidetached: @housingtypeprice.semidetached, terraced: @housingtypeprice.terraced, year: @housingtypeprice.year } }
    end

    assert_redirected_to housingtypeprice_url(Housingtypeprice.last)
  end

  test "should show housingtypeprice" do
    get housingtypeprice_url(@housingtypeprice)
    assert_response :success
  end

  test "should get edit" do
    get edit_housingtypeprice_url(@housingtypeprice)
    assert_response :success
  end

  test "should update housingtypeprice" do
    patch housingtypeprice_url(@housingtypeprice), params: { housingtypeprice: { area_code: @housingtypeprice.area_code, detached: @housingtypeprice.detached, flat: @housingtypeprice.flat, locations_id: @housingtypeprice.locations_id, month: @housingtypeprice.month, region: @housingtypeprice.region, semidetached: @housingtypeprice.semidetached, terraced: @housingtypeprice.terraced, year: @housingtypeprice.year } }
    assert_redirected_to housingtypeprice_url(@housingtypeprice)
  end

  test "should destroy housingtypeprice" do
    assert_difference('Housingtypeprice.count', -1) do
      delete housingtypeprice_url(@housingtypeprice)
    end

    assert_redirected_to housingtypeprices_url
  end
end
