class AddCounterCacheToDisciplines < ActiveRecord::Migration
  def change
    add_column :disciplines, :evaluations_count, :integer
  end
end
