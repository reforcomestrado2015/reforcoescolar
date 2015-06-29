class SessionsController < ApplicationController
  def new
  end
  
  before_action :block_access, except: [:destroy] 

  def create 
    #logger.debug "tipo_acesso---->: #{ params[:session][:tipo_acesso].upcase}"
    #logger.debug "login---->: #{params[:session][:login]}"
    #logger.debug "senha---->: #{ params[:session][:password]}"

    
    # recupero o tipo de acesso informado para realizar
    # a busca na tabela correta(Aluno ou professor)
    @tipoAcesso = params[:session][:tipo_acesso].upcase
    
    if @tipoAcesso === 'A'
      @user = Aluno.find_by(login: params[:session][:login].downcase) 
    else
      @user = Professor.find_by(login: params[:session][:login].downcase) 
    end
    
    
    # Com base no login encontrado o authenticate verifica se a senha informada 
    # confere com a senha cadastrada no passwordDigest. Se tudo estiver ok prossegue
    # com autenticacao e a criacao da session
    if @user && @user.authenticate(params[:session][:password])
      sign_in(@user.id, @tipoAcesso) 
      redirect_to current_user 
    else 
      flash[:error] = "O Login ou senha informada não é válido!"
      render action: :new 
    end 
    
    
  end 
  def destroy 
    sign_out 
    flash[:notice] = "Sessão finalizada com sucesso!"
    redirect_to root_url 
  end



end
    