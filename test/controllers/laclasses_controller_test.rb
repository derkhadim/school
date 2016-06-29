require 'test_helper'

class LaclassesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @laclass = laclasses(:one)
  end

  test "should get index" do
    get laclasses_url
    assert_response :success
  end

  test "should get new" do
    get new_laclass_url
    assert_response :success
  end

  test "should create laclass" do
    assert_difference('Laclasse.count') do
      post laclasses_url, params: { laclass: { name: @laclass.name } }
    end

    assert_redirected_to laclass_url(Laclasse.last)
  end

  test "should show laclass" do
    get laclass_url(@laclass)
    assert_response :success
  end

  test "should get edit" do
    get edit_laclass_url(@laclass)
    assert_response :success
  end

  test "should update laclass" do
    patch laclass_url(@laclass), params: { laclass: { name: @laclass.name } }
    assert_redirected_to laclass_url(@laclass)
  end

  test "should destroy laclass" do
    assert_difference('Laclasse.count', -1) do
      delete laclass_url(@laclass)
    end

    assert_redirected_to laclasses_url
  end
end
