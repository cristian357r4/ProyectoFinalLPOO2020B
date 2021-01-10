require "application_system_test_case"

class HabitosTest < ApplicationSystemTestCase
  setup do
    @habito = habitos(:one)
  end

  test "visiting the index" do
    visit habitos_url
    assert_selector "h1", text: "Habitos"
  end

  test "creating a Habito" do
    visit habitos_url
    click_on "New Habito"

    click_on "Create Habito"

    assert_text "Habito was successfully created"
    click_on "Back"
  end

  test "updating a Habito" do
    visit habitos_url
    click_on "Edit", match: :first

    click_on "Update Habito"

    assert_text "Habito was successfully updated"
    click_on "Back"
  end

  test "destroying a Habito" do
    visit habitos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Habito was successfully destroyed"
  end
end
