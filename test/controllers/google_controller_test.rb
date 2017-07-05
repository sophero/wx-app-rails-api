require 'test_helper'

class GoogleControllerTest < ActionDispatch::IntegrationTest
  test "should get timezoneOffset" do
    get google_timezoneOffset_url
    assert_response :success
  end

end
