require "application_system_test_case"

class ManacatesTest < ApplicationSystemTestCase
  setup do
    @manacate = manacates(:one)
  end

  test "visiting the index" do
    visit manacates_url
    assert_selector "h1", text: "Manacates"
  end

  test "creating a Manacate" do
    visit manacates_url
    click_on "New Manacate"

    fill_in "Desc", with: @manacate.desc
    fill_in "Name category", with: @manacate.name_category
    click_on "Create Manacate"

    assert_text "Manacate was successfully created"
    click_on "Back"
  end

  test "updating a Manacate" do
    visit manacates_url
    click_on "Edit", match: :first

    fill_in "Desc", with: @manacate.desc
    fill_in "Name category", with: @manacate.name_category
    click_on "Update Manacate"

    assert_text "Manacate was successfully updated"
    click_on "Back"
  end

  test "destroying a Manacate" do
    visit manacates_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Manacate was successfully destroyed"
  end
end
