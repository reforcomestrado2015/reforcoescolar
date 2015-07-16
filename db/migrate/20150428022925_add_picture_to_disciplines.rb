class AddPictureToDisciplines < ActiveRecord::Migration
  def change
    add_column :disciplines, :picture, :string
  end
end
