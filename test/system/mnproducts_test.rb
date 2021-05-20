require "application_system_test_case"

class MnproductsTest < ApplicationSystemTestCase
  setup do
    @mnproduct = mnproducts(:one)
  end

  test "visiting the index" do
    visit mnproducts_url
    assert_selector "h1", text: "Mnproducts"
  end

  test "creating a Mnproduct" do
    visit mnproducts_url
    click_on "New Mnproduct"

    fill_in "Cate pro", with: @mnproduct.cate_pro
    fill_in "Desc pro", with: @mnproduct.desc_pro
    fill_in "Name pro", with: @mnproduct.name_pro
    fill_in "Price pro", with: @mnproduct.price_pro
    click_on "Create Mnproduct"

    assert_text "Mnproduct was successfully created"
    click_on "Back"
  end

  test "updating a Mnproduct" do
    visit mnproducts_url
    click_on "Edit", match: :first

    fill_in "Cate pro", with: @mnproduct.cate_pro
    fill_in "Desc pro", with: @mnproduct.desc_pro
    fill_in "Name pro", with: @mnproduct.name_pro
    fill_in "Price pro", with: @mnproduct.price_pro
    click_on "Update Mnproduct"

    assert_text "Mnproduct was successfully updated"
    click_on "Back"
  end

  test "destroying a Mnproduct" do
    visit mnproducts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Mnproduct was successfully destroyed"
  end
end
