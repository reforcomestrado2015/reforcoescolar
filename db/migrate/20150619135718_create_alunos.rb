class CreateAlunos < ActiveRecord::Migration
  def change
    create_table :alunos do |t|
      t.string :login
      t.string :email
      t.string :password
      t.string :nome
      t.string :cpf
      t.string :fone1
      t.string :fone2
      t.string :logradouro
      t.string :cidade
      t.string :uf
      t.string :cep
      t.string :escola

      t.timestamps null: false
    end
    add_index :alunos, :login, unique: true
    add_index :alunos, :email, unique: true
  end
end
