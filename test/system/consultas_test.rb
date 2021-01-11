require "application_system_test_case"

class ConsultasTest < ApplicationSystemTestCase
  setup do
    @consulta = consultas(:one)
  end

  test "visiting the index" do
    visit consultas_url
    assert_selector "h1", text: "Consultas"
  end

  test "creating a Consulta" do
    visit consultas_url
    click_on "New Consulta"

    fill_in "Anotaciones", with: @consulta.anotaciones
    fill_in "Nutriologo", with: @consulta.nutriologo_id
    fill_in "Paciente", with: @consulta.paciente_id
    fill_in "Problema", with: @consulta.problema_id
    fill_in "Signo", with: @consulta.signo_id
    click_on "Create Consulta"

    assert_text "Consulta was successfully created"
    click_on "Back"
  end

  test "updating a Consulta" do
    visit consultas_url
    click_on "Edit", match: :first

    fill_in "Anotaciones", with: @consulta.anotaciones
    fill_in "Nutriologo", with: @consulta.nutriologo_id
    fill_in "Paciente", with: @consulta.paciente_id
    fill_in "Problema", with: @consulta.problema_id
    fill_in "Signo", with: @consulta.signo_id
    click_on "Update Consulta"

    assert_text "Consulta was successfully updated"
    click_on "Back"
  end

  test "destroying a Consulta" do
    visit consultas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Consulta was successfully destroyed"
  end
end
