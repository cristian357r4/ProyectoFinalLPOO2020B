require 'test_helper'

class ProblemasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @problema = problemas(:one)
  end

  test "should get index" do
    get problemas_url
    assert_response :success
  end

  test "should get new" do
    get new_problema_url
    assert_response :success
  end

  test "should create problema" do
    assert_difference('Problema.count') do
      post problemas_url, params: { problema: { ansiedad: @problema.ansiedad, consulta_id: @problema.consulta_id, diarrea: @problema.diarrea, estrenimiento: @problema.estrenimiento, gastritis: @problema.gastritis, insomnio: @problema.insomnio, nauseas: @problema.nauseas, obesidad: @problema.obesidad, vomito: @problema.vomito } }
    end

    assert_redirected_to problema_url(Problema.last)
  end

  test "should show problema" do
    get problema_url(@problema)
    assert_response :success
  end

  test "should get edit" do
    get edit_problema_url(@problema)
    assert_response :success
  end

  test "should update problema" do
    patch problema_url(@problema), params: { problema: { ansiedad: @problema.ansiedad, consulta_id: @problema.consulta_id, diarrea: @problema.diarrea, estrenimiento: @problema.estrenimiento, gastritis: @problema.gastritis, insomnio: @problema.insomnio, nauseas: @problema.nauseas, obesidad: @problema.obesidad, vomito: @problema.vomito } }
    assert_redirected_to problema_url(@problema)
  end

  test "should destroy problema" do
    assert_difference('Problema.count', -1) do
      delete problema_url(@problema)
    end

    assert_redirected_to problemas_url
  end
end
