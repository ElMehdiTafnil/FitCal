require "test_helper"

class MuscleGroupsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get muscle_groups_index_url
    assert_response :success
  end

  test "should get show" do
    get muscle_groups_show_url
    assert_response :success
  end
end
