class CreateEpilogues < ActiveRecord::Migration
  def change
    create_table :epilogues do |t|
      t.string :company_title
      t.string :title
      t.text :content
      t.timestamps
    end
  end
end
