require "application_system_test_case"

class ProblemasTest < ApplicationSystemTestCase
  setup do
    @problema = problemas(:one)
  end

  test "visiting the index" do
    visit problemas_url
    assert_selector "h1", text: "Problemas"
  end

  test "creating a Problema" do
    visit problemas_url
    click_on "New Problema"

    check "Ansiedad" if @problema.ansiedad
    fill_in "Consulta", with: @problema.consulta_id
    check "Diarrea" if @problema.diarrea
    check "Estrenimiento" if @problema.estrenimiento
    check "Gastritis" if @problema.gastritis
    check "Insomnio" if @problema.insomnio
    check "Nauseas" if @problema.nauseas
    check "Obesidad" if @problema.obesidad
    check "Vomito" if @problema.vomito
    click_on "Create Problema"

    assert_text "Problema was successfully created"
    click_on "Back"
  end

  test "updating a Problema" do
    visit problemas_url
    click_on "Edit", match: :first

    check "Ansiedad" if @problema.ansiedad
    fill_in "Consulta", with: @problema.consulta_id
    check "Diarrea" if @problema.diarrea
    check "Estrenimiento" if @problema.estrenimiento
    check "Gastritis" if @problema.gastritis
    check "Insomnio" if @problema.insomnio
    check "Nauseas" if @problema.nauseas
    check "Obesidad" if @problema.obesidad
    check "Vomito" if @problema.vomito
    click_on "Update Problema"

    assert_text "Problema was successfully updated"
    click_on "Back"
  end

  test "destroying a Problema" do
    visit problemas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Problema was successfully destroyed"
  end
end
