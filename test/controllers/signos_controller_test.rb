require 'test_helper'

class SignosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @signo = signos(:one)
  end

  test "should get index" do
    get signos_url
    assert_response :success
  end

  test "should get new" do
    get new_signo_url
    assert_response :success
  end

  test "should create signo" do
    assert_difference('Signo.count') do
      post signos_url, params: { signo: { cabello: @signo.cabello, consulta_id: @signo.consulta_id, frecuencia_cardiaca: @signo.frecuencia_cardiaca, frecuencia_respiratoria: @signo.frecuencia_respiratoria, nails: @signo.nails, ojos: @signo.ojos, peso_corporal: @signo.peso_corporal, piel: @signo.piel, presion_sanguinea: @signo.presion_sanguinea } }
    end

    assert_redirected_to signo_url(Signo.last)
  end

  test "should show signo" do
    get signo_url(@signo)
    assert_response :success
  end

  test "should get edit" do
    get edit_signo_url(@signo)
    assert_response :success
  end

  test "should update signo" do
    patch signo_url(@signo), params: { signo: { cabello: @signo.cabello, consulta_id: @signo.consulta_id, frecuencia_cardiaca: @signo.frecuencia_cardiaca, frecuencia_respiratoria: @signo.frecuencia_respiratoria, nails: @signo.nails, ojos: @signo.ojos, peso_corporal: @signo.peso_corporal, piel: @signo.piel, presion_sanguinea: @signo.presion_sanguinea } }
    assert_redirected_to signo_url(@signo)
  end

  test "should destroy signo" do
    assert_difference('Signo.count', -1) do
      delete signo_url(@signo)
    end

    assert_redirected_to signos_url
  end
end
