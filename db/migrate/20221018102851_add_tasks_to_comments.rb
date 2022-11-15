class AddTasksToComments < ActiveRecord::Migration[7.0]
  def change
    add_column :comments, :tasks, :string
  end
end
