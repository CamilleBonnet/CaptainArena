require 'test_helper'

class CaptainsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get captains_show_url
    assert_response :success
  end

  test "should get new" do
    get captains_new_url
    assert_response :success
  end

end
