require "application_system_test_case"

class AntecedentesTest < ApplicationSystemTestCase
  setup do
    @antecedente = antecedentes(:one)
  end

  test "visiting the index" do
    visit antecedentes_url
    assert_selector "h1", text: "Antecedentes"
  end

  test "creating a Antecedente" do
    visit antecedentes_url
    click_on "New Antecedente"

    click_on "Create Antecedente"

    assert_text "Antecedente was successfully created"
    click_on "Back"
  end

  test "updating a Antecedente" do
    visit antecedentes_url
    click_on "Edit", match: :first

    click_on "Update Antecedente"

    assert_text "Antecedente was successfully updated"
    click_on "Back"
  end

  test "destroying a Antecedente" do
    visit antecedentes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Antecedente was successfully destroyed"
  end
end
