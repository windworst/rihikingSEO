class CreateTargets < ActiveRecord::Migration
  def change
    create_table :targets do |t|
      t.string :name
      t.string :url, null: false
      t.integer :status, default: 10, null: false
      t.string :selector, default: 'a:not([href^="javascript"])'
      t.string :linkreg
      t.string :namereg, default: '\D+'
      t.integer :scancount, null: false
      t.datetime :scantime
      t.datetime :updatetime

      t.timestamps
    end
  end
end
