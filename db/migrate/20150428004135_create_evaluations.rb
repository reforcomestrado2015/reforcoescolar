class CreateEvaluations < ActiveRecord::Migration
  def change
    create_table :evaluations do |t|
      t.references :user, index: true
      t.references :discipline, index: true
      t.integer :points

      t.index [:user_id, :discipline_id], unique: true

      t.timestamps
    end
  end
end
