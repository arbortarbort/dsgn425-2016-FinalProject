class CreateWorldctrytables < ActiveRecord::Migration
  def change
    create_table :worldctrytables do |t|
      t.integer :COR_id
      t.string :COR
      t.integer :COR_foreignkey

      t.timestamps

    end
  end
end
