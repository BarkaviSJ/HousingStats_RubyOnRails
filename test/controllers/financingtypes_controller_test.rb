require 'test_helper'

class FinancingtypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @financingtype = financingtypes(:one)
  end

  test "should get index" do
    get financingtypes_url
    assert_response :success
  end

  test "should get new" do
    get new_financingtype_url
    assert_response :success
  end

  test "should create financingtype" do
    assert_difference('Financingtype.count') do
      post financingtypes_url, params: { financingtype: { area_code: @financingtype.area_code, average_price: @financingtype.average_price, cash_price: @financingtype.cash_price, locations_id: @financingtype.locations_id, month: @financingtype.month, mortgage_price: @financingtype.mortgage_price, region: @financingtype.region, year: @financingtype.year } }
    end

    assert_redirected_to financingtype_url(Financingtype.last)
  end

  test "should show financingtype" do
    get financingtype_url(@financingtype)
    assert_response :success
  end

  test "should get edit" do
    get edit_financingtype_url(@financingtype)
    assert_response :success
  end

  test "should update financingtype" do
    patch financingtype_url(@financingtype), params: { financingtype: { area_code: @financingtype.area_code, average_price: @financingtype.average_price, cash_price: @financingtype.cash_price, locations_id: @financingtype.locations_id, month: @financingtype.month, mortgage_price: @financingtype.mortgage_price, region: @financingtype.region, year: @financingtype.year } }
    assert_redirected_to financingtype_url(@financingtype)
  end

  test "should destroy financingtype" do
    assert_difference('Financingtype.count', -1) do
      delete financingtype_url(@financingtype)
    end

    assert_redirected_to financingtypes_url
  end
end
