require 'test_helper'

class AlimentosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @alimento = alimentos(:one)
  end

  test "should get index" do
    get alimentos_url
    assert_response :success
  end

  test "should get new" do
    get new_alimento_url
    assert_response :success
  end

  test "should create alimento" do
    assert_difference('Alimento.count') do
      post alimentos_url, params: { alimento: { caracteristicas: @alimento.caracteristicas, frecuencia: @alimento.frecuencia, grupo_alimenticio: @alimento.grupo_alimenticio, mxcasa: @alimento.mxcasa, nombre: @alimento.nombre, nutrientes: @alimento.nutrientes, racionexporcion: @alimento.racionexporcion, subgrupo_alimenticio: @alimento.subgrupo_alimenticio } }
    end

    assert_redirected_to alimento_url(Alimento.last)
  end

  test "should show alimento" do
    get alimento_url(@alimento)
    assert_response :success
  end

  test "should get edit" do
    get edit_alimento_url(@alimento)
    assert_response :success
  end

  test "should update alimento" do
    patch alimento_url(@alimento), params: { alimento: { caracteristicas: @alimento.caracteristicas, frecuencia: @alimento.frecuencia, grupo_alimenticio: @alimento.grupo_alimenticio, mxcasa: @alimento.mxcasa, nombre: @alimento.nombre, nutrientes: @alimento.nutrientes, racionexporcion: @alimento.racionexporcion, subgrupo_alimenticio: @alimento.subgrupo_alimenticio } }
    assert_redirected_to alimento_url(@alimento)
  end

  test "should destroy alimento" do
    assert_difference('Alimento.count', -1) do
      delete alimento_url(@alimento)
    end

    assert_redirected_to alimentos_url
  end
end
