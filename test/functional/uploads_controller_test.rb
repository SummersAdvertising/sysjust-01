require 'test_helper'

class UploadsControllerTest < ActionController::TestCase
  setup do
    @upload = uploads(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:uploads)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create upload" do
    assert_difference('Upload.count') do
      post :create, upload: { upload_content_type: @upload.upload_content_type, upload_file_name: @upload.upload_file_name, upload_file_size: @upload.upload_file_size, upload_updated_at: @upload.upload_updated_at }
    end

    assert_redirected_to upload_path(assigns(:upload))
  end

  test "should show upload" do
    get :show, id: @upload
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @upload
    assert_response :success
  end

  test "should update upload" do
    put :update, id: @upload, upload: { upload_content_type: @upload.upload_content_type, upload_file_name: @upload.upload_file_name, upload_file_size: @upload.upload_file_size, upload_updated_at: @upload.upload_updated_at }
    assert_redirected_to upload_path(assigns(:upload))
  end

  test "should destroy upload" do
    assert_difference('Upload.count', -1) do
      delete :destroy, id: @upload
    end

    assert_redirected_to uploads_path
  end
end
