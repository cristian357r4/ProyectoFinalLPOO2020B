require "application_system_test_case"

class SuplementosTest < ApplicationSystemTestCase
  setup do
    @suplemento = suplementos(:one)
  end

  test "visiting the index" do
    visit suplementos_url
    assert_selector "h1", text: "Suplementos"
  end

  test "creating a Suplemento" do
    visit suplementos_url
    click_on "New Suplemento"

    fill_in "Contenido", with: @suplemento.contenido
    fill_in "Formato", with: @suplemento.formato
    fill_in "Informacion", with: @suplemento.informacion
    fill_in "Marca", with: @suplemento.marca
    fill_in "No servicios", with: @suplemento.no_servicios
    fill_in "Nombre", with: @suplemento.nombre
    fill_in "Peso producto", with: @suplemento.peso_producto
    fill_in "Precio", with: @suplemento.precio
    click_on "Create Suplemento"

    assert_text "Suplemento was successfully created"
    click_on "Back"
  end

  test "updating a Suplemento" do
    visit suplementos_url
    click_on "Edit", match: :first

    fill_in "Contenido", with: @suplemento.contenido
    fill_in "Formato", with: @suplemento.formato
    fill_in "Informacion", with: @suplemento.informacion
    fill_in "Marca", with: @suplemento.marca
    fill_in "No servicios", with: @suplemento.no_servicios
    fill_in "Nombre", with: @suplemento.nombre
    fill_in "Peso producto", with: @suplemento.peso_producto
    fill_in "Precio", with: @suplemento.precio
    click_on "Update Suplemento"

    assert_text "Suplemento was successfully updated"
    click_on "Back"
  end

  test "destroying a Suplemento" do
    visit suplementos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Suplemento was successfully destroyed"
  end
end
