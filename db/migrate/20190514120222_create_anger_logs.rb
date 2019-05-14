class CreateAngerLogs < ActiveRecord::Migration[5.2]
  def change
    create_table :anger_logs do |t|
      t.string :title, null: false
      t.string :thought, null: false
      t.string :feeling, null: false
      t.integer :anger_stage, null: false
      t.string :action, null: false
      t.string :result, null: false
      t.datetime :angered_at, null: false

      t.timestamps
    end
  end
end
