require 'test_helper'

class InsectTest < ActiveSupport::TestCase
  def setup
    picture = "./app/assets/images/1.png"
    @insect = Insect.new(name: "butterfly", picture: File.open(picture))
  end

  test "sample should be valid" do
    assert @insect.valid?
  end

  test "picture name should be exist" do
    @insect.name = "  "
    assert_not @insect.valid?
  end

  test "picture should be png" do
    dummy = "./app/assets/images/test.jpg"
    @insect.picture = File.open(dummy)
    assert_not @insect.valid?
  end

  test "picture should be exist" do
    @insect.picture = nil
    assert_not @insect.valid?
  end

end
