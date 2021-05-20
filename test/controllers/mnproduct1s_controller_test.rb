require "test_helper"

class Mnproduct1sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mnproduct1 = mnproduct1s(:one)
  end

  test "should get index" do
    get mnproduct1s_url
    assert_response :success
  end

  test "should get new" do
    get new_mnproduct1_url
    assert_response :success
  end

  test "should create mnproduct1" do
    assert_difference('Mnproduct1.count') do
      post mnproduct1s_url, params: { mnproduct1: { cate_pro: @mnproduct1.cate_pro, desc_pro: @mnproduct1.desc_pro, name_pro: @mnproduct1.name_pro, price_pro: @mnproduct1.price_pro } }
    end

    assert_redirected_to mnproduct1_url(Mnproduct1.last)
  end

  test "should show mnproduct1" do
    get mnproduct1_url(@mnproduct1)
    assert_response :success
  end

  test "should get edit" do
    get edit_mnproduct1_url(@mnproduct1)
    assert_response :success
  end

  test "should update mnproduct1" do
    patch mnproduct1_url(@mnproduct1), params: { mnproduct1: { cate_pro: @mnproduct1.cate_pro, desc_pro: @mnproduct1.desc_pro, name_pro: @mnproduct1.name_pro, price_pro: @mnproduct1.price_pro } }
    assert_redirected_to mnproduct1_url(@mnproduct1)
  end

  test "should destroy mnproduct1" do
    assert_difference('Mnproduct1.count', -1) do
      delete mnproduct1_url(@mnproduct1)
    end

    assert_redirected_to mnproduct1s_url
  end
end
