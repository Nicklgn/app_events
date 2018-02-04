class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.string :ename, null: false
      t.datetime :estart, null: false
      t.datetime :efinish
      t.string :level, null: false
      t.text :edesc, null: false
      t.text :member, null: false
      t.text :eplace, null: false
      t.string :publ

      t.timestamps
    end
  end
end
