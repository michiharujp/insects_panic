require 'test_helper'

class UsersSignupTest < ActionDispatch::IntegrationTest

  test "valid signup info" do
    get root_path
    post users_path, params: { user: { name:  "example",
                                       password:              "password",
                                       password_confirmation: "password",
                                       sex: :male
    } }
    follow_redirect!
    assert_template 'users/show'
    assert is_logged_in?
  end

end
