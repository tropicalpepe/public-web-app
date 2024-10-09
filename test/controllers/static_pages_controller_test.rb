require "test_helper"

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get get_started" do
    get static_pages_get_started_url
    assert_response :success
  end

  test "should get contact_us" do
    get static_pages_contact_us_url
    assert_response :success
  end
end
