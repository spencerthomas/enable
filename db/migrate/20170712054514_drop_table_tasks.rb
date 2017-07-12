class DropTableTasks < ActiveRecord::Migration[5.0]
  def change
  	drop_table :tasks, force: :cascade
  end
end
