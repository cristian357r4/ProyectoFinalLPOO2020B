require "application_system_test_case"

class AlimentosTest < ApplicationSystemTestCase
  setup do
    @alimento = alimentos(:one)
  end

  test "visiting the index" do
    visit alimentos_url
    assert_selector "h1", text: "Alimentos"
  end

  test "creating a Alimento" do
    visit alimentos_url
    click_on "New Alimento"

    fill_in "Caracteristicas", with: @alimento.caracteristicas
    fill_in "Frecuencia", with: @alimento.frecuencia
    fill_in "Grupo alimenticio", with: @alimento.grupo_alimenticio
    fill_in "Mxcasera", with: @alimento.mxcasera
    fill_in "Nombre", with: @alimento.nombre
    fill_in "Nutrientes", with: @alimento.nutrientes
    fill_in "Subgrupo alimenticio", with: @alimento.subgrupo_alimenticio
    click_on "Create Alimento"

    assert_text "Alimento was successfully created"
    click_on "Back"
  end

  test "updating a Alimento" do
    visit alimentos_url
    click_on "Edit", match: :first

    fill_in "Caracteristicas", with: @alimento.caracteristicas
    fill_in "Frecuencia", with: @alimento.frecuencia
    fill_in "Grupo alimenticio", with: @alimento.grupo_alimenticio
    fill_in "Mxcasera", with: @alimento.mxcasera
    fill_in "Nombre", with: @alimento.nombre
    fill_in "Nutrientes", with: @alimento.nutrientes
    fill_in "Subgrupo alimenticio", with: @alimento.subgrupo_alimenticio
    click_on "Update Alimento"

    assert_text "Alimento was successfully updated"
    click_on "Back"
  end

  test "destroying a Alimento" do
    visit alimentos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Alimento was successfully destroyed"
  end
end
