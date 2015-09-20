class CreateRuns < ActiveRecord::Migration
  def change
    create_table :runs do |t|
      t.float :miles
      t.date :date_run
      t.string :where
      t.float :time_run

      t.timestamps null: false
    end
  end
end
