class AddPasswordDigestToAlunos < ActiveRecord::Migration
  def change
    add_column :alunos, :password_digest, :string
  end
end
