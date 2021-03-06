require "application_system_test_case"

class UsersTest < ApplicationSystemTestCase
  setup do
    @user = users(:one)
  end

  test "visiting the index" do
    visit users_url
    assert_selector "h1", text: "Users"
  end

  test "creating a User" do
    visit users_url
    click_on "New User"

    fill_in "Document", with: @user.document
    fill_in "Document type", with: @user.document_type
    fill_in "Email", with: @user.email
    fill_in "Emission date", with: @user.emission_date
    fill_in "Expiration date", with: @user.expiration_date
    fill_in "Last name", with: @user.last_name
    fill_in "Name", with: @user.name
    fill_in "Phone1", with: @user.phone1
    fill_in "Phone2", with: @user.phone2
    fill_in "User type", with: @user.user_type
    click_on "Create User"

    assert_text "User was successfully created"
    click_on "Back"
  end

  test "updating a User" do
    visit users_url
    click_on "Edit", match: :first

    fill_in "Document", with: @user.document
    fill_in "Document type", with: @user.document_type
    fill_in "Email", with: @user.email
    fill_in "Emission date", with: @user.emission_date
    fill_in "Expiration date", with: @user.expiration_date
    fill_in "Last name", with: @user.last_name
    fill_in "Name", with: @user.name
    fill_in "Phone1", with: @user.phone1
    fill_in "Phone2", with: @user.phone2
    fill_in "User type", with: @user.user_type
    click_on "Update User"

    assert_text "User was successfully updated"
    click_on "Back"
  end

  test "destroying a User" do
    visit users_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "User was successfully destroyed"
  end
end
