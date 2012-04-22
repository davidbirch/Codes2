require 'test_helper'

class PrimaryActivitiesControllerTest < ActionController::TestCase
  setup do
    @primary_activity = primary_activities(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:primary_activities)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create primary_activity" do
    assert_difference('PrimaryActivity.count') do
      post :create, primary_activity: @primary_activity.attributes
    end

    assert_redirected_to primary_activity_path(assigns(:primary_activity))
  end

  test "should show primary_activity" do
    get :show, id: @primary_activity
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @primary_activity
    assert_response :success
  end

  test "should update primary_activity" do
    put :update, id: @primary_activity, primary_activity: @primary_activity.attributes
    assert_redirected_to primary_activity_path(assigns(:primary_activity))
  end

  test "should destroy primary_activity" do
    assert_difference('PrimaryActivity.count', -1) do
      delete :destroy, id: @primary_activity
    end

    assert_redirected_to primary_activities_path
  end
end
