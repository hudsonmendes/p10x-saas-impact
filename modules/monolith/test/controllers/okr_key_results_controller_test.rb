require "test_helper"

class OkrKeyResultsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @okr_key_result = okr_key_results(:one)
  end

  test "should get index" do
    get okr_key_results_url
    assert_response :success
  end

  test "should get new" do
    get new_okr_key_result_url
    assert_response :success
  end

  test "should create okr_key_result" do
    assert_difference("OkrKeyResult.count") do
      post okr_key_results_url, params: { okr_key_result: { actual: @okr_key_result.actual, expected: @okr_key_result.expected, metric_id: @okr_key_result.metric_id, okr_id: @okr_key_result.okr_id } }
    end

    assert_redirected_to okr_key_result_url(OkrKeyResult.last)
  end

  test "should show okr_key_result" do
    get okr_key_result_url(@okr_key_result)
    assert_response :success
  end

  test "should get edit" do
    get edit_okr_key_result_url(@okr_key_result)
    assert_response :success
  end

  test "should update okr_key_result" do
    patch okr_key_result_url(@okr_key_result), params: { okr_key_result: { actual: @okr_key_result.actual, expected: @okr_key_result.expected, metric_id: @okr_key_result.metric_id, okr_id: @okr_key_result.okr_id } }
    assert_redirected_to okr_key_result_url(@okr_key_result)
  end

  test "should destroy okr_key_result" do
    assert_difference("OkrKeyResult.count", -1) do
      delete okr_key_result_url(@okr_key_result)
    end

    assert_redirected_to okr_key_results_url
  end
end
