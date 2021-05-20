require "test_helper"

class Mnproduct2sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mnproduct2 = mnproduct2s(:one)
  end

  test "should get index" do
    get mnproduct2s_url
    assert_response :success
  end

  test "should get new" do
    get new_mnproduct2_url
    assert_response :success
  end

  test "should create mnproduct2" do
    assert_difference('Mnproduct2.count') do
      post mnproduct2s_url, params: { mnproduct2: { desc: @mnproduct2.desc, titel: @mnproduct2.titel } }
    end

    assert_redirected_to mnproduct2_url(Mnproduct2.last)
  end

  test "should show mnproduct2" do
    get mnproduct2_url(@mnproduct2)
    assert_response :success
  end

  test "should get edit" do
    get edit_mnproduct2_url(@mnproduct2)
    assert_response :success
  end

  test "should update mnproduct2" do
    patch mnproduct2_url(@mnproduct2), params: { mnproduct2: { desc: @mnproduct2.desc, titel: @mnproduct2.titel } }
    assert_redirected_to mnproduct2_url(@mnproduct2)
  end

  test "should destroy mnproduct2" do
    assert_difference('Mnproduct2.count', -1) do
      delete mnproduct2_url(@mnproduct2)
    end

    assert_redirected_to mnproduct2s_url
  end
end
