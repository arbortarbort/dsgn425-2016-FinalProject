class CreateAfricanctrytables < ActiveRecord::Migration
  def change
    create_table :africanctrytables do |t|
      t.integer :AAC_id
      t.string :AAC
      t.integer :AAC_foreignkey

      t.timestamps

    end
  end
end
