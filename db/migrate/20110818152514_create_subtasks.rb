class CreateSubtasks < ActiveRecord::Migration
  def change
    create_table :subtasks do |t|
      t.references :task
      t.string :subtaskeable_type
      t.references :subtaskeable
      t.string :title
      t.text :description

      t.timestamps
    end
    add_index :subtasks, :task_id
    add_index :subtasks, :subtaskeable_id
  end
end
