class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :name
      t.integer :phone
      t.text :content
      t.integer :hits
      t.timestamps
    end
  end
end
