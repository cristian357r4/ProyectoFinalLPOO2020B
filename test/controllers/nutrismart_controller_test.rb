require 'test_helper'

class NutrismartControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get nutrismart_home_url
    assert_response :success
  end

end
