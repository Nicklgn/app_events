class CreateBlocks < ActiveRecord::Migration[5.1]
  def change
    create_table :blocks do |t|
      t.integer :num, null: false
      t.text :btext
      t.references :article, foreign_key: true

      t.timestamps
    end
  end
end
