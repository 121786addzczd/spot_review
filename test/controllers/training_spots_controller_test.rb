require 'test_helper'

class TrainingSpotsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get training_spots_index_url
    assert_response :success
  end

  test "should get show" do
    get training_spots_show_url
    assert_response :success
  end

end
