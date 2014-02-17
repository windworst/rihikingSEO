class CreateTargets < ActiveRecord::Migration
  def change
    create_table :targets do |t|
      t.string :name
      t.string :url
      t.integer :status
      t.string :selector
      t.string :linkreg
      t.string :namereg
      t.integer :scancount
      t.datetime :scantime
      t.datetime :updatetime

      t.timestamps
    end
  end
end
