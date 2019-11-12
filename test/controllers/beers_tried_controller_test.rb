require 'test_helper'

class BeersTriedControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get beers_tried_index_url
    assert_response :success
  end

end
