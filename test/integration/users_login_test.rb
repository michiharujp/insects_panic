require 'test_helper'

class UsersLoginTest < ActionDispatch::IntegrationTest

  def setup
    @user = users(:tekeke)
  end

  test "login with invalid information" do
    get login_path
    assert_template 'sessions/new'
    post login_path, params: { session: { name: "", password: "" } }
    assert_template 'sessions/new'
    assert_not flash.empty?
    get root_path
    assert_template 'static_pages/home'
    assert flash.empty?
  end

  test "login with valid info" do
    get login_path
    post login_path, params: { session: { name: @user.name, password: 'password' } }
    assert_redirected_to @user
    follow_redirect!
    delete logout_path
    assert_not is_logged_in?
    assert_redirected_to root_path
  end
end
