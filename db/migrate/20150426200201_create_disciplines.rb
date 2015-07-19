class CreateDisciplines < ActiveRecord::Migration
  def change
    create_table :disciplines do |t|
      t.string :title
      t.string :location
      t.text :description

      t.timestamps
    end
  end
end
