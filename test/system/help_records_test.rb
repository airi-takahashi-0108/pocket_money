require "application_system_test_case"

class HelpRecordsTest < ApplicationSystemTestCase
  setup do
    @help_record = help_records(:one)
  end

  test "visiting the index" do
    visit help_records_url
    assert_selector "h1", text: "Help Records"
  end

  test "creating a Help record" do
    visit help_records_url
    click_on "New Help Record"

    fill_in "Help content", with: @help_record.help_content_id
    fill_in "Quality", with: @help_record.quality
    fill_in "Times", with: @help_record.times
    click_on "Create Help record"

    assert_text "Help record was successfully created"
    click_on "Back"
  end

  test "updating a Help record" do
    visit help_records_url
    click_on "Edit", match: :first

    fill_in "Help content", with: @help_record.help_content_id
    fill_in "Quality", with: @help_record.quality
    fill_in "Times", with: @help_record.times
    click_on "Update Help record"

    assert_text "Help record was successfully updated"
    click_on "Back"
  end

  test "destroying a Help record" do
    visit help_records_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Help record was successfully destroyed"
  end
end
