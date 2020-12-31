require "application_system_test_case"

class HelpContentsTest < ApplicationSystemTestCase
  setup do
    @help_content = help_contents(:one)
  end

  test "visiting the index" do
    visit help_contents_url
    assert_selector "h1", text: "Help Contents"
  end

  test "creating a Help content" do
    visit help_contents_url
    click_on "New Help Content"

    fill_in "Name", with: @help_content.name
    fill_in "Unit price", with: @help_content.unit_price
    click_on "Create Help content"

    assert_text "Help content was successfully created"
    click_on "Back"
  end

  test "updating a Help content" do
    visit help_contents_url
    click_on "Edit", match: :first

    fill_in "Name", with: @help_content.name
    fill_in "Unit price", with: @help_content.unit_price
    click_on "Update Help content"

    assert_text "Help content was successfully updated"
    click_on "Back"
  end

  test "destroying a Help content" do
    visit help_contents_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Help content was successfully destroyed"
  end
end
