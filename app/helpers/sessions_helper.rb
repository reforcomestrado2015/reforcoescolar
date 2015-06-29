module SessionsHelper
    
    def sign_in(id, tipoacesso)
        #logger.debug "sign_in id---->: #{ id}"
        #logger.debug "sign_in tipoacesso---->: #{ tipoacesso}"
    
    
        #usadas para auxiliar 
        #na criacao da session
        session[:user_id] = id 
        session[:tipoacesso] = tipoacesso
        
    end 
    def current_user 
        
        if(session[:tipoacesso] == 'P')
            @current_user ||= Professor.find_by(id: session[:user_id]) 
        else
            @current_user ||= Aluno.find_by(id: session[:user_id]) 
        end
    end 
    
    def block_access 
        if current_user.present? 
            
        if(session[:tipoacesso] == 'P')
            redirect_to professors_path 
        else
            redirect_to alunos_path 
        end
            
        end 
    end
    def logged_in?
        !current_user.nil?
    end    
    
    def sign_out
          session.delete(:user_id)
          session.delete(:tipoacesso)
          @current_user = nil
    end
    
end
