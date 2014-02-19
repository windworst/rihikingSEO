class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.string :name
      t.references :target, index: true
      t.string :link
      t.references :status, index: true, default: 10

      t.timestamps
    end
  end
end
