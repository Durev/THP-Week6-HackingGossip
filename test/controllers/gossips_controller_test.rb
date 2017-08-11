require 'test_helper'

class GossipsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get gossips_index_url
    assert_response :success
  end

  test "should get new" do
    get gossips_new_url
    assert_response :success
  end

end
