require "application_system_test_case"

class OkrsTest < ApplicationSystemTestCase
  setup do
    @okr = okrs(:one)
  end

  test "visiting the index" do
    visit okrs_url
    assert_selector "h1", text: "Okrs"
  end

  test "should create okr" do
    visit okrs_url
    click_on "New okr"

    fill_in "Allocation", with: @okr.allocation
    fill_in "Allocation scale in days", with: @okr.allocation_scale_in_days
    check "Archived" if @okr.archived
    fill_in "Objective", with: @okr.objective
    fill_in "Owner", with: @okr.owner_id
    fill_in "Parent id", with: @okr.parent_id_id
    fill_in "State", with: @okr.state
    click_on "Create Okr"

    assert_text "Okr was successfully created"
    click_on "Back"
  end

  test "should update Okr" do
    visit okr_url(@okr)
    click_on "Edit this okr", match: :first

    fill_in "Allocation", with: @okr.allocation
    fill_in "Allocation scale in days", with: @okr.allocation_scale_in_days
    check "Archived" if @okr.archived
    fill_in "Objective", with: @okr.objective
    fill_in "Owner", with: @okr.owner_id
    fill_in "Parent id", with: @okr.parent_id_id
    fill_in "State", with: @okr.state
    click_on "Update Okr"

    assert_text "Okr was successfully updated"
    click_on "Back"
  end

  test "should destroy Okr" do
    visit okr_url(@okr)
    click_on "Destroy this okr", match: :first

    assert_text "Okr was successfully destroyed"
  end
end
