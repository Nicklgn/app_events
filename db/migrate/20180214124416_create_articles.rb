class CreateArticles < ActiveRecord::Migration[5.1]
  def change
    create_table :articles do |t|
      t.string :caption, null: false
      t.string :nfcaption
      t.string :nfdesc
      t.datetime :publdate
      t.integer :artype, null: false
      t.references :event, foreign_key: true

      t.timestamps
    end
    add_index :articles, [:artype, :event_id]
  end
end
