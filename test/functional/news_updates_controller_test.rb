# -*- encoding : utf-8 -*-
require 'test_helper'

class NewsUpdatesControllerTest < ActionController::TestCase
  setup do
    @news_update = news_updates(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:news_updates)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create news_update" do
    assert_difference('NewsUpdate.count') do
      post :create, news_update: { category: @news_update.category, content: @news_update.content, source: @news_update.source, title: @news_update.title }
    end

    assert_redirected_to news_update_path(assigns(:news_update))
  end

  test "should show news_update" do
    get :show, id: @news_update
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @news_update
    assert_response :success
  end

  test "should update news_update" do
    put :update, id: @news_update, news_update: { category: @news_update.category, content: @news_update.content, source: @news_update.source, title: @news_update.title }
    assert_redirected_to news_update_path(assigns(:news_update))
  end

  test "should destroy news_update" do
    assert_difference('NewsUpdate.count', -1) do
      delete :destroy, id: @news_update
    end

    assert_redirected_to news_updates_path
  end
end
