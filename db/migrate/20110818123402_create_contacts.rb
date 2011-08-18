class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.integer :client_id
      t.string :name
      t.string :phone
      t.integer :phone_extension
      t.string :mobile
      t.string :email

      t.timestamps
    end
  end
end
