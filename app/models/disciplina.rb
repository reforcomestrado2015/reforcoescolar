class Disciplina < ActiveRecord::Base
 
   #validacoes de imputs
  validates_presence_of :nome, :serie, :nivel 

end
