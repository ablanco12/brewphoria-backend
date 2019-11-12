require 'test_helper'

class TriedBeersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get tried_beers_index_url
    assert_response :success
  end

end
