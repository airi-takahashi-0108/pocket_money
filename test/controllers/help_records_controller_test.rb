require "test_helper"

class HelpRecordsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @help_record = help_records(:one)
  end

  test "should get index" do
    get help_records_url
    assert_response :success
  end

  test "should get new" do
    get new_help_record_url
    assert_response :success
  end

  test "should create help_record" do
    assert_difference('HelpRecord.count') do
      post help_records_url, params: { help_record: { help_content_id: @help_record.help_content_id, quality: @help_record.quality, times: @help_record.times } }
    end

    assert_redirected_to help_record_url(HelpRecord.last)
  end

  test "should show help_record" do
    get help_record_url(@help_record)
    assert_response :success
  end

  test "should get edit" do
    get edit_help_record_url(@help_record)
    assert_response :success
  end

  test "should update help_record" do
    patch help_record_url(@help_record), params: { help_record: { help_content_id: @help_record.help_content_id, quality: @help_record.quality, times: @help_record.times } }
    assert_redirected_to help_record_url(@help_record)
  end

  test "should destroy help_record" do
    assert_difference('HelpRecord.count', -1) do
      delete help_record_url(@help_record)
    end

    assert_redirected_to help_records_url
  end
end
