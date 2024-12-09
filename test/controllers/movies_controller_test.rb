require "test_helper"

class MoviesControllerTest < ActionDispatch::IntegrationTest
  test "should get indew" do
    get movies_indew_url
    assert_response :success
  end

  test "should get show" do
    get movies_show_url
    assert_response :success
  end

  test "should get create" do
    get movies_create_url
    assert_response :success
  end

  test "should get edit" do
    get movies_edit_url
    assert_response :success
  end

  test "should get deleter" do
    get movies_deleter_url
    assert_response :success
  end
end
