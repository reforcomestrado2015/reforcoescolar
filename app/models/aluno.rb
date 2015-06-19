class Aluno < ActiveRecord::Base
  #validacoes de imputs
  EMAIL_REGEXP = /\A[^@]+@([^@\.]+\.)+[^@\.]+\z/
  validates_presence_of :login, :email, :senha, :nome, :cpf, :fone1, :logradouro, :cidade, :uf, :cep
  validates_length_of :senha, in: 4..8, allow_blank: false
  validate :email_format
  
  
  
  private
    #usada para tratar o email
    def email_format
      errors.add(:email, :invalid) unless email.match(EMAIL_REGEXP)
    end

end
