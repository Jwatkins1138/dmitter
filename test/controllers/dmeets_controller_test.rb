require "test_helper"

class DmeetsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dmeet = dmeets(:one)
  end

  test "should get index" do
    get dmeets_url
    assert_response :success
  end

  test "should get new" do
    get new_dmeet_url
    assert_response :success
  end

  test "should create dmeet" do
    assert_difference("Dmeet.count") do
      post dmeets_url, params: { dmeet: { dmeet: @dmeet.dmeet } }
    end

    assert_redirected_to dmeet_url(Dmeet.last)
  end

  test "should show dmeet" do
    get dmeet_url(@dmeet)
    assert_response :success
  end

  test "should get edit" do
    get edit_dmeet_url(@dmeet)
    assert_response :success
  end

  test "should update dmeet" do
    patch dmeet_url(@dmeet), params: { dmeet: { dmeet: @dmeet.dmeet } }
    assert_redirected_to dmeet_url(@dmeet)
  end

  test "should destroy dmeet" do
    assert_difference("Dmeet.count", -1) do
      delete dmeet_url(@dmeet)
    end

    assert_redirected_to dmeets_url
  end
end
