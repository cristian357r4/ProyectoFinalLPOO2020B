require 'test_helper'

class PlansuplementosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @plansuplemento = plansuplementos(:one)
  end

  test "should get index" do
    get plansuplementos_url
    assert_response :success
  end

  test "should get new" do
    get new_plansuplemento_url
    assert_response :success
  end

  test "should create plansuplemento" do
    assert_difference('Plansuplemento.count') do
      post plansuplementos_url, params: { plansuplemento: {  } }
    end

    assert_redirected_to plansuplemento_url(Plansuplemento.last)
  end

  test "should show plansuplemento" do
    get plansuplemento_url(@plansuplemento)
    assert_response :success
  end

  test "should get edit" do
    get edit_plansuplemento_url(@plansuplemento)
    assert_response :success
  end

  test "should update plansuplemento" do
    patch plansuplemento_url(@plansuplemento), params: { plansuplemento: {  } }
    assert_redirected_to plansuplemento_url(@plansuplemento)
  end

  test "should destroy plansuplemento" do
    assert_difference('Plansuplemento.count', -1) do
      delete plansuplemento_url(@plansuplemento)
    end

    assert_redirected_to plansuplementos_url
  end
end
