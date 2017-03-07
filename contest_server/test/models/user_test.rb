require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
    @user = User.new(user_name: "aaaa")
  end

  test "user_name should not be empty" do
    @user.user_name = ""
    assert_not @user.valid?
  end

  test "user_name shoule be unique" do
    duplicate_user = @user.dup
    @user.save
    assert_not duplicate_user.valid?
  end
end
