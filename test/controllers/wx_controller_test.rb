require 'test_helper'

class WxControllerTest < ActionDispatch::IntegrationTest
  test "should get curWeather" do
    get wx_curWeather_url
    assert_response :success
  end

end
