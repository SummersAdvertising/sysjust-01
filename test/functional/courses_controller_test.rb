require 'test_helper'

class CoursesControllerTest < ActionController::TestCase
  setup do
    @course = courses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:courses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create course" do
    assert_difference('Course.count') do
      post :create, course: { address: @course.address, content: @course.content, end_time: @course.end_time, is_display: @course.is_display, lecturer: @course.lecturer, registration_quota: @course.registration_quota, session: @course.session, start_time: @course.start_time, subject: @course.subject }
    end

    assert_redirected_to course_path(assigns(:course))
  end

  test "should show course" do
    get :show, id: @course
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @course
    assert_response :success
  end

  test "should update course" do
    put :update, id: @course, course: { address: @course.address, content: @course.content, end_time: @course.end_time, is_display: @course.is_display, lecturer: @course.lecturer, registration_quota: @course.registration_quota, session: @course.session, start_time: @course.start_time, subject: @course.subject }
    assert_redirected_to course_path(assigns(:course))
  end

  test "should destroy course" do
    assert_difference('Course.count', -1) do
      delete :destroy, id: @course
    end

    assert_redirected_to courses_path
  end
end
