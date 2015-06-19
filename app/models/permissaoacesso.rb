class Permissaoacesso < ActiveRecord::Base
  
  #validacoes de imputs
  validates_presence_of :descricao
end
