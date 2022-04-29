require "application_system_test_case"

class DmeetsTest < ApplicationSystemTestCase
  setup do
    @dmeet = dmeets(:one)
  end

  test "visiting the index" do
    visit dmeets_url
    assert_selector "h1", text: "Dmeets"
  end

  test "should create dmeet" do
    visit dmeets_url
    click_on "New dmeet"

    fill_in "Dmeet", with: @dmeet.dmeet
    click_on "Create Dmeet"

    assert_text "Dmeet was successfully created"
    click_on "Back"
  end

  test "should update Dmeet" do
    visit dmeet_url(@dmeet)
    click_on "Edit this dmeet", match: :first

    fill_in "Dmeet", with: @dmeet.dmeet
    click_on "Update Dmeet"

    assert_text "Dmeet was successfully updated"
    click_on "Back"
  end

  test "should destroy Dmeet" do
    visit dmeet_url(@dmeet)
    click_on "Destroy this dmeet", match: :first

    assert_text "Dmeet was successfully destroyed"
  end
end
