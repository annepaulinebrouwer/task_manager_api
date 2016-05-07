class AddUserToTasklists < ActiveRecord::Migration
  def change
    add_reference :tasklists, :user, index: true, foreign_key: true
  end
end
