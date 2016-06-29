require 'test_helper'

class PreinscriptionControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get preinscription_index_url
    assert_response :success
  end

end
