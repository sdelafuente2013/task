class DropTaskNotes < ActiveRecord::Migration[7.0]
  def change
    drop_table :task_notes
  end
end
