require 'test_helper'

class OfficeSpacesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get office_spaces_index_url
    assert_response :success
  end

  test "should get show" do
    get office_spaces_show_url
    assert_response :success
  end

  test "should get new" do
    get office_spaces_new_url
    assert_response :success
  end

  test "should get create" do
    get office_spaces_create_url
    assert_response :success
  end

  test "should get edit" do
    get office_spaces_edit_url
    assert_response :success
  end

  test "should get update" do
    get office_spaces_update_url
    assert_response :success
  end

  test "should get destroy" do
    get office_spaces_destroy_url
    assert_response :success
  end

end
