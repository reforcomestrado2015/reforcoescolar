class CreatePermissaoacessos < ActiveRecord::Migration
  def change
    create_table :permissaoacessos do |t|
      t.string :descricao

      t.timestamps null: false
    end
  end
end
