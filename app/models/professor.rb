class Professor < ActiveRecord::Base
  has_secure_password

  #validacoes de imputs
  EMAIL_REGEXP = /\A[^@]+@([^@\.]+\.)+[^@\.]+\z/
  validates_presence_of :login, :email, :password, :nome, :cpf, :fone1, :logradouro, :cidade, :uf, :cep, :valorHoraAula
  validates_length_of :password, in: 4..8, allow_blank: false
  validate :email_format
  
  
  
  private
    #usada para tratar o email
    def email_format
      errors.add(:email, :invalid) unless email.match(EMAIL_REGEXP)
    end
end
