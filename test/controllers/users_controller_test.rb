require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest

  test "should get index path" do
    get users_path
    assert_response :success
  end

end
