require "application_system_test_case"

class Mnproduct1sTest < ApplicationSystemTestCase
  setup do
    @mnproduct1 = mnproduct1s(:one)
  end

  test "visiting the index" do
    visit mnproduct1s_url
    assert_selector "h1", text: "Mnproduct1s"
  end

  test "creating a Mnproduct1" do
    visit mnproduct1s_url
    click_on "New Mnproduct1"

    fill_in "Cate pro", with: @mnproduct1.cate_pro
    fill_in "Desc pro", with: @mnproduct1.desc_pro
    fill_in "Name pro", with: @mnproduct1.name_pro
    fill_in "Price pro", with: @mnproduct1.price_pro
    click_on "Create Mnproduct1"

    assert_text "Mnproduct1 was successfully created"
    click_on "Back"
  end

  test "updating a Mnproduct1" do
    visit mnproduct1s_url
    click_on "Edit", match: :first

    fill_in "Cate pro", with: @mnproduct1.cate_pro
    fill_in "Desc pro", with: @mnproduct1.desc_pro
    fill_in "Name pro", with: @mnproduct1.name_pro
    fill_in "Price pro", with: @mnproduct1.price_pro
    click_on "Update Mnproduct1"

    assert_text "Mnproduct1 was successfully updated"
    click_on "Back"
  end

  test "destroying a Mnproduct1" do
    visit mnproduct1s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Mnproduct1 was successfully destroyed"
  end
end
