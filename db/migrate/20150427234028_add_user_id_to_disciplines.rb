class AddUserIdToDisciplines < ActiveRecord::Migration
  def change
    add_reference :disciplines, :user, index: true
  end
end
