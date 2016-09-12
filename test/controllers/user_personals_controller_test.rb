require 'test_helper'

class UserPersonalsControllerTest < ActionController::TestCase
  setup do
    @user_personal = user_personals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:user_personals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user_personal" do
    assert_difference('UserPersonal.count') do
      post :create, user_personal: { name: @user_personal.name, user_id: @user_personal.user_id }
    end

    assert_redirected_to user_personal_path(assigns(:user_personal))
  end

  test "should show user_personal" do
    get :show, id: @user_personal
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user_personal
    assert_response :success
  end

  test "should update user_personal" do
    patch :update, id: @user_personal, user_personal: { name: @user_personal.name, user_id: @user_personal.user_id }
    assert_redirected_to user_personal_path(assigns(:user_personal))
  end

  test "should destroy user_personal" do
    assert_difference('UserPersonal.count', -1) do
      delete :destroy, id: @user_personal
    end

    assert_redirected_to user_personals_path
  end
end
