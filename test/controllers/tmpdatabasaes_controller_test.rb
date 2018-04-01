require 'test_helper'

class TmpdatabasaesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tmpdatabasae = tmpdatabasaes(:one)
  end

  test "should get index" do
    get tmpdatabasaes_url
    assert_response :success
  end

  test "should get new" do
    get new_tmpdatabasae_url
    assert_response :success
  end

  test "should create tmpdatabasae" do
    assert_difference('Tmpdatabasae.count') do
      post tmpdatabasaes_url, params: { tmpdatabasae: { name: @tmpdatabasae.name } }
    end

    assert_redirected_to tmpdatabasae_url(Tmpdatabasae.last)
  end

  test "should show tmpdatabasae" do
    get tmpdatabasae_url(@tmpdatabasae)
    assert_response :success
  end

  test "should get edit" do
    get edit_tmpdatabasae_url(@tmpdatabasae)
    assert_response :success
  end

  test "should update tmpdatabasae" do
    patch tmpdatabasae_url(@tmpdatabasae), params: { tmpdatabasae: { name: @tmpdatabasae.name } }
    assert_redirected_to tmpdatabasae_url(@tmpdatabasae)
  end

  test "should destroy tmpdatabasae" do
    assert_difference('Tmpdatabasae.count', -1) do
      delete tmpdatabasae_url(@tmpdatabasae)
    end

    assert_redirected_to tmpdatabasaes_url
  end
end
