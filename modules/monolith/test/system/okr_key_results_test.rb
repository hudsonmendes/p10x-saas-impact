require "application_system_test_case"

class OkrKeyResultsTest < ApplicationSystemTestCase
  setup do
    @okr_key_result = okr_key_results(:one)
  end

  test "visiting the index" do
    visit okr_key_results_url
    assert_selector "h1", text: "Okr key results"
  end

  test "should create okr key result" do
    visit okr_key_results_url
    click_on "New okr key result"

    fill_in "Actual", with: @okr_key_result.actual
    fill_in "Expected", with: @okr_key_result.expected
    fill_in "Metric", with: @okr_key_result.metric_id
    fill_in "Okr", with: @okr_key_result.okr_id
    click_on "Create Okr key result"

    assert_text "Okr key result was successfully created"
    click_on "Back"
  end

  test "should update Okr key result" do
    visit okr_key_result_url(@okr_key_result)
    click_on "Edit this okr key result", match: :first

    fill_in "Actual", with: @okr_key_result.actual
    fill_in "Expected", with: @okr_key_result.expected
    fill_in "Metric", with: @okr_key_result.metric_id
    fill_in "Okr", with: @okr_key_result.okr_id
    click_on "Update Okr key result"

    assert_text "Okr key result was successfully updated"
    click_on "Back"
  end

  test "should destroy Okr key result" do
    visit okr_key_result_url(@okr_key_result)
    click_on "Destroy this okr key result", match: :first

    assert_text "Okr key result was successfully destroyed"
  end
end
