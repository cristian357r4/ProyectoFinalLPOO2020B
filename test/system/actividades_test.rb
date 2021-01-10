require "application_system_test_case"

class ActividadesTest < ApplicationSystemTestCase
  setup do
    @actividad = actividades(:one)
  end

  test "visiting the index" do
    visit actividades_url
    assert_selector "h1", text: "Actividades"
  end

  test "creating a Actividad" do
    visit actividades_url
    click_on "New Actividad"

    click_on "Create Actividad"

    assert_text "Actividad was successfully created"
    click_on "Back"
  end

  test "updating a Actividad" do
    visit actividades_url
    click_on "Edit", match: :first

    click_on "Update Actividad"

    assert_text "Actividad was successfully updated"
    click_on "Back"
  end

  test "destroying a Actividad" do
    visit actividades_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Actividad was successfully destroyed"
  end
end
