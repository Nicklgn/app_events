class CreateSchedules < ActiveRecord::Migration[5.1]
  def change
    create_table :schedules do |t|
      t.references :event, foreign_key: true
      t.string :sname, null: false
      t.datetime :sstart, null: false
      t.datetime :sfinish
      t.text :splace, null: false
      t.text :sdesc

      t.timestamps
    end
  end
end
