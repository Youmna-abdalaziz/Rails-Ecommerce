require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "should not save user without name" do
    user = User.new
    user.email="x@x.com"
    user.password="123456"
    user.password_confirmation="123456"
    assert_not user.save
  end

  test "should not save user without email" do
    user = User.new
    user.name="new"
    user.password="123456"
    user.password_confirmation="123456"
    assert_not user.save
  end

  test "should not save user without password" do
    user = User.new
    user.email="x@x.com"
    user.name="new"
    assert_not user.save
  end

  test "should not save user without password confirmation" do
    user = User.new
    user.email="x@x.com"
    user.password="123456"
    user.name="new"
    assert_not user.save
  end

  test "should not save user if password confirmation is not matching" do
    user = User.new
    user.email="x@x.com"
    user.name="new"
    user.password="123456"
    user.password_confirmation="123457"
    assert_not user.save
  end


  test "should not save user if password's length is less than 6 chars" do
    user = User.new
    user.email="x@x.com"
    user.name="new"
    user.password="12345"
    user.password_confirmation="12345"
    assert_not user.save
  end



  test "should not save user if email is not valid" do
    user = User.new
    user.email="x.com"
    user.password="123456"
    user.password_confirmation="123456"
    user.name="new"
    assert_not user.save
  end


  test "should not save user if email is not unique" do
    user1 = User.new
    user1.email="x@x.com"
    user1.password="123456"
    user1.password_confirmation="123456"
    user1.name="new"
    user1.save
    user = User.new
    user.email="x@x.com"
    user.password="123456"
    user.password_confirmation="123456"
    user.name="new"
    assert_not user.save
  end




end
