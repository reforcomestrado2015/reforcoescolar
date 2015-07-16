class AddSlugsToDisciplines < ActiveRecord::Migration
  def change
    add_column :disciplines, :slug, :string
    add_index :disciplines, :slug, unique: true
  end
end
