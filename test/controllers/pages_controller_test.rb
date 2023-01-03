require "test_helper"

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get pages_index_url
    assert_response :success
  end

  test "should get laindg_page" do
    get pages_laindg_page_url
    assert_response :success
  end
end
