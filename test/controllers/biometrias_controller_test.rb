require 'test_helper'

class BiometriasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @biometria = biometrias(:one)
  end

  test "should get index" do
    get biometrias_url
    assert_response :success
  end

  test "should get new" do
    get new_biometria_url
    assert_response :success
  end

  test "should create biometria" do
    assert_difference('Biometria.count') do
      post biometrias_url, params: { biometria: {  } }
    end

    assert_redirected_to biometria_url(Biometria.last)
  end

  test "should show biometria" do
    get biometria_url(@biometria)
    assert_response :success
  end

  test "should get edit" do
    get edit_biometria_url(@biometria)
    assert_response :success
  end

  test "should update biometria" do
    patch biometria_url(@biometria), params: { biometria: {  } }
    assert_redirected_to biometria_url(@biometria)
  end

  test "should destroy biometria" do
    assert_difference('Biometria.count', -1) do
      delete biometria_url(@biometria)
    end

    assert_redirected_to biometrias_url
  end
end
