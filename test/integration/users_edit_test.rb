require 'test_helper'

class UsersEditTest < ActionDispatch::IntegrationTest

  def setup
    @user = users(:tekeke)
  end

  test "edit with invalid and valid status" do
    log_in_as(@user)
    get edit_user_path(@user)
    assert_template 'users/edit'
    patch user_path, params: { user: { name: "edited", password: "password", password_confirmation: "password", sex: :female } }
    assert_redirected_to @user
    follow_redirect!
    user = User.find(@user.id)
    assert user.name = "edited"
    assert user.sex = :female
  end
end
