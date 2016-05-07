class CreateTasktagrelations < ActiveRecord::Migration
  def change
    create_table :tasktagrelations do |t|
      t.references :tag, index: true, foreign_key: true
      t.references :task, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
