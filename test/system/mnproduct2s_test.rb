require "application_system_test_case"

class Mnproduct2sTest < ApplicationSystemTestCase
  setup do
    @mnproduct2 = mnproduct2s(:one)
  end

  test "visiting the index" do
    visit mnproduct2s_url
    assert_selector "h1", text: "Mnproduct2s"
  end

  test "creating a Mnproduct2" do
    visit mnproduct2s_url
    click_on "New Mnproduct2"

    fill_in "Desc", with: @mnproduct2.desc
    fill_in "Titel", with: @mnproduct2.titel
    click_on "Create Mnproduct2"

    assert_text "Mnproduct2 was successfully created"
    click_on "Back"
  end

  test "updating a Mnproduct2" do
    visit mnproduct2s_url
    click_on "Edit", match: :first

    fill_in "Desc", with: @mnproduct2.desc
    fill_in "Titel", with: @mnproduct2.titel
    click_on "Update Mnproduct2"

    assert_text "Mnproduct2 was successfully updated"
    click_on "Back"
  end

  test "destroying a Mnproduct2" do
    visit mnproduct2s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Mnproduct2 was successfully destroyed"
  end
end
