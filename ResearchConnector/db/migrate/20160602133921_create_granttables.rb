class CreateGranttables < ActiveRecord::Migration
  def change
    create_table :granttables do |t|
      t.integer :grant_id
      t.string :field
      t.integer :field_id
      t.integer :research_need
      t.float :grant_amt
      t.string :title
      t.string :abstract
      t.string :more_details

      t.timestamps

    end
  end
end
