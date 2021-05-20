require "test_helper"

class User1sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user1 = user1s(:one)
  end

  test "should get index" do
    get user1s_url
    assert_response :success
  end

  test "should get new" do
    get new_user1_url
    assert_response :success
  end

  test "should create user1" do
    assert_difference('User1.count') do
      post user1s_url, params: { user1: { address: @user1.address, email: @user1.email, mobile: @user1.mobile, name: @user1.name, password: 'secret', password_confirmation: 'secret' } }
    end

    assert_redirected_to user1_url(User1.last)
  end

  test "should show user1" do
    get user1_url(@user1)
    assert_response :success
  end

  test "should get edit" do
    get edit_user1_url(@user1)
    assert_response :success
  end

  test "should update user1" do
    patch user1_url(@user1), params: { user1: { address: @user1.address, email: @user1.email, mobile: @user1.mobile, name: @user1.name, password: 'secret', password_confirmation: 'secret' } }
    assert_redirected_to user1_url(@user1)
  end

  test "should destroy user1" do
    assert_difference('User1.count', -1) do
      delete user1_url(@user1)
    end

    assert_redirected_to user1s_url
  end
end
