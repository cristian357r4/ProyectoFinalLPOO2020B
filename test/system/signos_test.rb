require "application_system_test_case"

class SignosTest < ApplicationSystemTestCase
  setup do
    @signo = signos(:one)
  end

  test "visiting the index" do
    visit signos_url
    assert_selector "h1", text: "Signos"
  end

  test "creating a Signo" do
    visit signos_url
    click_on "New Signo"

    check "Cabello" if @signo.cabello
    fill_in "Consulta", with: @signo.consulta_id
    fill_in "Frecuencia cardiaca", with: @signo.frecuencia_cardiaca
    fill_in "Frecuencia respiratoria", with: @signo.frecuencia_respiratoria
    check "Nails" if @signo.nails
    check "Ojos" if @signo.ojos
    fill_in "Peso corporal", with: @signo.peso_corporal
    check "Piel" if @signo.piel
    fill_in "Presion sanguinea", with: @signo.presion_sanguinea
    click_on "Create Signo"

    assert_text "Signo was successfully created"
    click_on "Back"
  end

  test "updating a Signo" do
    visit signos_url
    click_on "Edit", match: :first

    check "Cabello" if @signo.cabello
    fill_in "Consulta", with: @signo.consulta_id
    fill_in "Frecuencia cardiaca", with: @signo.frecuencia_cardiaca
    fill_in "Frecuencia respiratoria", with: @signo.frecuencia_respiratoria
    check "Nails" if @signo.nails
    check "Ojos" if @signo.ojos
    fill_in "Peso corporal", with: @signo.peso_corporal
    check "Piel" if @signo.piel
    fill_in "Presion sanguinea", with: @signo.presion_sanguinea
    click_on "Update Signo"

    assert_text "Signo was successfully updated"
    click_on "Back"
  end

  test "destroying a Signo" do
    visit signos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Signo was successfully destroyed"
  end
end
