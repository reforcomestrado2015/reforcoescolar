class CreateDisciplinas < ActiveRecord::Migration
  def change
    create_table :disciplinas do |t|
      t.string :nome
      t.string :serie
      t.string :nivel

      t.timestamps null: false
    end
  end
end
