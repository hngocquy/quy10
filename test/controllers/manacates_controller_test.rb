require "test_helper"

class ManacatesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @manacate = manacates(:one)
  end

  test "should get index" do
    get manacates_url
    assert_response :success
  end

  test "should get new" do
    get new_manacate_url
    assert_response :success
  end

  test "should create manacate" do
    assert_difference('Manacate.count') do
      post manacates_url, params: { manacate: { desc: @manacate.desc, name_category: @manacate.name_category } }
    end

    assert_redirected_to manacate_url(Manacate.last)
  end

  test "should show manacate" do
    get manacate_url(@manacate)
    assert_response :success
  end

  test "should get edit" do
    get edit_manacate_url(@manacate)
    assert_response :success
  end

  test "should update manacate" do
    patch manacate_url(@manacate), params: { manacate: { desc: @manacate.desc, name_category: @manacate.name_category } }
    assert_redirected_to manacate_url(@manacate)
  end

  test "should destroy manacate" do
    assert_difference('Manacate.count', -1) do
      delete manacate_url(@manacate)
    end

    assert_redirected_to manacates_url
  end
end
