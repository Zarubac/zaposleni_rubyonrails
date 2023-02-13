require "application_system_test_case"

class ZaposlenisTest < ApplicationSystemTestCase
  setup do
    @zaposleni = zaposlenis(:one)
  end

  test "visiting the index" do
    visit zaposlenis_url
    assert_selector "h1", text: "Zaposlenis"
  end

  test "should create zaposleni" do
    visit zaposlenis_url
    click_on "New zaposleni"

    fill_in "Email", with: @zaposleni.email
    fill_in "Ime", with: @zaposleni.ime
    fill_in "Prezime", with: @zaposleni.prezime
    fill_in "Telefon", with: @zaposleni.telefon
    fill_in "Zanimanje", with: @zaposleni.zanimanje
    click_on "Create Zaposleni"

    assert_text "Zaposleni was successfully created"
    click_on "Back"
  end

  test "should update Zaposleni" do
    visit zaposleni_url(@zaposleni)
    click_on "Edit this zaposleni", match: :first

    fill_in "Email", with: @zaposleni.email
    fill_in "Ime", with: @zaposleni.ime
    fill_in "Prezime", with: @zaposleni.prezime
    fill_in "Telefon", with: @zaposleni.telefon
    fill_in "Zanimanje", with: @zaposleni.zanimanje
    click_on "Update Zaposleni"

    assert_text "Zaposleni was successfully updated"
    click_on "Back"
  end

  test "should destroy Zaposleni" do
    visit zaposleni_url(@zaposleni)
    click_on "Destroy this zaposleni", match: :first

    assert_text "Zaposleni was successfully destroyed"
  end
end
