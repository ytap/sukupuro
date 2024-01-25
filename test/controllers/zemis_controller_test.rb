require "test_helper"

class ZemisControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get zemis_show_url
    assert_response :success
  end
end
