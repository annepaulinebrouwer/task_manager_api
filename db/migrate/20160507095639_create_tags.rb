class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.string :name
      # t.task :reference

      t.timestamps null: false
    end
  end
end
