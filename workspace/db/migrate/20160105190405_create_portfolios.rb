class CreatePortfolios < ActiveRecord::Migration
  def change
    create_table :portfolios do |t|
      t.string :company_title
      t.string :company_intro
      t.string :company_link
      t.timestamps
    end
  end
end
