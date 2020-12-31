require "test_helper"

class HelpContentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @help_content = help_contents(:one)
  end

  test "should get index" do
    get help_contents_url
    assert_response :success
  end

  test "should get new" do
    get new_help_content_url
    assert_response :success
  end

  test "should create help_content" do
    assert_difference('HelpContent.count') do
      post help_contents_url, params: { help_content: { name: @help_content.name, unit_price: @help_content.unit_price } }
    end

    assert_redirected_to help_content_url(HelpContent.last)
  end

  test "should show help_content" do
    get help_content_url(@help_content)
    assert_response :success
  end

  test "should get edit" do
    get edit_help_content_url(@help_content)
    assert_response :success
  end

  test "should update help_content" do
    patch help_content_url(@help_content), params: { help_content: { name: @help_content.name, unit_price: @help_content.unit_price } }
    assert_redirected_to help_content_url(@help_content)
  end

  test "should destroy help_content" do
    assert_difference('HelpContent.count', -1) do
      delete help_content_url(@help_content)
    end

    assert_redirected_to help_contents_url
  end
end
