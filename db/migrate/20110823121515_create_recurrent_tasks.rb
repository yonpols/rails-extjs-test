class CreateRecurrentTasks < ActiveRecord::Migration
  def change
    create_table :recurrent_tasks do |t|
      t.references :client
      t.integer :repeat_amount
      t.string :repeat_type
      t.integer :max_resolv_time
      t.integer :required_level

      t.timestamps
    end
    add_index :recurrent_tasks, :client_id
  end
end
