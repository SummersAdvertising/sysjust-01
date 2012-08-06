# -*- encoding : utf-8 -*-
require 'test_helper'

class ServiceEmailsControllerTest < ActionController::TestCase
  setup do
    @service_email = service_emails(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:service_emails)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create service_email" do
    assert_difference('ServiceEmail.count') do
      post :create, service_email: { email: @service_email.email }
    end

    assert_redirected_to service_email_path(assigns(:service_email))
  end

  test "should show service_email" do
    get :show, id: @service_email
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @service_email
    assert_response :success
  end

  test "should update service_email" do
    put :update, id: @service_email, service_email: { email: @service_email.email }
    assert_redirected_to service_email_path(assigns(:service_email))
  end

  test "should destroy service_email" do
    assert_difference('ServiceEmail.count', -1) do
      delete :destroy, id: @service_email
    end

    assert_redirected_to service_emails_path
  end
end
