# -*- encoding : utf-8 -*-
require 'test_helper'

class ExperiencesControllerTest < ActionController::TestCase
  setup do
    @experience = experiences(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:experiences)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create experience" do
    assert_difference('Experience.count') do
      post :create, experience: { attendant_number: @experience.attendant_number, company_name: @experience.company_name, contact_person: @experience.contact_person, email: @experience.email, phone_number: @experience.phone_number, professional_title: @experience.professional_title }
    end

    assert_redirected_to experience_path(assigns(:experience))
  end

  test "should show experience" do
    get :show, id: @experience
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @experience
    assert_response :success
  end

  test "should update experience" do
    put :update, id: @experience, experience: { attendant_number: @experience.attendant_number, company_name: @experience.company_name, contact_person: @experience.contact_person, email: @experience.email, phone_number: @experience.phone_number, professional_title: @experience.professional_title }
    assert_redirected_to experience_path(assigns(:experience))
  end

  test "should destroy experience" do
    assert_difference('Experience.count', -1) do
      delete :destroy, id: @experience
    end

    assert_redirected_to experiences_path
  end
end
