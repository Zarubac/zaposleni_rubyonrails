require "test_helper"

class ZaposlenisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @zaposleni = zaposlenis(:one)
  end

  test "should get index" do
    get zaposlenis_url
    assert_response :success
  end

  test "should get new" do
    get new_zaposleni_url
    assert_response :success
  end

  test "should create zaposleni" do
    assert_difference("Zaposleni.count") do
      post zaposlenis_url, params: { zaposleni: { email: @zaposleni.email, ime: @zaposleni.ime, prezime: @zaposleni.prezime, telefon: @zaposleni.telefon, zanimanje: @zaposleni.zanimanje } }
    end

    assert_redirected_to zaposleni_url(Zaposleni.last)
  end

  test "should show zaposleni" do
    get zaposleni_url(@zaposleni)
    assert_response :success
  end

  test "should get edit" do
    get edit_zaposleni_url(@zaposleni)
    assert_response :success
  end

  test "should update zaposleni" do
    patch zaposleni_url(@zaposleni), params: { zaposleni: { email: @zaposleni.email, ime: @zaposleni.ime, prezime: @zaposleni.prezime, telefon: @zaposleni.telefon, zanimanje: @zaposleni.zanimanje } }
    assert_redirected_to zaposleni_url(@zaposleni)
  end

  test "should destroy zaposleni" do
    assert_difference("Zaposleni.count", -1) do
      delete zaposleni_url(@zaposleni)
    end

    assert_redirected_to zaposlenis_url
  end
end
