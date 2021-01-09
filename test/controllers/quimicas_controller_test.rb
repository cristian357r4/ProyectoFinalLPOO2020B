require 'test_helper'

class QuimicasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @quimica = quimicas(:one)
  end

  test "should get index" do
    get quimicas_url
    assert_response :success
  end

  test "should get new" do
    get new_quimica_url
    assert_response :success
  end

  test "should create quimica" do
    assert_difference('Quimica.count') do
      post quimicas_url, params: { quimica: {  } }
    end

    assert_redirected_to quimica_url(Quimica.last)
  end

  test "should show quimica" do
    get quimica_url(@quimica)
    assert_response :success
  end

  test "should get edit" do
    get edit_quimica_url(@quimica)
    assert_response :success
  end

  test "should update quimica" do
    patch quimica_url(@quimica), params: { quimica: {  } }
    assert_redirected_to quimica_url(@quimica)
  end

  test "should destroy quimica" do
    assert_difference('Quimica.count', -1) do
      delete quimica_url(@quimica)
    end

    assert_redirected_to quimicas_url
  end
end
