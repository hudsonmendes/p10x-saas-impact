require "test_helper"

class OkrsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @okr = okrs(:one)
  end

  test "should get index" do
    get okrs_url
    assert_response :success
  end

  test "should get new" do
    get new_okr_url
    assert_response :success
  end

  test "should create okr" do
    assert_difference("Okr.count") do
      post okrs_url, params: { okr: { allocation: @okr.allocation, allocation_scale_in_days: @okr.allocation_scale_in_days, archived: @okr.archived, objective: @okr.objective, owner_id: @okr.owner_id, parent_id_id: @okr.parent_id_id, state: @okr.state } }
    end

    assert_redirected_to okr_url(Okr.last)
  end

  test "should show okr" do
    get okr_url(@okr)
    assert_response :success
  end

  test "should get edit" do
    get edit_okr_url(@okr)
    assert_response :success
  end

  test "should update okr" do
    patch okr_url(@okr), params: { okr: { allocation: @okr.allocation, allocation_scale_in_days: @okr.allocation_scale_in_days, archived: @okr.archived, objective: @okr.objective, owner_id: @okr.owner_id, parent_id_id: @okr.parent_id_id, state: @okr.state } }
    assert_redirected_to okr_url(@okr)
  end

  test "should destroy okr" do
    assert_difference("Okr.count", -1) do
      delete okr_url(@okr)
    end

    assert_redirected_to okrs_url
  end
end
