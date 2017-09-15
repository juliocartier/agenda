require 'test_helper'

class ContatossesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @contatoss = contatosses(:one)
  end

  test "should get index" do
    get contatosses_url
    assert_response :success
  end

  test "should get new" do
    get new_contatoss_url
    assert_response :success
  end

  test "should create contatoss" do
    assert_difference('Contatoss.count') do
      post contatosses_url, params: { contatoss: { dataNascimento: @contatoss.dataNascimento, email: @contatoss.email, endereco: @contatoss.endereco, nome: @contatoss.nome } }
    end

    assert_redirected_to contatoss_url(Contatoss.last)
  end

  test "should show contatoss" do
    get contatoss_url(@contatoss)
    assert_response :success
  end

  test "should get edit" do
    get edit_contatoss_url(@contatoss)
    assert_response :success
  end

  test "should update contatoss" do
    patch contatoss_url(@contatoss), params: { contatoss: { dataNascimento: @contatoss.dataNascimento, email: @contatoss.email, endereco: @contatoss.endereco, nome: @contatoss.nome } }
    assert_redirected_to contatoss_url(@contatoss)
  end

  test "should destroy contatoss" do
    assert_difference('Contatoss.count', -1) do
      delete contatoss_url(@contatoss)
    end

    assert_redirected_to contatosses_url
  end
end
