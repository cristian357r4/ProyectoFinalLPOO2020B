require "application_system_test_case"

class BiometriasTest < ApplicationSystemTestCase
  setup do
    @biometria = biometrias(:one)
  end

  test "visiting the index" do
    visit biometrias_url
    assert_selector "h1", text: "Biometrias"
  end

  test "creating a Biometria" do
    visit biometrias_url
    click_on "New Biometria"

    click_on "Create Biometria"

    assert_text "Biometria was successfully created"
    click_on "Back"
  end

  test "updating a Biometria" do
    visit biometrias_url
    click_on "Edit", match: :first

    click_on "Update Biometria"

    assert_text "Biometria was successfully updated"
    click_on "Back"
  end

  test "destroying a Biometria" do
    visit biometrias_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Biometria was successfully destroyed"
  end
end
