require 'test_helper'

class HousePriceUkControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get house_price_uk_index_url
    assert_response :success
  end

end
