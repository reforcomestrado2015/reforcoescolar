class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  include SessionsHelper
  
  
  def authorize 
    unless logged_in? 
      redirect_to root_url 
    end 
  end 
  
  #verifica se o usuario logado eh o mesmo que esta
  #esta prestes a ser editado. Caso nao seja, a tela eh redirecionada
  #para a listagem
  def correct_user?
  
    #verifica se que está logado é um professsor ou aluno 
    # de acordo com o tipo de acesso e o id que esta sendo passado
    if(session[:tipoacesso] == 'P')
        @user = Professor.find(params[:id]) 
    else
        @user = Aluno.find(params[:id]) 
    end
    
    #caso nao seja iguaus realiza um redirect
    unless current_user == @user 
      if(session[:tipoacesso] == 'P')
        redirect_to professors_path 
      else
        redirect_to alunos_path 
      end
    end
    
  end
  
end
