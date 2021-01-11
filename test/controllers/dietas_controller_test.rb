require 'test_helper'

class DietasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dieta = dietas(:one)
  end

  test "should get index" do
    get dietas_url
    assert_response :success
  end

  test "should get new" do
    get new_dieta_url
    assert_response :success
  end

  test "should create dieta" do
    assert_difference('Dieta.count') do
      post dietas_url, params: { dieta: {  } }
    end

    assert_redirected_to dieta_url(Dieta.last)
  end

  test "should show dieta" do
    get dieta_url(@dieta)
    assert_response :success
  end

  test "should get edit" do
    get edit_dieta_url(@dieta)
    assert_response :success
  end

  test "should update dieta" do
    patch dieta_url(@dieta), params: { dieta: {  } }
    assert_redirected_to dieta_url(@dieta)
  end

  test "should destroy dieta" do
    assert_difference('Dieta.count', -1) do
      delete dieta_url(@dieta)
    end

    assert_redirected_to dietas_url
  end
end
