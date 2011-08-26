class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :title
      t.text :description
      t.references :client
      t.references :contact
      t.string :category
      t.string :state
      t.integer :client_calification
      t.integer :internal_calification
      t.integer :max_resolv_time
      t.references :creator
      t.integer :required_level
      t.references :asigned
      t.datetime :started_at
      t.datetime :ended_at

      t.timestamps
    end
    add_index :tasks, :client_id
    add_index :tasks, :contact_id
    add_index :tasks, :creator_id
    add_index :tasks, :asigned_id
  end
end
