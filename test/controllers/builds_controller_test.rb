require "test_helper"

class BuildsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get builds_index_url
    assert_response :success
  end

  test "should get new" do
    get builds_new_url
    assert_response :success
  end

  test "should get create" do
    get builds_create_url
    assert_response :success
  end

  test "should get edit" do
    get builds_edit_url
    assert_response :success
  end

  test "should get upgrade" do
    get builds_upgrade_url
    assert_response :success
  end

  test "should get destroy" do
    get builds_destroy_url
    assert_response :success
  end
end
