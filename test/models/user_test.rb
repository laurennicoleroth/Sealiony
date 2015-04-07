require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
    @user = User.new(first_name: "Ben", email: "awesomeemail@yourmom.com", password: "yourmom")
  end

  test "should be valid" do
    assert @user.valid?
  end

  test "name should be present" do
    @user.first_name = "     "
    assert_not @user.valid?
  end

  test "email should be present" do
    @user.email = "      "
    assert_not @user.valid?
  end
end
