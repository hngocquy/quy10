require "application_system_test_case"

class User1sTest < ApplicationSystemTestCase
  setup do
    @user1 = user1s(:one)
  end

  test "visiting the index" do
    visit user1s_url
    assert_selector "h1", text: "User1s"
  end

  test "creating a User1" do
    visit user1s_url
    click_on "New User1"

    fill_in "Address", with: @user1.address
    fill_in "Email", with: @user1.email
    fill_in "Mobile", with: @user1.mobile
    fill_in "Name", with: @user1.name
    fill_in "Password", with: 'secret'
    fill_in "Password confirmation", with: 'secret'
    click_on "Create User1"

    assert_text "User1 was successfully created"
    click_on "Back"
  end

  test "updating a User1" do
    visit user1s_url
    click_on "Edit", match: :first

    fill_in "Address", with: @user1.address
    fill_in "Email", with: @user1.email
    fill_in "Mobile", with: @user1.mobile
    fill_in "Name", with: @user1.name
    fill_in "Password", with: 'secret'
    fill_in "Password confirmation", with: 'secret'
    click_on "Update User1"

    assert_text "User1 was successfully updated"
    click_on "Back"
  end

  test "destroying a User1" do
    visit user1s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "User1 was successfully destroyed"
  end
end
