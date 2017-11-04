require 'test_helper'

class InsectsControllerTest < ActionDispatch::IntegrationTest

  test "should get index" do
    get insects_path
    assert_response :success
  end
end
