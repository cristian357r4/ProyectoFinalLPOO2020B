require "application_system_test_case"

class DietasTest < ApplicationSystemTestCase
  setup do
    @dieta = dietas(:one)
  end

  test "visiting the index" do
    visit dietas_url
    assert_selector "h1", text: "Dietas"
  end

  test "creating a Dieta" do
    visit dietas_url
    click_on "New Dieta"

    click_on "Create Dieta"

    assert_text "Dieta was successfully created"
    click_on "Back"
  end

  test "updating a Dieta" do
    visit dietas_url
    click_on "Edit", match: :first

    click_on "Update Dieta"

    assert_text "Dieta was successfully updated"
    click_on "Back"
  end

  test "destroying a Dieta" do
    visit dietas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Dieta was successfully destroyed"
  end
end
