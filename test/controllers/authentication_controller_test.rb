require 'test_helper'

class AuthenticationControllerTest < ActionController::TestCase
  test "should get change_password" do
    get :change_password
    assert_response :success
  end

  test "should get forgot_password" do
    get :forgot_password
    assert_response :success
  end

  test "should get new_user" do
    get :new_user
    assert_response :success
  end

  test "should get password_sent" do
    get :password_sent
    assert_response :success
  end

  test "should get sign_in" do
    get :sign_in
    assert_response :success
  end

  test "should get signed_out" do
    get :signed_out
    assert_response :success
  end

end
