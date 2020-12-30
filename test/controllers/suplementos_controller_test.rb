require 'test_helper'

class SuplementosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @suplemento = suplementos(:one)
  end

  test "should get index" do
    get suplementos_url
    assert_response :success
  end

  test "should get new" do
    get new_suplemento_url
    assert_response :success
  end

  test "should create suplemento" do
    assert_difference('Suplemento.count') do
      post suplementos_url, params: { suplemento: { contenido: @suplemento.contenido, formato: @suplemento.formato, informacion: @suplemento.informacion, marca: @suplemento.marca, no_servicios: @suplemento.no_servicios, nombre: @suplemento.nombre, peso_producto: @suplemento.peso_producto, precio: @suplemento.precio } }
    end

    assert_redirected_to suplemento_url(Suplemento.last)
  end

  test "should show suplemento" do
    get suplemento_url(@suplemento)
    assert_response :success
  end

  test "should get edit" do
    get edit_suplemento_url(@suplemento)
    assert_response :success
  end

  test "should update suplemento" do
    patch suplemento_url(@suplemento), params: { suplemento: { contenido: @suplemento.contenido, formato: @suplemento.formato, informacion: @suplemento.informacion, marca: @suplemento.marca, no_servicios: @suplemento.no_servicios, nombre: @suplemento.nombre, peso_producto: @suplemento.peso_producto, precio: @suplemento.precio } }
    assert_redirected_to suplemento_url(@suplemento)
  end

  test "should destroy suplemento" do
    assert_difference('Suplemento.count', -1) do
      delete suplemento_url(@suplemento)
    end

    assert_redirected_to suplementos_url
  end
end
