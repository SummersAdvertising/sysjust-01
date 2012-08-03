require 'test_helper'

class BannersControllerTest < ActionController::TestCase
  setup do
    @banner = banners(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:banners)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create banner" do
    assert_difference('Banner.count') do
      post :create, banner: { category: @banner.category, content_01: @banner.content_01, content_02: @banner.content_02, content_03: @banner.content_03, hyperlink_01: @banner.hyperlink_01, hyperlink_02: @banner.hyperlink_02, hyperlink_03: @banner.hyperlink_03, title_01: @banner.title_01, title_02: @banner.title_02, title_03: @banner.title_03 }
    end

    assert_redirected_to banner_path(assigns(:banner))
  end

  test "should show banner" do
    get :show, id: @banner
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @banner
    assert_response :success
  end

  test "should update banner" do
    put :update, id: @banner, banner: { category: @banner.category, content_01: @banner.content_01, content_02: @banner.content_02, content_03: @banner.content_03, hyperlink_01: @banner.hyperlink_01, hyperlink_02: @banner.hyperlink_02, hyperlink_03: @banner.hyperlink_03, title_01: @banner.title_01, title_02: @banner.title_02, title_03: @banner.title_03 }
    assert_redirected_to banner_path(assigns(:banner))
  end

  test "should destroy banner" do
    assert_difference('Banner.count', -1) do
      delete :destroy, id: @banner
    end

    assert_redirected_to banners_path
  end
end
