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

    fill_in "Ansiedad", with: @problema.ansiedad
    fill_in "Diarrea", with: @problema.diarrea
    fill_in "Estrenimiento", with: @problema.estrenimiento
    fill_in "Gastritis", with: @problema.gastritis
    fill_in "Insomnio", with: @problema.insomnio
    fill_in "Nauseas", with: @problema.nauseas
    fill_in "Obesidad", with: @problema.obesidad
    fill_in "Vomito", with: @problema.vomito
    click_on "Create Problema"

    assert_text "Problema was successfully created"
    click_on "Back"
  end

  test "updating a Problema" do
    visit problemas_url
    click_on "Edit", match: :first

    fill_in "Ansiedad", with: @problema.ansiedad
    fill_in "Diarrea", with: @problema.diarrea
    fill_in "Estrenimiento", with: @problema.estrenimiento
    fill_in "Gastritis", with: @problema.gastritis
    fill_in "Insomnio", with: @problema.insomnio
    fill_in "Nauseas", with: @problema.nauseas
    fill_in "Obesidad", with: @problema.obesidad
    fill_in "Vomito", with: @problema.vomito
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
