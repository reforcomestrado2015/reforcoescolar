require 'test_helper'

class AlunosControllerTest < ActionController::TestCase
  setup do
    @aluno = alunos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:alunos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create aluno" do
    assert_difference('Aluno.count') do
      post :create, aluno: { cep: @aluno.cep, cidade: @aluno.cidade, cpf: @aluno.cpf, email: @aluno.email, escola: @aluno.escola, fone1: @aluno.fone1, fone2: @aluno.fone2, login: @aluno.login, logradouro: @aluno.logradouro, nome: @aluno.nome, senha: @aluno.senha, uf: @aluno.uf }
    end

    assert_redirected_to aluno_path(assigns(:aluno))
  end

  test "should show aluno" do
    get :show, id: @aluno
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @aluno
    assert_response :success
  end

  test "should update aluno" do
    patch :update, id: @aluno, aluno: { cep: @aluno.cep, cidade: @aluno.cidade, cpf: @aluno.cpf, email: @aluno.email, escola: @aluno.escola, fone1: @aluno.fone1, fone2: @aluno.fone2, login: @aluno.login, logradouro: @aluno.logradouro, nome: @aluno.nome, senha: @aluno.senha, uf: @aluno.uf }
    assert_redirected_to aluno_path(assigns(:aluno))
  end

  test "should destroy aluno" do
    assert_difference('Aluno.count', -1) do
      delete :destroy, id: @aluno
    end

    assert_redirected_to alunos_path
  end
end
