class CreateProfessors < ActiveRecord::Migration
  def change
    create_table :professors do |t|
      t.string :login
      t.string :email
      t.string :senha
      t.string :nome
      t.string :cpf
      t.string :fone1
      t.string :fone2
      t.string :logradouro
      t.string :cidade
      t.string :uf
      t.string :cep
      t.float :valorHoraAula
      t.integer :qtdvotos
      t.integer :qtdpontos

      t.timestamps null: false
    end
    add_index :professors, :login, unique: true
    add_index :professors, :email, unique: true
  end
end
