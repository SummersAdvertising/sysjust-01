require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  test "should get purchasing" do
    get :purchasing
    assert_response :success
  end

  test "should get download_contents" do
    get :download_contents
    assert_response :success
  end

end
