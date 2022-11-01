require "test_helper"

class SubhomeControllerTest < ActionDispatch::IntegrationTest
  test "should get about" do
    get subhome_about_url
    assert_response :success
  end

  test "should get readme" do
    get subhome_readme_url
    assert_response :success
  end
end
