require "test_helper"

class MnproductsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mnproduct = mnproducts(:one)
  end

  test "should get index" do
    get mnproducts_url
    assert_response :success
  end

  test "should get new" do
    get new_mnproduct_url
    assert_response :success
  end

  test "should create mnproduct" do
    assert_difference('Mnproduct.count') do
      post mnproducts_url, params: { mnproduct: { cate_pro: @mnproduct.cate_pro, desc_pro: @mnproduct.desc_pro, name_pro: @mnproduct.name_pro, price_pro: @mnproduct.price_pro } }
    end

    assert_redirected_to mnproduct_url(Mnproduct.last)
  end

  test "should show mnproduct" do
    get mnproduct_url(@mnproduct)
    assert_response :success
  end

  test "should get edit" do
    get edit_mnproduct_url(@mnproduct)
    assert_response :success
  end

  test "should update mnproduct" do
    patch mnproduct_url(@mnproduct), params: { mnproduct: { cate_pro: @mnproduct.cate_pro, desc_pro: @mnproduct.desc_pro, name_pro: @mnproduct.name_pro, price_pro: @mnproduct.price_pro } }
    assert_redirected_to mnproduct_url(@mnproduct)
  end

  test "should destroy mnproduct" do
    assert_difference('Mnproduct.count', -1) do
      delete mnproduct_url(@mnproduct)
    end

    assert_redirected_to mnproducts_url
  end
end
