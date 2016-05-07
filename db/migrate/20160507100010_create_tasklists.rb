class CreateTasklists < ActiveRecord::Migration
  def change
    create_table :tasklists do |t|
      t.string :name
      t.string :description

      t.timestamps null: false
    end
  end
end
