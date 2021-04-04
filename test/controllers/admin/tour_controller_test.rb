require "test_helper"

class Admin::TourControllerTest < ActionDispatch::IntegrationTest
  test "should get add_tour" do
    get admin_tour_add_tour_url
    assert_response :success
  end
end
